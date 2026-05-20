import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../auth/application/auth_controller.dart';
import '../application/deck_controller.dart';
import '../domain/swipe_enums.dart';
import '../domain/swipe_models.dart';
import 'deck_empty_view.dart';
import 'deck_gated_view.dart';
import 'widgets/swipe_action_buttons.dart';
import 'widgets/swipe_card.dart';

/// Main swipe surface. Replaces the old `/home` placeholder.
class DeckScreen extends ConsumerStatefulWidget {
  const DeckScreen({super.key});

  @override
  ConsumerState<DeckScreen> createState() => _DeckScreenState();
}

class _DeckScreenState extends ConsumerState<DeckScreen> {
  final AppinioSwiperController _swiper = AppinioSwiperController();
  bool _hydrated = false;

  @override
  void dispose() {
    _swiper.dispose();
    super.dispose();
  }

  void _hydrateOnce(DailySwipeCardsResponse response) {
    if (_hydrated) return;
    _hydrated = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(deckControllerProvider.notifier).hydrate(response);
    });
  }

  Future<void> _handleAction(SwipeAction action) async {
    final controller = ref.read(deckControllerProvider.notifier);
    try {
      if (action == SwipeAction.like) {
        HapticFeedback.lightImpact();
      }
      final result = await controller.submit(action);
      if (!mounted || result == null) return;
      if (result.outcome == SwipeOutcome.matched && result.matchId != null) {
        HapticFeedback.mediumImpact();
        if (mounted) {
          context.push('/match/new/${result.matchId}');
        }
      }
    } on ApiError catch (e) {
      _showError(e);
    } on Object catch (e) {
      _showSnack(e.toString());
    }
  }

  Future<void> _handleUndo() async {
    final controller = ref.read(deckControllerProvider.notifier);
    final canUndo = ref.read(deckControllerProvider).canUndo;
    if (!canUndo) {
      _showSnack('되돌릴 직전 액션이 없어요');
      return;
    }
    try {
      HapticFeedback.lightImpact();
      _swiper.unswipe();
      await controller.undo();
      _showSnack('직전 액션을 되돌렸어요');
    } on ApiError catch (e) {
      _showError(e);
    } on Object catch (e) {
      _showSnack(e.toString());
    }
  }

  void _showError(ApiError e) {
    _showSnack(ErrorMessages.resolve(e));
  }

  void _showSnack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        content: Text(message, style: AppTextStyles.body
            .copyWith(color: Colors.white, fontSize: 16)),
        behavior: SnackBarBehavior.floating,
      ));
  }

  @override
  Widget build(BuildContext context) {
    final deckAsync = ref.watch(dailyDeckProvider);

    return Scaffold(
      appBar: _DeckAppBar(onUndo: _handleUndo),
      body: deckAsync.when(
        data: (response) {
          _hydrateOnce(response);
          if (response.allViewed || response.cards.isEmpty) {
            return DeckEmptyView(resetsAt: response.expiresAt);
          }
          return _DeckBody(swiper: _swiper, onAction: _handleAction);
        },
        loading: () =>
            const Center(child: CircularProgressIndicator()),
        error: (e, _) {
          if (e is ApiError &&
              (e.code == 'PROFILE_INCOMPLETE_FOR_SWIPE' ||
                  e.code == 'NO_APPROVED_PHOTOS' ||
                  e.code == 'ACCOUNT_SUSPENDED')) {
            return DeckGatedView(error: e);
          }
          return _GenericError(
            error: e,
            onRetry: () => ref.invalidate(dailyDeckProvider),
          );
        },
      ),
    );
  }
}

class _DeckAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const _DeckAppBar({required this.onUndo});

  final VoidCallback onUndo;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canUndo = ref.watch(
      deckControllerProvider.select((s) => s.canUndo),
    );
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text('오늘의 인연'),
      centerTitle: true,
      leading: IconButton(
        tooltip: '되돌리기',
        icon: Icon(
          Icons.undo_rounded,
          color: canUndo ? AppColors.primary : AppColors.outlineStrong,
        ),
        onPressed: onUndo,
      ),
      actions: [
        IconButton(
          tooltip: '인연이 닿은 분',
          icon: const Icon(Icons.favorite_outline),
          onPressed: () => context.push('/matches'),
        ),
        IconButton(
          tooltip: '어떤 분을 만나고 싶으세요',
          icon: const Icon(Icons.tune_rounded),
          onPressed: () => context.push('/preferences'),
        ),
        IconButton(
          tooltip: '로그아웃',
          icon: const Icon(Icons.logout),
          onPressed: () =>
              ref.read(authControllerProvider.notifier).signOut(),
        ),
      ],
    );
  }
}

class _DeckBody extends ConsumerWidget {
  const _DeckBody({required this.swiper, required this.onAction});

  final AppinioSwiperController swiper;
  final Future<void> Function(SwipeAction) onAction;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deck = ref.watch(deckControllerProvider);
    if (deck.cards.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (deck.exhausted) {
      return const DeckEmptyView();
    }
    final remaining = deck.cards.sublist(deck.cursor);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.m,
        vertical: AppSpacing.m,
      ),
      child: Column(
        children: [
          Expanded(
            child: AppinioSwiper(
              controller: swiper,
              cardCount: remaining.length,
              backgroundCardCount: 1,
              backgroundCardOffset: const Offset(0, 12),
              backgroundCardScale: 0.96,
              swipeOptions: const SwipeOptions.symmetric(horizontal: true),
              threshold: 100,
              cardBuilder: (context, index) {
                final card = remaining[index];
                return SwipeCard(
                  card: card,
                  onOpenDetail: () =>
                      context.push('/swipe/card/${card.userId}'),
                );
              },
              onSwipeEnd: (previousIndex, targetIndex, activity) {
                if (activity is Swipe) {
                  final action = activity.direction == AxisDirection.left
                      ? SwipeAction.pass
                      : SwipeAction.like;
                  onAction(action);
                }
              },
            ),
          ),
          const SizedBox(height: AppSpacing.l),
          SwipeActionButtons(
            enabled: !deck.busy,
            onPass: () {
              swiper.swipeLeft();
            },
            onLike: () {
              swiper.swipeRight();
            },
          ),
          const SizedBox(height: AppSpacing.s),
          _ProgressIndicator(
            cursor: deck.cursor,
            total: deck.cards.length,
          ),
          const SizedBox(height: AppSpacing.s),
        ],
      ),
    );
  }
}

class _ProgressIndicator extends StatelessWidget {
  const _ProgressIndicator({required this.cursor, required this.total});

  final int cursor;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$cursor / $total',
      style: AppTextStyles.captionMuted,
    );
  }
}

class _GenericError extends StatelessWidget {
  const _GenericError({required this.error, required this.onRetry});

  final Object error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final message = error is ApiError
        ? ErrorMessages.resolve(error as ApiError)
        : '잠시 문제가 생겼어요. 잠시 후 다시 시도해 주세요.';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(message,
              style: AppTextStyles.body, textAlign: TextAlign.center),
          const SizedBox(height: AppSpacing.l),
          OutlinedButton(
            onPressed: onRetry,
            child: const Text('다시 시도'),
          ),
        ],
      ),
    );
  }
}
