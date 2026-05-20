import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../data/auth_api.dart';
import '../domain/auth_models.dart';
import 'auth_state.dart';

part 'auth_controller.g.dart';

/// Holds the app-level auth state.
///
/// The router watches this and redirects when transitioning between
/// `unauthenticated` and `authenticated`.
@Riverpod(keepAlive: true)
class AuthController extends _$AuthController {
  @override
  AuthState build() => const AuthState();

  /// Called by `SplashScreen` after reading secure storage. Picks the
  /// correct `status` based on token validity and (when authenticated)
  /// fetches `/users/me` to populate the user record.
  Future<void> bootstrap() async {
    final storage = ref.read(secureTokenStorageProvider);
    final access = await storage.readAccessToken();
    final accessExp = await storage.readAccessTokenExpiresAt();
    final refresh = await storage.readRefreshToken();
    final refreshExp = await storage.readRefreshTokenExpiresAt();

    final now = DateTime.now().toUtc();
    final accessValid =
        access != null && accessExp != null && accessExp.isAfter(now);
    final refreshValid =
        refresh != null && refreshExp != null && refreshExp.isAfter(now);

    if (!accessValid && !refreshValid) {
      state = state.copyWith(status: AuthStatus.unauthenticated);
      return;
    }

    // If only refresh is valid, the interceptor will rotate on next call.
    // Either way, attempt to load `/me`.
    try {
      final api = AuthApi(ref.read(apiDioProvider));
      final me = await api.me();
      state = state.copyWith(
        status: AuthStatus.authenticated,
        user: me,
      );
    } on Object {
      await storage.clear();
      state = const AuthState(status: AuthStatus.unauthenticated);
    }
  }

  /// Persist a successful login/signup session and flip to authenticated.
  Future<void> applySession(AuthSession session, {bool profileReady = false}) async {
    final storage = ref.read(secureTokenStorageProvider);
    await storage.save(
      accessToken: session.tokens.accessToken,
      accessTokenExpiresAt: session.tokens.accessTokenExpiresAt,
      refreshToken: session.tokens.refreshToken,
      refreshTokenExpiresAt: session.tokens.refreshTokenExpiresAt,
      userId: session.user.id,
    );
    state = state.copyWith(
      status: AuthStatus.authenticated,
      user: session.user,
      profileReady: profileReady,
    );
  }

  /// Mark the profile as ready (after stage-1 + photo + location finish).
  void markProfileReady() {
    state = state.copyWith(profileReady: true);
  }

  /// Calls `/auth/logout` then clears local state.
  Future<void> signOut() async {
    try {
      final api = AuthApi(ref.read(apiDioProvider));
      await api.logout();
    } on Object {
      // Network failure during logout is non-fatal; we still clear locally.
    }
    await signOutLocal();
  }

  /// Clears tokens locally without calling the BE. Used by the auth
  /// interceptor when refresh fails.
  Future<void> signOutLocal() async {
    final storage = ref.read(secureTokenStorageProvider);
    await storage.clear();
    state = const AuthState(status: AuthStatus.unauthenticated);
  }
}
