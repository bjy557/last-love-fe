import 'package:freezed_annotation/freezed_annotation.dart';

import '../../auth/domain/auth_enums.dart';

part 'photo_models.freezed.dart';
part 'photo_models.g.dart';

@freezed
class RequestPhotoUploadRequest with _$RequestPhotoUploadRequest {
  const factory RequestPhotoUploadRequest({
    required PhotoContentType contentType,
    required int sizeBytes,
    String? filename,
  }) = _RequestPhotoUploadRequest;

  factory RequestPhotoUploadRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestPhotoUploadRequestFromJson(json);
}

@freezed
class PhotoUploadTicket with _$PhotoUploadTicket {
  const factory PhotoUploadTicket({
    required int photoId,
    required String presignedUrl,
    @Default('PUT') String method,
    required DateTime expiresAt,
    required Map<String, String> requiredHeaders,
  }) = _PhotoUploadTicket;

  factory PhotoUploadTicket.fromJson(Map<String, dynamic> json) =>
      _$PhotoUploadTicketFromJson(json);
}

@freezed
class PhotoResponse with _$PhotoResponse {
  const factory PhotoResponse({
    required int id,
    required String url,
    required int orderIndex,
    required PhotoReviewStatus reviewStatus,
    bool? containsMinorWarning,
    required DateTime uploadedAt,
  }) = _PhotoResponse;

  factory PhotoResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoResponseFromJson(json);
}
