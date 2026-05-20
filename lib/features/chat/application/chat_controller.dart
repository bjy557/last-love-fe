import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../../core/api/api_error.dart';
import '../../auth/application/auth_controller.dart';
import '../data/chat_repository.dart';
import '../domain/chat_enums.dart';
import '../domain/chat_models.dart';
import 'ws_service.dart';

part 'chat_controller.g.dart';

/// Wire status of an outgoing message used for optimistic UI.
enum ChatMessageSendStatus {
  /// Message sent locally; awaiting server echo (REST 201 or WS broadcast).
  sending,

  /// Server confirmed the message (echoed back through WS or REST).
  confirmed,

  /// Send failed (network / 4xx). The bubble shows a retry affordance.
  failed,
}

/// View model wrapping a [ChatMessageResponse] with optional optimistic
/// state. Optimistic items carry a temporary negative id until the server
/// echo arrives and replaces them by `clientMessageId`.
@immutable
class ChatMessageItem {
  const ChatMessageItem({
    required this.message,
    this.status = ChatMessageSendStatus.confirmed,
    this.failureMessage,
  });

  final ChatMessageResponse message;
  final ChatMessageSendStatus status;
  final String? failureMessage;

  bool get isOptimistic => status != ChatMessageSendStatus.confirmed;

  ChatMessageItem copyWith({
    ChatMessageResponse? message,
    ChatMessageSendStatus? status,
    String? failureMessage,
  }) =>
      ChatMessageItem(
        message: message ?? this.message,
        status: status ?? this.status,
        failureMessage: failureMessage ?? this.failureMessage,
      );
}

/// Aggregated state for the chat screen.
@immutable
class ChatScreenState {
  const ChatScreenState({
    this.loading = true,
    this.room,
    this.messages = const <ChatMessageItem>[],
    this.nextCursor,
    this.hasMore = false,
    this.loadingMore = false,
    this.error,
  });

  /// True while the initial room + first page is loading.
  final bool loading;
  final ChatRoomResponse? room;

  /// Newest message at index 0 (matches BE order and ListView reverse=true).
  final List<ChatMessageItem> messages;
  final String? nextCursor;
  final bool hasMore;
  final bool loadingMore;
  final ApiError? error;

  bool get isReady => !loading && room != null && error == null;
  bool get isEmpty => messages.isEmpty;

  ChatScreenState copyWith({
    bool? loading,
    ChatRoomResponse? room,
    List<ChatMessageItem>? messages,
    String? nextCursor,
    bool? hasMore,
    bool? loadingMore,
    ApiError? error,
    bool clearError = false,
    bool clearCursor = false,
  }) =>
      ChatScreenState(
        loading: loading ?? this.loading,
        room: room ?? this.room,
        messages: messages ?? this.messages,
        nextCursor: clearCursor ? null : (nextCursor ?? this.nextCursor),
        hasMore: hasMore ?? this.hasMore,
        loadingMore: loadingMore ?? this.loadingMore,
        error: clearError ? null : (error ?? this.error),
      );
}

const _uuid = Uuid();

/// Controller for a single chat screen, keyed by `matchId`. Owns:
/// - room fetch + message pagination
/// - STOMP subscription lifecycle
/// - optimistic send with REST fallback
/// - read-marker debounce
@riverpod
class ChatController extends _$ChatController {
  String? _subscribedDestination;
  Timer? _readDebounce;
  DateTime? _lastReadMarkerSent;

  @override
  ChatScreenState build(int matchId) {
    ref.onDispose(() {
      _readDebounce?.cancel();
      final dest = _subscribedDestination;
      if (dest != null) {
        ref.read(wsServiceProvider).unsubscribe(dest);
      }
    });
    return const ChatScreenState();
  }

