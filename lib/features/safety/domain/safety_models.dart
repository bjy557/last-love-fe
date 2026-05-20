import 'package:freezed_annotation/freezed_annotation.dart';

import 'safety_enums.dart';

part 'safety_models.freezed.dart';
part 'safety_models.g.dart';

/// `POST /reports` request body.
@freezed
class CreateReportRequest with _$CreateReportRequest {
  const factory CreateReportRequest({
    required int reportedUserId,
    required ReportReason reason,
    String? description,
    int? chatMessageId,
  }) = _CreateReportRequest;

  factory CreateReportRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateReportRequestFromJson(json);
}

/// Reporter-only view of a submitted report.
@freezed
class ReportResponse with _$ReportResponse {
  const factory ReportResponse({
    required int id,
    required ReportReason reason,
    required ReportStatus status,
    required DateTime createdAt,
    String? description,
    int? chatMessageId,
  }) = _ReportResponse;

  factory ReportResponse.fromJson(Map<String, dynamic> json) =>
      _$ReportResponseFromJson(json);
}

/// `POST /blocks` request body.
@freezed
class BlockUserRequest with _$BlockUserRequest {
  const factory BlockUserRequest({
    required int blockedUserId,
  }) = _BlockUserRequest;

  factory BlockUserRequest.fromJson(Map<String, dynamic> json) =>
      _$BlockUserRequestFromJson(json);
}

/// One block row visible to the blocker.
@freezed
class BlockResponse with _$BlockResponse {
  const factory BlockResponse({
    required int id,
    required int blockedUserId,
    required DateTime createdAt,
    String? blockedUserDisplayName,
    BlockSource? source,
  }) = _BlockResponse;

  factory BlockResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockResponseFromJson(json);
}

/// `GET /blocks` response.
@freezed
class BlockListResponse with _$BlockListResponse {
  const factory BlockListResponse({
    @Default(<BlockResponse>[]) List<BlockResponse> items,
  }) = _BlockListResponse;

  factory BlockListResponse.fromJson(Map<String, dynamic> json) =>
      _$BlockListResponseFromJson(json);
}
