// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChatSystemMessageMetaImpl _$$ChatSystemMessageMetaImplFromJson(
  Map<String, dynamic> json,
) => _$ChatSystemMessageMetaImpl(
  actorUserId: (json['actorUserId'] as num?)?.toInt(),
  relatedReportId: (json['relatedReportId'] as num?)?.toInt(),
);

Map<String, dynamic> _$$ChatSystemMessageMetaImplToJson(
  _$ChatSystemMessageMetaImpl instance,
) => <String, dynamic>{
  'actorUserId': instance.actorUserId,
  'relatedReportId': instance.relatedReportId,
};

_$ChatMessageResponseImpl _$$ChatMessageResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessageResponseImpl(
  id: (json['id'] as num).toInt(),
  chatRoomId: (json['chatRoomId'] as num).toInt(),
  senderId: (json['senderId'] as num).toInt(),
  content: json['content'] as String,
  messageType: $enumDecode(_$MessageTypeEnumMap, json['messageType']),
  sentAt: DateTime.parse(json['sentAt'] as String),
  systemMeta: json['systemMeta'] == null
      ? null
      : ChatSystemMessageMeta.fromJson(
          json['systemMeta'] as Map<String, dynamic>,
        ),
  clientMessageId: json['clientMessageId'] as String?,
);

Map<String, dynamic> _$$ChatMessageResponseImplToJson(
  _$ChatMessageResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'chatRoomId': instance.chatRoomId,
  'senderId': instance.senderId,
  'content': instance.content,
  'messageType': _$MessageTypeEnumMap[instance.messageType]!,
  'sentAt': instance.sentAt.toIso8601String(),
  'systemMeta': instance.systemMeta,
  'clientMessageId': instance.clientMessageId,
};

const _$MessageTypeEnumMap = {
  MessageType.text: 'TEXT',
  MessageType.systemMatchCreated: 'SYSTEM_MATCH_CREATED',
  MessageType.systemBlock: 'SYSTEM_BLOCK',
  MessageType.systemUserLeft: 'SYSTEM_USER_LEFT',
  MessageType.systemReportFiled: 'SYSTEM_REPORT_FILED',
};

_$ChatMessagesPageImpl _$$ChatMessagesPageImplFromJson(
  Map<String, dynamic> json,
) => _$ChatMessagesPageImpl(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => ChatMessageResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ChatMessageResponse>[],
  nextCursor: json['nextCursor'] as String?,
  hasMore: json['hasMore'] as bool? ?? false,
);

Map<String, dynamic> _$$ChatMessagesPageImplToJson(
  _$ChatMessagesPageImpl instance,
) => <String, dynamic>{
  'items': instance.items,
  'nextCursor': instance.nextCursor,
  'hasMore': instance.hasMore,
};

_$ChatRoomResponseImpl _$$ChatRoomResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ChatRoomResponseImpl(
  id: (json['id'] as num).toInt(),
  matchId: (json['matchId'] as num).toInt(),
  status: $enumDecode(_$ChatRoomStatusEnumMap, json['status']),
  partner: ProfileCardResponse.fromJson(
    json['partner'] as Map<String, dynamic>,
  ),
  participants:
      (json['participants'] as List<dynamic>?)
          ?.map((e) => ProfileCardResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProfileCardResponse>[],
  createdAt: DateTime.parse(json['createdAt'] as String),
  endedAt: json['endedAt'] == null
      ? null
      : DateTime.parse(json['endedAt'] as String),
  unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
  lastMessage: json['lastMessage'] == null
      ? null
      : ChatMessageResponse.fromJson(
          json['lastMessage'] as Map<String, dynamic>,
        ),
  lastMessageAt: json['lastMessageAt'] == null
      ? null
      : DateTime.parse(json['lastMessageAt'] as String),
);

Map<String, dynamic> _$$ChatRoomResponseImplToJson(
  _$ChatRoomResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'matchId': instance.matchId,
  'status': _$ChatRoomStatusEnumMap[instance.status]!,
  'partner': instance.partner,
  'participants': instance.participants,
  'createdAt': instance.createdAt.toIso8601String(),
  'endedAt': instance.endedAt?.toIso8601String(),
  'unreadCount': instance.unreadCount,
  'lastMessage': instance.lastMessage,
  'lastMessageAt': instance.lastMessageAt?.toIso8601String(),
};

const _$ChatRoomStatusEnumMap = {
  ChatRoomStatus.active: 'ACTIVE',
  ChatRoomStatus.ended: 'ENDED',
  ChatRoomStatus.archived: 'ARCHIVED',
  ChatRoomStatus.blocked: 'BLOCKED',
};

_$SendMessageRequestImpl _$$SendMessageRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SendMessageRequestImpl(
  content: json['content'] as String,
  clientMessageId: json['clientMessageId'] as String?,
);

Map<String, dynamic> _$$SendMessageRequestImplToJson(
  _$SendMessageRequestImpl instance,
) => <String, dynamic>{
  'content': instance.content,
  'clientMessageId': instance.clientMessageId,
};

_$MarkReadRequestImpl _$$MarkReadRequestImplFromJson(
  Map<String, dynamic> json,
) => _$MarkReadRequestImpl(
  upToMessageId: (json['upToMessageId'] as num?)?.toInt(),
  upToTimestamp: json['upToTimestamp'] == null
      ? null
      : DateTime.parse(json['upToTimestamp'] as String),
);

Map<String, dynamic> _$$MarkReadRequestImplToJson(
  _$MarkReadRequestImpl instance,
) => <String, dynamic>{
  'upToMessageId': instance.upToMessageId,
  'upToTimestamp': instance.upToTimestamp?.toIso8601String(),
};

_$IcebreakerImpl _$$IcebreakerImplFromJson(Map<String, dynamic> json) =>
    _$IcebreakerImpl(id: json['id'] as String, text: json['text'] as String);

Map<String, dynamic> _$$IcebreakerImplToJson(_$IcebreakerImpl instance) =>
    <String, dynamic>{'id': instance.id, 'text': instance.text};

_$IcebreakerListResponseImpl _$$IcebreakerListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$IcebreakerListResponseImpl(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => Icebreaker.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <Icebreaker>[],
);

Map<String, dynamic> _$$IcebreakerListResponseImplToJson(
  _$IcebreakerListResponseImpl instance,
) => <String, dynamic>{'items': instance.items};

_$WsChatMessageEnvelopeImpl _$$WsChatMessageEnvelopeImplFromJson(
  Map<String, dynamic> json,
) => _$WsChatMessageEnvelopeImpl(
  type: $enumDecode(_$WsEnvelopeTypeEnumMap, json['type']),
  payload: ChatMessageResponse.fromJson(
    json['payload'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$$WsChatMessageEnvelopeImplToJson(
  _$WsChatMessageEnvelopeImpl instance,
) => <String, dynamic>{
  'type': _$WsEnvelopeTypeEnumMap[instance.type]!,
  'payload': instance.payload,
};

const _$WsEnvelopeTypeEnumMap = {
  WsEnvelopeType.message: 'MESSAGE',
  WsEnvelopeType.matchCreated: 'MATCH_CREATED',
  WsEnvelopeType.chatRoomEnded: 'CHAT_ROOM_ENDED',
  WsEnvelopeType.blockNotice: 'BLOCK_NOTICE',
};
