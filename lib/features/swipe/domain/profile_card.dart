import 'package:freezed_annotation/freezed_annotation.dart';

import '../../auth/domain/auth_enums.dart';

part 'profile_card.freezed.dart';
part 'profile_card.g.dart';

/// One photo as exposed on someone else's profile card. Operational fields
/// (review status, uploaded at) are stripped by the BE.
@freezed
class PhotoCardResponse with _$PhotoCardResponse {
  const factory PhotoCardResponse({
    required int id,
    required String url,
    required int orderIndex,
  }) = _PhotoCardResponse;

  factory PhotoCardResponse.fromJson(Map<String, dynamic> json) =>
      _$PhotoCardResponseFromJson(json);
}

/// Censored profile card shown to other users (swipe deck, match list,
/// match detail). Fields toggled off by the owner's `PrivacySettings` arrive
/// as null. `distanceLabel` arrives already humanized ("5km 이내" etc.) -
/// the FE must NOT re-format it.
@freezed
class ProfileCardResponse with _$ProfileCardResponse {
  const factory ProfileCardResponse({
    required int userId,
    required String displayName,
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
    required RelationshipIntent relationshipIntent,
    String? bio,
    String? locationCity,
    String? distanceLabel,
    @Default(<PhotoCardResponse>[]) List<PhotoCardResponse> photos,
    String? bioPlaceholder,
    required ProfileCompletenessLevel completenessLevel,
  }) = _ProfileCardResponse;

  factory ProfileCardResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileCardResponseFromJson(json);
}
