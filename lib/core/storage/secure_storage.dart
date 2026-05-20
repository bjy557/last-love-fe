import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Thin wrapper around [FlutterSecureStorage] for auth tokens.
///
/// iOS keychain accessibility is set to `first_unlock_this_device` so tokens
/// survive backgrounding but are excluded from iCloud backup. Android uses
/// EncryptedSharedPreferences by default.
class SecureTokenStorage {
  SecureTokenStorage([FlutterSecureStorage? storage])
      : _storage = storage ??
            const FlutterSecureStorage(
              iOptions: IOSOptions(
                accessibility: KeychainAccessibility.first_unlock_this_device,
              ),
              aOptions: AndroidOptions(
                encryptedSharedPreferences: true,
              ),
            );

  final FlutterSecureStorage _storage;

  static const _kAccess = 'auth.access_token';
  static const _kAccessExpires = 'auth.access_token_expires_at';
  static const _kRefresh = 'auth.refresh_token';
  static const _kRefreshExpires = 'auth.refresh_token_expires_at';
  static const _kUserId = 'auth.user_id';

  Future<void> save({
    required String accessToken,
    required DateTime accessTokenExpiresAt,
    required String refreshToken,
    required DateTime refreshTokenExpiresAt,
    int? userId,
  }) async {
    await Future.wait([
      _storage.write(key: _kAccess, value: accessToken),
      _storage.write(
        key: _kAccessExpires,
        value: accessTokenExpiresAt.toUtc().toIso8601String(),
      ),
      _storage.write(key: _kRefresh, value: refreshToken),
      _storage.write(
        key: _kRefreshExpires,
        value: refreshTokenExpiresAt.toUtc().toIso8601String(),
      ),
      if (userId != null)
        _storage.write(key: _kUserId, value: userId.toString()),
    ]);
  }

  Future<String?> readAccessToken() => _storage.read(key: _kAccess);
  Future<String?> readRefreshToken() => _storage.read(key: _kRefresh);

  Future<DateTime?> readAccessTokenExpiresAt() async {
    final raw = await _storage.read(key: _kAccessExpires);
    return raw == null ? null : DateTime.tryParse(raw);
  }

  Future<DateTime?> readRefreshTokenExpiresAt() async {
    final raw = await _storage.read(key: _kRefreshExpires);
    return raw == null ? null : DateTime.tryParse(raw);
  }

  Future<int?> readUserId() async {
    final raw = await _storage.read(key: _kUserId);
    return raw == null ? null : int.tryParse(raw);
  }

  Future<void> clear() async {
    await Future.wait([
      _storage.delete(key: _kAccess),
      _storage.delete(key: _kAccessExpires),
      _storage.delete(key: _kRefresh),
      _storage.delete(key: _kRefreshExpires),
      _storage.delete(key: _kUserId),
    ]);
  }
}
