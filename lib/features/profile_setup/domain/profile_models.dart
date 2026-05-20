import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/json/local_date_converter.dart';
import '../../auth/domain/auth_enums.dart';
import '../../photo/domain/photo_models.dart';

part 'profile_models.freezed.dart';
part 'profile_models.g.dart';

@freezed
class PrivacySettings with _$PrivacySettings {
  const factory PrivacySettings({
    @Default(true) bool showHeight,
    @Default(true) bool showOccupation,
    @Default(true) bool showReligion,
    @Default(true) bool showHasChildren,
    @Default(true) bool showSmokingDrinking,
    @Default(true) bool showMaritalStatus,
  }) = _PrivacySettings;

  factory PrivacySettings.fromJson(Map<String, dynamic> json) =>
      _$PrivacySettingsFromJson(json);
}

/// PATCH semantics: null/absent values are omitted from the request body so
/// the BE does not interpret them as "delete". See api-contract note 4.1.
///
/// We avoid the generated `toJson` for this class and build a sparse map
/// manually via [toSparseJson] to guarantee null-key suppression regardless of
/// freezed defaults.
@freezed
class UpdateProfileRequest with _$UpdateProfileRequest {
  const UpdateProfileRequest._();

  const factory UpdateProfileRequest({
    MaritalStatus? maritalStatus,
    HasChildren? hasChildren,
    RelationshipIntent? relationshipIntent,
    int? heightCm,
    String? occupation,
    EducationLevel? educationLevel,
    Religion? religion,
    SmokingStatus? smokingStatus,
    DrinkingStatus? drinkingStatus,
    String? bio,
    String? locationCity,
  }) = _UpdateProfileRequest;

  factory UpdateProfileRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateProfileRequestFromJson(json);

  /// Returns only the non-null fields, mapped to BE wire keys/values.
  /// Use this instead of [toJson] when calling `PATCH /users/me/profile`.
  Map<String, dynamic> toSparseJson() {
    final raw = toJson();
    raw.removeWhere((_, v) => v == null);
    return raw;
  }
}

@freezed
class ProfileResponse with _$ProfileResponse {
  const factory ProfileResponse({
    required int userId,
    required String displayName,
    @LocalDateConverter() required DateTime birthDate,
    required int age,
    required Gender gender,
    int? heightCm,
    String? occupation,
    EducationLevel? educationLevel,
    Religion? religion,
    SmokingStatus? smokingStatus,
    DrinkingStatus? drinkingStatus,
    MaritalStatus? maritalStatus,
    HasChildren? hasChildren,
    RelationshipIntent? relationshipIntent,
    String? bio,
    String? locationCity,
    @Default(<PhotoResponse>[]) List<PhotoResponse> photos,
    required PrivacySettings privacySettings,
    required ProfileCompletenessLevel completenessLevel,
    @Default(<String>[]) List<String> missingRequiredFields,
    @Default(<String>[]) List<String> nextRecommendedFields,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

@freezed
class UpdateLocationRequest with _$UpdateLocationRequest {
  const factory UpdateLocationRequest({
    required double latitude,
    required double longitude,
  }) = _UpdateLocationRequest;

  factory UpdateLocationRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLocationRequestFromJson(json);
}
