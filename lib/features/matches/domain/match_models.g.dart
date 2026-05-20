// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MatchResponseImpl _$$MatchResponseImplFromJson(Map<String, dynamic> json) =>
    _$MatchResponseImpl(
      id: (json['id'] as num).toInt(),
      matchedAt: DateTime.parse(json['matchedAt'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      status: $enumDecode(_$MatchStatusEnumMap, json['status']),
      endedAt: json['endedAt'] == null
          ? null
          : DateTime.parse(json['endedAt'] as String),
      matchedUser: ProfileCardResponse.fromJson(
        json['matchedUser'] as Map<String, dynamic>,
      ),
      chatRoomId: (json['chatRoomId'] as num?)?.toInt(),
      lastMessagePreview: json['lastMessagePreview'] as String?,
      lastMessageAt: json['lastMessageAt'] == null
          ? null
          : DateTime.parse(json['lastMessageAt'] as String),
      unreadCount: (json['unreadCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MatchResponseImplToJson(_$MatchResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matchedAt': instance.matchedAt.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'status': _$MatchStatusEnumMap[instance.status]!,
      'endedAt': instance.endedAt?.toIso8601String(),
      'matchedUser': instance.matchedUser,
      'chatRoomId': instance.chatRoomId,
      'lastMessagePreview': instance.lastMessagePreview,
      'lastMessageAt': instance.lastMessageAt?.toIso8601String(),
      'unreadCount': instance.unreadCount,
    };

const _$MatchStatusEnumMap = {
  MatchStatus.active: 'ACTIVE',
  MatchStatus.ended: 'ENDED',
  MatchStatus.blocked: 'BLOCKED',
};

_$MatchesPageImpl _$$MatchesPageImplFromJson(Map<String, dynamic> json) =>
    _$MatchesPageImpl(
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => MatchResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MatchResponse>[],
      nextCursor: json['nextCursor'] as String?,
    );

Map<String, dynamic> _$$MatchesPageImplToJson(_$MatchesPageImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'nextCursor': instance.nextCursor,
    };