  /// Entry point invoked on screen mount. Loads the room then the first
  /// page of messages, then opens the STOMP subscription.
  Future<void> bootstrap() async {
    if (state.room != null) return;
    state = state.copyWith(loading: true, clearError: true);
    try {
      final repo = ref.read(chatRepositoryProvider);
      final room = await repo.getRoomByMatch(matchId);
      final page = await repo.messages(room.id, limit: 30);
      state = ChatScreenState(
        loading: false,
        room: room,
        messages: page.items
            .map((m) => ChatMessageItem(message: m))
            .toList(growable: true),
        nextCursor: page.nextCursor,
        hasMore: page.hasMore,
      );
      _subscribeToRoom(room.id);
      // Mark everything as read once initial page lands.
      _scheduleMarkRead(immediate: true);
    } on ApiError catch (e) {
      state = state.copyWith(loading: false, error: e);
    } on Object catch (e) {
      state = state.copyWith(
        loading: false,
        error: ApiError(
          code: 'INTERNAL_ERROR',
          message: '대화를 불러오지 못했어요. 잠시 후 다시 시도해 주세요.',
          details: {'reason': e.toString()},
        ),
      );
    }
  }

  void _subscribeToRoom(int roomId) {
    final destination = '/topic/chat-rooms/$roomId';
    _subscribedDestination = destination;
    final ws = ref.read(wsServiceProvider);
    ws.subscribe(
      destination,
      onPayload: (json) {
        try {
          final envelope = WsChatMessageEnvelope.fromJson(json);
          _onIncomingMessage(envelope.payload);
        } on Object catch (e) {
          if (kDebugMode) debugPrint('[chat] bad ws envelope: $e');
        }
      },
    );
  }

  void _onIncomingMessage(ChatMessageResponse incoming) {
    final items = [...state.messages];
    // Replace optimistic placeholder if we sent this message.
    final clientId = incoming.clientMessageId;
    var replaced = false;
    if (clientId != null) {
      final idx = items.indexWhere(
        (it) =>
            it.isOptimistic && it.message.clientMessageId == clientId,
      );
      if (idx >= 0) {
        items[idx] = ChatMessageItem(message: incoming);
        replaced = true;
      }
    }
    if (!replaced) {
      // Dedup by server id (in case of REST + WS both delivering).
      final exists = items.any((it) => it.message.id == incoming.id);
      if (!exists) {
        items.insert(0, ChatMessageItem(message: incoming));
      }
    }
    state = state.copyWith(messages: items);
    _scheduleMarkRead();
  }

  /// Loads an older page of messages (cursor-paginated, into the tail of
  /// the list — i.e. appended at the end since list is newest-first).
  Future<void> loadMore() async {
    if (state.loadingMore || !state.hasMore || state.room == null) return;
    final cursor = state.nextCursor;
    if (cursor == null) return;
    state = state.copyWith(loadingMore: true);
    try {
      final repo = ref.read(chatRepositoryProvider);
      final page =
          await repo.messages(state.room!.id, cursor: cursor, limit: 30);
      state = state.copyWith(
        messages: [
          ...state.messages,
          ...page.items.map((m) => ChatMessageItem(message: m)),
        ],
        nextCursor: page.nextCursor,
        hasMore: page.hasMore,
        loadingMore: false,
        clearCursor: page.nextCursor == null,
      );
    } on ApiError catch (e) {
      state = state.copyWith(loadingMore: false, error: e);
    }
  }

