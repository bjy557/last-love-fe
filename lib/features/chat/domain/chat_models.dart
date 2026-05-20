import 'package:freezed_annotation/freezed_annotation.dart';

import '../../swipe/domain/profile_card.dart';
import 'chat_enums.dart';

part 'chat_models.freezed.dart';
part 'chat_models.g.dart';

/// Side metadata for `SYSTEM_*` messages. `null` for TEXT.
@freezed
class ChatSystemMessageMeta with _$ChatSystemMessageMeta {
  const factory ChatSystemMessageMeta({
    int? actorUserId,
    int? relatedReportId,
  }) = _ChatSystemMessageMeta;

  factory ChatSystemMessageMeta.fromJson(Map<String, dynamic> json) =>
      _$ChatSystemMessageMetaFromJson(json);
}

/// One chat message (BE-confirmed). For optimistic outgoing messages we wrap
/// this in a lightweight presentation model elsewhere.
@freezed
class ChatMessageResponse with _$ChatMessageResponse {
  const factory ChatMessageResponse({
    required int id,
    required int chatRoomId,
    required int senderId,
    required String content,
    required MessageType messageType,
    required DateTime sentAt,
    ChatSystemMessageMeta? systemMeta,
    String? clientMessageId,
  }) = _ChatMessageResponse;

  factory ChatMessageResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageResponseFromJson(json);
}

/// Cursor-paginated chat history. Items are newest-first.
@freezed
class ChatMessagesPage with _$ChatMessagesPage {
  const factory ChatMessagesPage({
    @Default(<ChatMessageResponse>[]) List<ChatMessageResponse> items,
    String? nextCursor,
    @Default(false) bool hasMore,
  }) = _ChatMessagesPage;

  factory ChatMessagesPage.fromJson(Map<String, dynamic> json) =>
      _$ChatMessagesPageFromJson(json);
}

/// Chat room detail. `participants` always has 2 entries (self + partner).
@freezed
class ChatRoomResponse with _$ChatRoomResponse {
  const factory ChatRoomResponse({
    required int id,
    required int matchId,
    required ChatRoomStatus status,
    required ProfileCardResponse partner,
    @Default(<ProfileCardResponse>[]) List<ProfileCardResponse> participants,
    required DateTime createdAt,
    DateTime? endedAt,
    @Default(0) int unreadCount,
    ChatMessageResponse? lastMessage,
    DateTime? lastMessageAt,
  }) = _ChatRoomResponse;

  factory ChatRoomResponse.fromJson(Map<String, dynamic> json) =>
      _$ChatRoomResponseFromJson(json);
}

/// Request body for sending a message (REST fallback or STOMP SEND).
@freezed
class SendMessageRequest with _$SendMessageRequest {
  const factory SendMessageRequest({
    required String content,
    String? clientMessageId,
  }) = _SendMessageRequest;

  factory SendMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$SendMessageRequestFromJson(json);
}

/// Read-marker advance request body.
@freezed
class MarkReadRequest with _$MarkReadRequest {
  const factory MarkReadRequest({
    int? upToMessageId,
    DateTime? upToTimestamp,
  }) = _MarkReadRequest;

  factory MarkReadRequest.fromJson(Map<String, dynamic> json) =>
      _$MarkReadRequestFromJson(json);
}

/// A single static icebreaker prompt.
@freezed
class Icebreaker with _$Icebreaker {
  const factory Icebreaker({
    required String id,
    required String text,
  }) = _Icebreaker;

  factory Icebreaker.fromJson(Map<String, dynamic> json) =>
      _$IcebreakerFromJson(json);
}

/// GET /icebreakers payload. Always exactly 8 items.
@freezed
class IcebreakerListResponse with _$IcebreakerListResponse {
  const factory IcebreakerListResponse({
    @Default(<Icebreaker>[]) List<Icebreaker> items,
  }) = _IcebreakerListResponse;

  factory IcebreakerListResponse.fromJson(Map<String, dynamic> json) =>
      _$IcebreakerListResponseFromJson(json);
}

/// `/topic/chat-rooms/{roomId}` envelope.
@freezed
class WsChatMessageEnvelope with _$WsChatMessageEnvelope {
  const factory WsChatMessageEnvelope({
    required WsEnvelopeType type,
    required ChatMessageResponse payload,
  }) = _WsChatMessageEnvelope;

  factory WsChatMessageEnvelope.fromJson(Map<String, dynamic> json) =>
      _$WsChatMessageEnvelopeFromJson(json);
}
