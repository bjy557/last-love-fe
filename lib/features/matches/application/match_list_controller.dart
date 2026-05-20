import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../data/matches_api.dart';
import '../domain/match_models.dart';

part 'match_list_controller.g.dart';

class MatchListState {
  const MatchListState({
    this.items = const <MatchResponse>[],
    this.nextCursor,
    this.loading = false,
    this.refreshing = false,
    this.endReached = false,
  });

  final List<MatchResponse> items;
  final String? nextCursor;
  final bool loading;
  final bool refreshing;
  final bool endReached;

  MatchListState copyWith({
    List<MatchResponse>? items,
    String? nextCursor,
    bool? loading,
    bool? refreshing,
    bool? endReached,
    bool clearCursor = false,
  }) =>
      MatchListState(
        items: items ?? this.items,
        nextCursor: clearCursor ? null : (nextCursor ?? this.nextCursor),
        loading: loading ?? this.loading,
        refreshing: refreshing ?? this.refreshing,
        endReached: endReached ?? this.endReached,
      );
}

/// Controller for the match list screen. Supports cursor pagination + pull
/// to refresh. We avoid auto-loading on scroll bottom: the list is typically
/// short and 40+ users benefit from explicit "더 보기".
@riverpod
class MatchListController extends _$MatchListController {
  @override
  MatchListState build() => const MatchListState();

  Future<void> load({bool force = false}) async {
    if (state.loading || (state.items.isNotEmpty && !force)) return;
    state = state.copyWith(loading: true);
    final api = MatchesApi(ref.read(apiDioProvider));
    try {
      final page = await api.list(limit: 20);
      state = MatchListState(
        items: page.items,
        nextCursor: page.nextCursor,
        loading: false,
        endReached: page.nextCursor == null,
      );
    } on Object {
      state = state.copyWith(loading: false);
      rethrow;
    }
  }

  Future<void> refresh() async {
    state = state.copyWith(refreshing: true);
    final api = MatchesApi(ref.read(apiDioProvider));
    try {
      final page = await api.list(limit: 20);
      state = MatchListState(
        items: page.items,
        nextCursor: page.nextCursor,
        refreshing: false,
        endReached: page.nextCursor == null,
      );
    } on Object {
      state = state.copyWith(refreshing: false);
      rethrow;
    }
  }

  Future<void> loadMore() async {
    if (state.loading || state.endReached || state.nextCursor == null) return;
    state = state.copyWith(loading: true);
    final api = MatchesApi(ref.read(apiDioProvider));
    try {
      final page = await api.list(cursor: state.nextCursor, limit: 20);
      state = state.copyWith(
        items: [...state.items, ...page.items],
        nextCursor: page.nextCursor,
        loading: false,
        endReached: page.nextCursor == null,
        clearCursor: page.nextCursor == null,
      );
    } on Object {
      state = state.copyWith(loading: false);
      rethrow;
    }
  }

  /// Removes the match locally after a successful DELETE. Caller is
  /// responsible for the API call so a confirm dialog can wrap the action.
  void removeLocally(int matchId) {
    state = state.copyWith(
      items: state.items.where((m) => m.id != matchId).toList(),
    );
  }

  Future<void> end(int matchId) async {
    final api = MatchesApi(ref.read(apiDioProvider));
    await api.end(matchId);
    removeLocally(matchId);
  }
}

/// One-shot fetch for the match detail screen.
@riverpod
Future<MatchResponse> matchDetail(Ref ref, int matchId) async {
  final api = MatchesApi(ref.read(apiDioProvider));
  return api.get(matchId);
}