  /// Optimistically inserts a new outgoing message, attempts STOMP SEND
  /// first, then falls back to REST POST. Returns true if the send was
  /// accepted (either path).
  Future<bool> send(String rawContent) async {
    final content = rawContent.trim();
    if (content.isEmpty) return false;
    final room = state.room;
    if (room == null) return false;

    final me = ref.read(authControllerProvider).user;
    final clientId = _uuid.v4();
    final now = DateTime.now().toUtc();

    final placeholder = ChatMessageResponse(
      // Temporary negative id keyed off the timestamp to keep keys unique.
      id: -now.microsecondsSinceEpoch,
      chatRoomId: room.id,
      senderId: me?.id ?? 0,
      content: content,
      messageType: MessageType.text,
      sentAt: now,
      clientMessageId: clientId,
    );
    state = state.copyWith(
      messages: [
        ChatMessageItem(
          message: placeholder,
          status: ChatMessageSendStatus.sending,
        ),
        ...state.messages,
      ],
    );

    final ws = ref.read(wsServiceProvider);
    final body = SendMessageRequest(content: content, clientMessageId: clientId)
        .toJson();

    if (ws.isConnected) {
      try {
        ws.send(
          destination: '/app/chat-rooms/${room.id}/send',
          body: body,
        );
        // Server WS broadcast will replace this placeholder by clientId.
        return true;
      } on Object catch (e) {
        if (kDebugMode) debugPrint('[chat] stomp send failed, fallback: $e');
      }
    }

    // REST fallback.
    try {
      final repo = ref.read(chatRepositoryProvider);
      final confirmed = await repo.sendMessage(
        room.id,
        SendMessageRequest(content: content, clientMessageId: clientId),
      );
      _onIncomingMessage(confirmed);
      return true;
    } on ApiError catch (e) {
      // CHAT_ROOM_ENDED and similar are surface-level errors handled by the
      // screen; mark the bubble as failed and propagate up.
      _markFailed(clientId, e);
      if (e.code == 'CHAT_ROOM_ENDED' ||
          e.code == 'CHAT_ROOM_NOT_FOUND' ||
          e.code == 'CHAT_ROOM_ACCESS_DENIED') {
        state = state.copyWith(error: e);
      }
      return false;
    } on Object catch (e) {
      _markFailed(
        clientId,
        ApiError(
          code: 'NETWORK_ERROR',
          message: '메시지를 보내지 못했어요',
          details: {'reason': e.toString()},
        ),
      );
      return false;
    }
  }

  /// Retries an earlier failed send. Replaces the failed placeholder with a
  /// fresh attempt (new clientMessageId).
  Future<void> retry(String failedClientId) async {
    final idx = state.messages
        .indexWhere((it) => it.message.clientMessageId == failedClientId);
    if (idx < 0) return;
    final item = state.messages[idx];
    if (item.status != ChatMessageSendStatus.failed) return;
    final items = [...state.messages]..removeAt(idx);
    state = state.copyWith(messages: items);
    await send(item.message.content);
  }

  void _markFailed(String clientId, ApiError error) {
    final items = [...state.messages];
    final idx =
        items.indexWhere((it) => it.message.clientMessageId == clientId);
    if (idx < 0) return;
    items[idx] = items[idx].copyWith(
      status: ChatMessageSendStatus.failed,
      failureMessage: error.message,
    );
    state = state.copyWith(messages: items);
  }

  /// Sends a debounced POST /read so we don't spam on every WS push.
  /// `immediate=true` flushes right away (used on first load / on resume).
  void _scheduleMarkRead({bool immediate = false}) {
    _readDebounce?.cancel();
    if (immediate) {
      unawaited(_flushMarkRead());
      return;
    }
    _readDebounce = Timer(const Duration(milliseconds: 800), () {
      unawaited(_flushMarkRead());
    });
  }

  Future<void> _flushMarkRead() async {
    final room = state.room;
    if (room == null) return;
    final latest = state.messages
        .map((it) => it.message)
        .where((m) => !m.messageType.isSystem)
        .cast<ChatMessageResponse?>()
        .firstWhere((_) => true, orElse: () => null);
    if (latest == null) return;
    final lastSent = _lastReadMarkerSent;
    if (lastSent != null && !latest.sentAt.isAfter(lastSent)) {
      return;
    }
    _lastReadMarkerSent = latest.sentAt;
    try {
      await ref.read(chatRepositoryProvider).markRead(
            room.id,
            MarkReadRequest(upToMessageId: latest.id),
          );
    } on ApiError catch (e) {
      if (kDebugMode) debugPrint('[chat] markRead failed ${e.code}');
    }
  }

  /// Clears a transient error so the next bootstrap retries.
  void clearError() {
    state = state.copyWith(clearError: true);
  }
}
