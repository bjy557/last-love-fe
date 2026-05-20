import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../data/swipe_api.dart';
import '../domain/swipe_models.dart';

part 'preferences_controller.g.dart';

/// Loads current preferences once. UI should `ref.invalidate` if the user
/// re-enters the screen after saving.
@riverpod
Future<SwipePreferences> swipePreferences(Ref ref) async {
  final api = SwipeApi(ref.read(apiDioProvider));
  return api.getPreferences();
}

@riverpod
class PreferencesController extends _$PreferencesController {
  @override
  void build() {}

  /// PUT semantics - the request must include every required field.
  Future<SwipePreferences> save(UpdateSwipePreferencesRequest body) async {
    final api = SwipeApi(ref.read(apiDioProvider));
    final updated = await api.updatePreferences(body);
    // Invalidate so the next opener gets fresh values.
    ref.invalidate(swipePreferencesProvider);
    return updated;
  }
}
