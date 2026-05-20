import 'dart:async';

import 'package:dio/dio.dart';

import '../storage/secure_storage.dart';
import 'api_error.dart';

/// Attaches `Authorization: Bearer <access>` to every outgoing request that
/// isn't explicitly marked `skipAuth: true`. On 401, attempts a single
/// refresh and replays the original request.
///
/// Concurrent 401s collapse into a single refresh call via [_refreshing].
class AuthInterceptor extends Interceptor {
  AuthInterceptor({
    required this.storage,
    required this.refreshClient,
    required this.onAuthLost,
  });

  final SecureTokenStorage storage;

  /// Independent dio used to call `POST /auth/tokens/refresh` so we don't
  /// recurse into ourselves. Must not have this interceptor attached.
  final Dio refreshClient;

  /// Callback raised when both tokens are no longer usable. The router
  /// listens to clear the auth state and redirect to `/welcome`.
  final FutureOr<void> Function() onAuthLost;

  /// In-flight refresh - other 401s wait on this so we only refresh once.
  Completer<String?>? _refreshing;

  /// Skip auth attachment when `options.extra[skipAuth] == true`.
  static const skipAuthKey = 'skipAuth';

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (options.extra[skipAuthKey] == true) {
      handler.next(options);
      return;
    }
    final token = await storage.readAccessToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final apiError = err.error is ApiError ? err.error as ApiError : null;
    final status = err.response?.statusCode;
    final isAuthFlow = err.requestOptions.extra[skipAuthKey] == true;
    final isRetry = err.requestOptions.extra['_authRetried'] == true;

    final shouldRefresh = status == 401 &&
        !isAuthFlow &&
        !isRetry &&
        (apiError == null ||
            apiError.code == 'AUTH_TOKEN_EXPIRED' ||
            apiError.code == 'AUTH_TOKEN_INVALID' ||
            apiError.code == 'AUTH_UNAUTHORIZED' ||
            apiError.code == 'AUTH_VERIFIED_TOKEN_INVALID');

    if (!shouldRefresh) {
      handler.next(err);
      return;
    }

    try {
      final newAccess = await _refresh();
      if (newAccess == null) {
        await _flushAndSignal();
        handler.next(err);
        return;
      }
      final retry = err.requestOptions
        ..headers['Authorization'] = 'Bearer $newAccess'
        ..extra['_authRetried'] = true;
      // Replay through the same dio so other interceptors still apply.
      // We can't grab the original dio from RequestOptions; rely on a
      // pre-injected client passed in by the caller through extra.
      final dio = retry.extra['_dio'] as Dio?;
      if (dio == null) {
        // Fallback: reuse refresh client (no auth) - shouldn't happen for
        // protected calls because we set _dio in build_dio_client.
        final resp = await refreshClient.fetch(retry);
        handler.resolve(resp);
        return;
      }
      final resp = await dio.fetch(retry);
      handler.resolve(resp);
    } on Object {
      await _flushAndSignal();
      handler.next(err);
    }
  }

  Future<String?> _refresh() {
    final existing = _refreshing;
    if (existing != null) return existing.future;
    final completer = Completer<String?>();
    _refreshing = completer;
    _doRefresh().then(completer.complete).catchError((Object e, StackTrace s) {
      completer.completeError(e, s);
    }).whenComplete(() {
      _refreshing = null;
    });
    return completer.future;
  }

  Future<String?> _doRefresh() async {
    final refresh = await storage.readRefreshToken();
    if (refresh == null || refresh.isEmpty) return null;
    final refreshExp = await storage.readRefreshTokenExpiresAt();
    if (refreshExp != null && refreshExp.isBefore(DateTime.now().toUtc())) {
      return null;
    }
    try {
      final resp = await refreshClient.post<Map<String, dynamic>>(
        '/api/v1/auth/tokens/refresh',
        data: {'refreshToken': refresh},
      );
      final data = resp.data;
      if (data == null) return null;
      final newAccess = data['accessToken'] as String?;
      final newRefresh = data['refreshToken'] as String?;
      final accessExp = data['accessTokenExpiresAt'] as String?;
      final refreshExpStr = data['refreshTokenExpiresAt'] as String?;
      if (newAccess == null ||
          newRefresh == null ||
          accessExp == null ||
          refreshExpStr == null) {
        return null;
      }
      await storage.save(
        accessToken: newAccess,
        accessTokenExpiresAt: DateTime.parse(accessExp),
        refreshToken: newRefresh,
        refreshTokenExpiresAt: DateTime.parse(refreshExpStr),
      );
      return newAccess;
    } on DioException {
      return null;
    }
  }

  Future<void> _flushAndSignal() async {
    await storage.clear();
    await onAuthLost();
  }
}
