import 'package:json_annotation/json_annotation.dart';

/// Type of a chat message. (Round 7 expansion - SYSTEM_* variants added.)
///
/// FE branches on this enum (not on `senderId`) to render system messages.
enum MessageType {
  @JsonValue('TEXT')
  text,
  @JsonValue('SYSTEM_MATCH_CREATED')
  systemMatchCreated,
  @JsonValue('SYSTEM_BLOCK')
  systemBlock,
  @JsonValue('SYSTEM_USER_LEFT')
  systemUserLeft,
  @JsonValue('SYSTEM_REPORT_FILED')
  systemReportFiled,
}

extension MessageTypeX on MessageType {
  bool get isSystem => this != MessageType.text;
}

/// Status of a chat room. `ARCHIVED` is a deprecated alias of `ENDED`.
enum ChatRoomStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('ENDED')
  ended,
  @JsonValue('ARCHIVED')
  archived,
  @JsonValue('BLOCKED')
  blocked,
}

extension ChatRoomStatusX on ChatRoomStatus {
  bool get isWritable => this == ChatRoomStatus.active;
  bool get isEnded => this != ChatRoomStatus.active;
}

/// WebSocket envelope type.
enum WsEnvelopeType {
  @JsonValue('MESSAGE')
  message,
  @JsonValue('MATCH_CREATED')
  matchCreated,
  @JsonValue('CHAT_ROOM_ENDED')
  chatRoomEnded,
  @JsonValue('BLOCK_NOTICE')
  blockNotice,
}
