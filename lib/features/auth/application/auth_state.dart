import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/auth_models.dart';

part 'auth_state.freezed.dart';

enum AuthStatus {
  /// App still booting; nothing decided yet.
  unknown,

  /// No (or expired) tokens.
  unauthenticated,

  /// Tokens valid, user resolved.
  authenticated,
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(AuthStatus.unknown) AuthStatus status,
    UserResponse? user,

    /// Whether the user has completed at least stage-1 profile fields.
    /// Used by the router to decide between `/profile-setup/*` and `/home`.
    @Default(false) bool profileReady,
  }) = _AuthState;
}
