import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../auth/application/auth_controller.dart';
import '../../matches/application/match_list_controller.dart';
import '../../safety/application/block_controller.dart';
import '../../safety/presentation/block_confirm_dialog.dart';
import '../../safety/presentation/end_match_confirm_dialog.dart';
import '../application/chat_controller.dart';
import '../application/icebreakers_controller.dart';
import '../application/ws_service.dart';
import '../data/stomp_client.dart';
import '../domain/chat_enums.dart';
import 'chat_actions_sheet.dart';
import 'widgets/chat_header.dart';
import 'widgets/chat_input.dart';
import 'widgets/connection_banner.dart';
import 'widgets/icebreaker_cards.dart';
import 'widgets/message_bubble.dart';

class ChatScreen extends ConsumerStatefulWidget {
  const ChatScreen({super.key, required this.matchId});

  final int matchId;

  @override
  ConsumerState<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends ConsumerState<ChatScreen> {
  final _inputCtrl = TextEditingController();
  final _scrollCtrl = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(chatControllerProvider(widget.matchId).notifier).bootstrap();
    });
    _scrollCtrl.addListener(_onScroll);
  }

  @override
  void dispose() {
    _inputCtrl.dispose();
    _scrollCtrl.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (!_scrollCtrl.hasClients) return;
    final pos = _scrollCtrl.position;
    // reverse=true, so reaching the bottom of the underlying list (top of
    // history) means we passed maxScrollExtent.
    if (pos.pixels >= pos.maxScrollExtent - 200) {
      ref.read(chatControllerProvider(widget.matchId).notifier).loadMore();
    }
  }

  Future<void> _send(String content) async {
    final ok = await ref
        .read(chatControllerProvider(widget.matchId).notifier)
        .send(content);
    if (ok && _scrollCtrl.hasClients) {
      _scrollCtrl.animateTo(
        0,
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final chat = ref.watch(chatControllerProvider(widget.matchId));
    final wsState = ref.watch(wsConnectionStateProvider).value ??
        WsConnectionState.idle;

    // Handle terminal errors (CHAT_ROOM_ENDED etc.).
    final err = chat.error;
    if (err != null && chat.room == null) {
      return Scaffold(
        appBar: AppBar(),
        body: _buildErrorState(err),
      );
    }

    if (chat.loading || chat.room == null) {
      return const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      );
    }

    final partner = chat.room!.partner;
    final ended = chat.room!.status.isEnded;
    final me = ref.watch(authControllerProvider).user;
    final myId = me?.id;

    return Scaffold(
      backgroundColor: AppColors.surface,
      appBar: ChatHeader(
        partner: partner,
        onMenu: () => _onMenuTap(ended: ended),
      ),
      body: Column(
        children: [
          ConnectionBanner(
            state: wsState,
            onRetry: () => ref.read(wsServiceProvider).reconnect(),
          ),
          if (ended)
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.l, vertical: AppSpacing.s),
              color: AppColors.surfaceVariant,
              width: double.infinity,
              child: const Text(
                '이 인연이 종료되었어요.',
                style: AppTextStyles.bodyMuted,
                textAlign: TextAlign.center,
              ),
            ),
          Expanded(child: _buildBody(chat: chat, myId: myId)),
          ChatInput(
            controller: _inputCtrl,
            enabled: !ended,
            onSend: (text) async {
              await _send(text);
              return true;
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBody({required ChatScreenState chat, required int? myId}) {
    final partner = chat.room!.partner;
    // Filter "text-only" messages for the empty-state decision so a
    // SYSTEM_MATCH_CREATED entry still triggers the icebreaker view.
    final hasUserMessages = chat.messages
        .any((it) => !it.message.messageType.isSystem);
    if (!hasUserMessages) {
      final ice = ref.watch(icebreakersProvider).valueOrNull ?? const [];
      return IcebreakerCards(
        items: ice,
        partnerName: partner.displayName,
        partnerPhotoUrl:
            partner.photos.isNotEmpty ? partner.photos.first.url : null,
        onPick: (ice) {
          _inputCtrl
            ..text = ice.text
            ..selection = TextSelection.fromPosition(
              TextPosition(offset: ice.text.length),
            );
        },
      );
    }
    return ListView.builder(
      controller: _scrollCtrl,
      reverse: true,
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.s),
      itemCount: chat.messages.length + (chat.loadingMore ? 1 : 0),
      itemBuilder: (context, i) {
        if (i == chat.messages.length) {
          return const Padding(
            padding: EdgeInsets.all(AppSpacing.m),
            child: Center(
              child: SizedBox(
                width: 18,
                height: 18,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
          );
        }
        final item = chat.messages[i];
        final isMine = myId != null && item.message.senderId == myId;
        // Show timestamp on the *first* (visually bottom-most) bubble of a
        // run by the same sender within the same minute. Because reverse=true
        // and items are newest-first, we compare with i-1.
        final showTimestamp = _shouldShowTimestamp(chat, i);
        return MessageBubble(
          key: ValueKey(item.message.id != 0
              ? 'm${item.message.id}'
              : 'c${item.message.clientMessageId}'),
          item: item,
          isMine: isMine,
          showTimestamp: showTimestamp,
          partnerName: partner.displayName,
          onRetry: item.status == ChatMessageSendStatus.failed &&
                  item.message.clientMessageId != null
              ? () => ref
                  .read(chatControllerProvider(widget.matchId).notifier)
                  .retry(item.message.clientMessageId!)
              : null,
        );
      },
    );
  }

  bool _shouldShowTimestamp(ChatScreenState chat, int i) {
    final current = chat.messages[i].message;
    if (current.messageType.isSystem) return false;
    if (i == 0) return true;
    final newer = chat.messages[i - 1].message;
    if (newer.senderId != current.senderId) return true;
    final a = current.sentAt;
    final b = newer.sentAt;
    return !(a.year == b.year &&
        a.month == b.month &&
        a.day == b.day &&
        a.hour == b.hour &&
        a.minute == b.minute);
  }

  Widget _buildErrorState(ApiError error) {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.l),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _friendlyError(error),
              style: AppTextStyles.body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.l),
            OutlinedButton(
              onPressed: () => context.go('/matches'),
              child: const Text('인연 목록으로'),
            ),
          ],
        ),
      ),
    );
  }

  String _friendlyError(ApiError error) {
    switch (error.code) {
      case 'CHAT_ROOM_NOT_FOUND':
        return '대화방을 찾을 수 없어요. 인연 목록으로 돌아갈게요.';
      case 'CHAT_ROOM_ACCESS_DENIED':
        return '이 대화에 들어갈 수 없어요.';
      case 'CHAT_ROOM_ENDED':
        return '이 인연이 종료되었어요.';
      default:
        return ErrorMessages.resolve(error);
    }
  }

  Future<void> _onMenuTap({required bool ended}) async {
    final action = await showChatActionsSheet(context);
    if (!mounted || action == null) return;
    switch (action) {
      case ChatActionsResult.report:
        context.push('/chat/${widget.matchId}/report');
        break;
      case ChatActionsResult.block:
        await _confirmAndBlock();
        break;
      case ChatActionsResult.endMatch:
        await _confirmAndEnd();
        break;
    }
  }

  Future<void> _confirmAndBlock() async {
    final ok = await showBlockConfirmDialog(context);
    if (!ok || !mounted) return;
    final chat = ref.read(chatControllerProvider(widget.matchId));
    final partnerId = chat.room?.partner.userId;
    if (partnerId == null) return;
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    try {
      await ref.read(blockControllerProvider.notifier).block(partnerId);
      ref.read(matchListControllerProvider.notifier).removeLocally(widget.matchId);
      messenger.showSnackBar(const SnackBar(
        content: Text('이제 서로 보이지 않아요'),
        behavior: SnackBarBehavior.floating,
      ));
      router.go('/matches');
    } on ApiError catch (e) {
      messenger.showSnackBar(SnackBar(
        content: Text(ErrorMessages.resolve(e)),
        behavior: SnackBarBehavior.floating,
      ));
    }
  }

  Future<void> _confirmAndEnd() async {
    final ok = await showEndMatchConfirmDialog(context);
    if (!ok || !mounted) return;
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    try {
      await ref
          .read(matchListControllerProvider.notifier)
          .end(widget.matchId);
      messenger.showSnackBar(const SnackBar(
        content: Text('대화가 종료되었어요'),
        behavior: SnackBarBehavior.floating,
      ));
      router.go('/matches');
    } on ApiError catch (e) {
      messenger.showSnackBar(SnackBar(
        content: Text(ErrorMessages.resolve(e)),
        behavior: SnackBarBehavior.floating,
      ));
    }
  }
}
