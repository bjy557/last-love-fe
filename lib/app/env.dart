import 'dart:io' show Platform;

/// Application environment configuration.
///
/// Currently only the `dev` environment is wired up. Values can be overridden
/// at run/build time via `--dart-define` flags so we keep secrets out of git.
class Env {
  Env._();

  /// Override with `--dart-define=BE_BASE_URL=https://...`.
  static const String _baseUrlOverride =
      String.fromEnvironment('BE_BASE_URL', defaultValue: '');

  /// Toggle dev conveniences (e.g. auto-fill OTP `123456`). Default true so
  /// fresh checkouts work without extra flags.
  static const bool devMode =
      bool.fromEnvironment('DEV_MODE', defaultValue: true);

  /// Resolves the base URL for the BE.
  ///
  /// In dev:
  /// - Android emulator: host loopback is `10.0.2.2`.
  /// - iOS sim / desktop: `localhost` works.
  static String get baseUrl {
    if (_baseUrlOverride.isNotEmpty) {
      return _baseUrlOverride;
    }
    try {
      if (Platform.isAndroid) {
        return 'http://10.0.2.2:8080';
      }
    } catch (_) {
      // Platform may throw on web / tests; fall through.
    }
    return 'http://localhost:8080';
  }

  /// Connect timeout for the main dio client.
  static const Duration connectTimeout = Duration(seconds: 10);

  /// Receive timeout for the main dio client.
  static const Duration receiveTimeout = Duration(seconds: 15);

  /// Receive timeout for S3 multipart PUT.
  static const Duration uploadTimeout = Duration(seconds: 60);
}
