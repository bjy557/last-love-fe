import 'package:json_annotation/json_annotation.dart';

/// Action recorded for a swipe. MVP supports only LIKE / PASS - no
/// super-like / boost (strategist 1.4).
enum SwipeAction {
  @JsonValue('LIKE')
  like,
  @JsonValue('PASS')
  pass,
}

/// Result of a swipe submission.
enum SwipeOutcome {
  @JsonValue('NO_MATCH')
  noMatch,
  @JsonValue('MATCHED')
  matched,
}

/// Status of a match. We never expose who ended the match.
enum MatchStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('ENDED')
  ended,
  @JsonValue('BLOCKED')
  blocked,
}
