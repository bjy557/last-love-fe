// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safety_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateReportRequestImpl _$$CreateReportRequestImplFromJson(
  Map<String, dynamic> json,
) => _$CreateReportRequestImpl(
  reportedUserId: (json['reportedUserId'] as num).toInt(),
  reason: $enumDecode(_$ReportReasonEnumMap, json['reason']),
  description: json['description'] as String?,
  chatMessageId: (json['chatMessageId'] as num?)?.toInt(),
);

Map<String, dynamic> _$$CreateReportRequestImplToJson(
  _$CreateReportRequestImpl instance,
) => <String, dynamic>{
  'reportedUserId': instance.reportedUserId,
  'reason': _$ReportReasonEnumMap[instance.reason]!,
  'description': instance.description,
  'chatMessageId': instance.chatMessageId,
};

const _$ReportReasonEnumMap = {
  ReportReason.harassment: 'HARASSMENT',
  ReportReason.scam: 'SCAM',
  ReportReason.inappropriateContent: 'INAPPROPRIATE_CONTENT',
  ReportReason.fakeProfile: 'FAKE_PROFILE',
  ReportReason.underage: 'UNDERAGE',
  ReportReason.safetyConcern: 'SAFETY_CONCERN',
  ReportReason.other: 'OTHER',
};

_$ReportResponseImpl _$$ReportResponseImplFromJson(Map<String, dynamic> json) =>
    _$ReportResponseImpl(
      id: (json['id'] as num).toInt(),
      reason: $enumDecode(_$ReportReasonEnumMap, json['reason']),
      status: $enumDecode(_$ReportStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String?,
      chatMessageId: (json['chatMessageId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ReportResponseImplToJson(
  _$ReportResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'reason': _$ReportReasonEnumMap[instance.reason]!,
  'status': _$ReportStatusEnumMap[instance.status]!,
  'createdAt': instance.createdAt.toIso8601String(),
  'description': instance.description,
  'chatMessageId': instance.chatMessageId,
};

const _$ReportStatusEnumMap = {
  ReportStatus.received: 'RECEIVED',
  ReportStatus.reviewing: 'REVIEWING',
  ReportStatus.resolved: 'RESOLVED',
  ReportStatus.dismissed: 'DISMISSED',
};

_$BlockUserRequestImpl _$$BlockUserRequestImplFromJson(
  Map<String, dynamic> json,
) => _$BlockUserRequestImpl(
  blockedUserId: (json['blockedUserId'] as num).toInt(),
);

Map<String, dynamic> _$$BlockUserRequestImplToJson(
  _$BlockUserRequestImpl instance,
) => <String, dynamic>{'blockedUserId': instance.blockedUserId};

_$BlockResponseImpl _$$BlockResponseImplFromJson(Map<String, dynamic> json) =>
    _$BlockResponseImpl(
      id: (json['id'] as num).toInt(),
      blockedUserId: (json['blockedUserId'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      blockedUserDisplayName: json['blockedUserDisplayName'] as String?,
      source: $enumDecodeNullable(_$BlockSourceEnumMap, json['source']),
    );

Map<String, dynamic> _$$BlockResponseImplToJson(_$BlockResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'blockedUserId': instance.blockedUserId,
      'createdAt': instance.createdAt.toIso8601String(),
      'blockedUserDisplayName': instance.blockedUserDisplayName,
      'source': _$BlockSourceEnumMap[instance.source],
    };

const _$BlockSourceEnumMap = {
  BlockSource.manual: 'MANUAL',
  BlockSource.reportSideEffect: 'REPORT_SIDE_EFFECT',
};

_$BlockListResponseImpl _$$BlockListResponseImplFromJson(
  Map<String, dynamic> json,
) => _$BlockListResponseImpl(
  items:
      (json['items'] as List<dynamic>?)
          ?.map((e) => BlockResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <BlockResponse>[],
);

Map<String, dynamic> _$$BlockListResponseImplToJson(
  _$BlockListResponseImpl instance,
) => <String, dynamic>{'items': instance.items};
