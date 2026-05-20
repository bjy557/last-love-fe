import 'package:freezed_annotation/freezed_annotation.dart';

import '../../swipe/domain/profile_card.dart';
import '../../swipe/domain/swipe_enums.dart';

part 'match_models.freezed.dart';
part 'match_models.g.dart';

/// A single match (called "인연" in copy). `matchedUser` is the censored
/// profile card; we never expose who ended the match.
@freezed
class MatchResponse with _$MatchResponse {
  const factory MatchResponse({
    required int id,
    required DateTime matchedAt,
    DateTime? createdAt,
    required MatchStatus status,
    DateTime? endedAt,
    required ProfileCardResponse matchedUser,
    int? chatRoomId,
    String? lastMessagePreview,
    DateTime? lastMessageAt,
    @Default(0) int unreadCount,
  }) = _MatchResponse;

  factory MatchResponse.fromJson(Map<String, dynamic> json) =>
      _$MatchResponseFromJson(json);
}

/// Cursor-paginated list. `nextCursor` is null at the end.
@freezed
class MatchesPage with _$MatchesPage {
  const factory MatchesPage({
    @Default(<MatchResponse>[]) List<MatchResponse> items,
    String? nextCursor,
  }) = _MatchesPage;

  factory MatchesPage.fromJson(Map<String, dynamic> json) =>
      _$MatchesPageFromJson(json);
}
