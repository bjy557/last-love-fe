import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/api_providers.dart';
import '../data/swipe_api.dart';
import '../domain/profile_card.dart';
import '../domain/swipe_enums.dart';
import '../domain/swipe_models.dart';

part 'deck_controller.g.dart';

/// Loads today's deck once. Auto-disposes when the deck screen leaves the
/// stack; consumers should `ref.invalidate(dailyDeckProvider)` to force a
/// fresh fetch (e.g. after preference change with an empty deck).
@riverpod
Future<DailySwipeCardsResponse> dailyDeck(Ref ref) async {
  final api = SwipeApi(ref.read(apiDioProvider));
  return api.dailyCards();
}

/// Local UI state for the deck screen. Wraps:
/// - the BE-provided card list
/// - the index of the next card to show
/// - the most recent action (for undo eligibility)
/// - in-flight flag (debounce double swipes)
class DeckState {
  const DeckState({
    required this.cards,
    required this.cursor,
    required this.deckId,
    this.lastSwipedTargetUserId,
    this.busy = false,
  });

  /// Full card list received from BE in deck order.
  final List<ProfileCardResponse> cards;

  /// Index of the next un-acted card. `cursor == cards.length` means deck
  /// exhausted in this session.
  final int cursor;

  final String deckId;

  /// userId of the most recently swiped card. Null when no swipe yet or
  /// after an undo.
  final int? lastSwipedTargetUserId;

  /// True while an action is being submitted to BE; UI should disable
  /// buttons + intercept new gestures.
  final bool busy;

  bool get canUndo => lastSwipedTargetUserId != null && cursor > 0;
  bool get exhausted => cursor >= cards.length;

  ProfileCardResponse? get top => exhausted ? null : cards[cursor];
  ProfileCardResponse? get next =>
      cursor + 1 < cards.length ? cards[cursor + 1] : null;

  DeckState copyWith({
    List<ProfileCardResponse>? cards,
    int? cursor,
    String? deckId,
    int? lastSwipedTargetUserId,
    bool? busy,
    bool clearLastSwiped = false,
  }) =>
      DeckState(
        cards: cards ?? this.cards,
        cursor: cursor ?? this.cursor,
        deckId: deckId ?? this.deckId,
        lastSwipedTargetUserId: clearLastSwiped
            ? null
            : (lastSwipedTargetUserId ?? this.lastSwipedTargetUserId),
        busy: busy ?? this.busy,
      );
}

/// Per-screen controller. Subscribes to `dailyDeckProvider` to seed state,
/// then mutates locally as the user swipes.
@riverpod
class DeckController extends _$DeckController {
  @override
  DeckState build() {
    return const DeckState(cards: [], cursor: 0, deckId: '');
  }

  /// Seeds local state from the BE response.
  void hydrate(DailySwipeCardsResponse response) {
    state = DeckState(
      cards: response.cards,
      cursor: 0,
      deckId: response.deckId,
    );
  }

  /// Submits a swipe. Returns the result so the caller can route to the
  /// match modal on `MATCHED`.
  ///
  /// On `SWIPE_ALREADY_RECORDED` (409) we silently advance (strategist 7.2).
  Future<SwipeResultResponse?> submit(SwipeAction action) async {
    final card = state.top;
    if (card == null || state.busy) return null;

    state = state.copyWith(busy: true);
    final api = SwipeApi(ref.read(apiDioProvider));
    try {
      final result = await api.swipe(
        card.userId,
        SwipeRequest(action: action, deckId: state.deckId),
      );
      state = state.copyWith(
        cursor: state.cursor + 1,
        lastSwipedTargetUserId: card.userId,
        busy: false,
      );
      return result;
    } on ApiError catch (e) {
      // Already recorded -> treat as success silently.
      if (e.code == 'SWIPE_ALREADY_RECORDED') {
        state = state.copyWith(
          cursor: state.cursor + 1,
          lastSwipedTargetUserId: card.userId,
          busy: false,
        );
        return const SwipeResultResponse(outcome: SwipeOutcome.noMatch);
      }
      state = state.copyWith(busy: false);
      rethrow;
    } on Object {
      state = state.copyWith(busy: false);
      rethrow;
    }
  }

  /// Reverts the most recent swipe. Decrements the cursor and clears
  /// `lastSwipedTargetUserId` so only single-step undo is possible
  /// (strategist 1.5 / Round 4 policy).
  Future<UndoSwipeResultResponse> undo() async {
    if (!state.canUndo) {
      throw StateError('no swipe to undo');
    }
    state = state.copyWith(busy: true);
    final api = SwipeApi(ref.read(apiDioProvider));
    try {
      final result = await api.undo();
      state = state.copyWith(
        cursor: state.cursor - 1,
        busy: false,
        clearLastSwiped: true,
      );
      return result;
    } on Object {
      state = state.copyWith(busy: false);
      rethrow;
    }
  }
}
