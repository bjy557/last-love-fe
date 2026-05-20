// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestPhotoUploadRequestImpl _$$RequestPhotoUploadRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RequestPhotoUploadRequestImpl(
  contentType: $enumDecode(_$PhotoContentTypeEnumMap, json['contentType']),
  sizeBytes: (json['sizeBytes'] as num).toInt(),
  filename: json['filename'] as String?,
);

Map<String, dynamic> _$$RequestPhotoUploadRequestImplToJson(
  _$RequestPhotoUploadRequestImpl instance,
) => <String, dynamic>{
  'contentType': _$PhotoContentTypeEnumMap[instance.contentType]!,
  'sizeBytes': instance.sizeBytes,
  'filename': instance.filename,
};

const _$PhotoContentTypeEnumMap = {
  PhotoContentType.jpeg: 'image/jpeg',
  PhotoContentType.png: 'image/png',
  PhotoContentType.heic: 'image/heic',
};

_$PhotoUploadTicketImpl _$$PhotoUploadTicketImplFromJson(
  Map<String, dynamic> json,
) => _$PhotoUploadTicketImpl(
  photoId: (json['photoId'] as num).toInt(),
  presignedUrl: json['presignedUrl'] as String,
  method: json['method'] as String? ?? 'PUT',
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  requiredHeaders: Map<String, String>.from(json['requiredHeaders'] as Map),
);

Map<String, dynamic> _$$PhotoUploadTicketImplToJson(
  _$PhotoUploadTicketImpl instance,
) => <String, dynamic>{
  'photoId': instance.photoId,
  'presignedUrl': instance.presignedUrl,
  'method': instance.method,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'requiredHeaders': instance.requiredHeaders,
};

_$PhotoResponseImpl _$$PhotoResponseImplFromJson(Map<String, dynamic> json) =>
    _$PhotoResponseImpl(
      id: (json['id'] as num).toInt(),
      url: json['url'] as String,
      orderIndex: (json['orderIndex'] as num).toInt(),
      reviewStatus: $enumDecode(
        _$PhotoReviewStatusEnumMap,
        json['reviewStatus'],
      ),
      containsMinorWarning: json['containsMinorWarning'] as bool?,
      uploadedAt: DateTime.parse(json['uploadedAt'] as String),
    );

Map<String, dynamic> _$$PhotoResponseImplToJson(_$PhotoResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'orderIndex': instance.orderIndex,
      'reviewStatus': _$PhotoReviewStatusEnumMap[instance.reviewStatus]!,
      'containsMinorWarning': instance.containsMinorWarning,
      'uploadedAt': instance.uploadedAt.toIso8601String(),
    };

const _$PhotoReviewStatusEnumMap = {
  PhotoReviewStatus.pending: 'PENDING',
  PhotoReviewStatus.approved: 'APPROVED',
  PhotoReviewStatus.rejected: 'REJECTED',
};
