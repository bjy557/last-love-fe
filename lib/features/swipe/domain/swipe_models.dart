import 'package:freezed_annotation/freezed_annotation.dart';

import '../../auth/domain/auth_enums.dart';
import 'profile_card.dart';
import 'swipe_enums.dart';

part 'swipe_models.freezed.dart';
part 'swipe_models.g.dart';

/// Body for `POST /swipe-cards/{targetUserId}/swipe`. `targetUserId` lives in
/// the path; this object only carries the action + optional deck id.
@freezed
class SwipeRequest with _$SwipeRequest {
  const factory SwipeRequest({
    required SwipeAction action,
    String? deckId,
  }) = _SwipeRequest;

  factory SwipeRequest.fromJson(Map<String, dynamic> json) =>
      _$SwipeRequestFromJson(json);
}

/// Result of a swipe. When `outcome == matched`, `matchId` and `matchedUser`
/// are populated so the FE can push the match modal immediately without an
/// extra round trip.
@freezed
class SwipeResultResponse with _$SwipeResultResponse {
  const factory SwipeResultResponse({
    required SwipeOutcome outcome,
    int? matchId,
    ProfileCardResponse? matchedUser,
  }) = _SwipeResultResponse;

  factory SwipeResultResponse.fromJson(Map<String, dynamic> json) =>
      _$SwipeResultResponseFromJson(json);
}

/// `GET /swipe-cards/daily` response. KST midnight expiry; when `allViewed`
/// is true, `cards` is empty and FE shows the empty deck screen.
@freezed
class DailySwipeCardsResponse with _$DailySwipeCardsResponse {
  const factory DailySwipeCardsResponse({
    required String deckId,
    required DateTime generatedAt,
    required DateTime expiresAt,
    required int totalCount,
    required int remainingCount,
    required bool allViewed,
    @Default(<ProfileCardResponse>[]) List<ProfileCardResponse> cards,
  }) = _DailySwipeCardsResponse;

  factory DailySwipeCardsResponse.fromJson(Map<String, dynamic> json) =>
      _$DailySwipeCardsResponseFromJson(json);
}

/// Result of `POST /swipe-cards/undo`. `restoredCard` may be null if the
/// target user deactivated since the swipe.
@freezed
class UndoSwipeResultResponse with _$UndoSwipeResultResponse {
  const factory UndoSwipeResultResponse({
    required int undoneTargetUserId,
    required SwipeAction restoredAction,
    required DateTime undoneAt,
    @Default(false) bool matchDissolved,
    ProfileCardResponse? restoredCard,
  }) = _UndoSwipeResultResponse;

  factory UndoSwipeResultResponse.fromJson(Map<String, dynamic> json) =>
      _$UndoSwipeResultResponseFromJson(json);
}

/// Current preference settings (GET).
@freezed
class SwipePreferences with _$SwipePreferences {
  const factory SwipePreferences({
    required int ageMin,
    required int ageMax,
    required int distanceKm,
    List<Gender>? genders,
    List<MaritalStatus>? maritalStatuses,
    List<RelationshipIntent>? relationshipIntents,
  }) = _SwipePreferences;

  factory SwipePreferences.fromJson(Map<String, dynamic> json) =>
      _$SwipePreferencesFromJson(json);
}

/// PUT body for preferences. PUT semantics - full replacement.
@freezed
class UpdateSwipePreferencesRequest with _$UpdateSwipePreferencesRequest {
  const factory UpdateSwipePreferencesRequest({
    required int ageMin,
    required int ageMax,
    required int distanceKm,
    List<Gender>? genders,
    List<MaritalStatus>? maritalStatuses,
    List<RelationshipIntent>? relationshipIntents,
  }) = _UpdateSwipePreferencesRequest;

  factory UpdateSwipePreferencesRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateSwipePreferencesRequestFromJson(json);
}
