import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../domain/chat_models.dart';
import 'chat_api.dart';

part 'chat_repository.g.dart';

/// Thin wrapper around [ChatApi] so callers do not depend on retrofit
/// directly. Provided via Riverpod so tests can swap an in-memory fake.
class ChatRepository {
  ChatRepository(this._api);

  final ChatApi _api;

  Future<ChatRoomResponse> getRoomByMatch(int matchId) =>
      _api.getRoomByMatch(matchId);

  Future<ChatMessagesPage> messages(int roomId,
          {String? cursor, int? limit}) =>
      _api.messages(roomId, cursor: cursor, limit: limit);

  Future<ChatMessageResponse> sendMessage(
    int roomId,
    SendMessageRequest body,
  ) =>
      _api.sendMessage(roomId, body);

  Future<void> markRead(int roomId, MarkReadRequest body) =>
      _api.markRead(roomId, body);

  Future<IcebreakerListResponse> icebreakers() => _api.icebreakers();
}

@Riverpod(keepAlive: true)
ChatRepository chatRepository(Ref ref) {
  return ChatRepository(ChatApi(ref.read(apiDioProvider)));
}
