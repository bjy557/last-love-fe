import 'package:dio/dio.dart';

/// Mirrors the BE `ErrorResponse` shape. Always raised by `ErrorMappingInterceptor`
/// for any 4xx/5xx response.
class ApiError implements Exception {
  ApiError({
    required this.code,
    required this.message,
    this.statusCode,
    this.details,
    this.traceId,
    this.retryAfterSeconds,
  });

  /// BE error code (e.g. `AUTH_OTP_INVALID`). Non-empty.
  final String code;

  /// User-facing message from BE. Already Korean and friendly by contract.
  final String message;

  /// HTTP status if known. Optional - useful for branching.
  final int? statusCode;

  /// Free-form details map (e.g. `{remainingAttempts: 2}`).
  final Map<String, dynamic>? details;

  /// BE-issued trace id for support escalation.
  final String? traceId;

  /// Parsed `Retry-After` header for 429s.
  final int? retryAfterSeconds;

  bool get isUnauthorized => statusCode == 401;
  bool get isForbidden => statusCode == 403;
  bool get isConflict => statusCode == 409;
  bool get isRateLimited => statusCode == 429;
  bool get isNetwork => code == 'NETWORK_ERROR' || code == 'TIMEOUT';

  /// Builds an `ApiError` from a dio exception when the BE didn't send a
  /// structured body (network failure, timeout, malformed JSON, ...).
  factory ApiError.fromDio(DioException e) {
    final type = e.type;
    if (type == DioExceptionType.connectionError ||
        type == DioExceptionType.connectionTimeout) {
      return ApiError(
        code: 'NETWORK_ERROR',
        message: '연결이 잘 안 돼요. 잠시 후 다시 시도해 주세요.',
      );
    }
    if (type == DioExceptionType.receiveTimeout ||
        type == DioExceptionType.sendTimeout) {
      return ApiError(
        code: 'TIMEOUT',
        message: '응답이 늦어지고 있어요. 잠시 후 다시 시도해 주세요.',
      );
    }
    if (type == DioExceptionType.cancel) {
      return ApiError(code: 'CANCELLED', message: '요청이 취소됐어요.');
    }
    return ApiError(
      code: 'NETWORK_ERROR',
      message: '연결이 잘 안 돼요. 잠시 후 다시 시도해 주세요.',
      statusCode: e.response?.statusCode,
    );
  }

  /// Parses a 4xx/5xx response body into an `ApiError`.
  factory ApiError.fromResponse(Response<dynamic> response) {
    final body = response.data;
    Map<String, dynamic>? json;
    if (body is Map<String, dynamic>) {
      json = body;
    } else if (body is String && body.isNotEmpty) {
      // Some 5xx pages may return text; ignore parsing.
      json = null;
    }
    final retryAfterHeader = response.headers.value('retry-after');
    final retryAfter =
        retryAfterHeader != null ? int.tryParse(retryAfterHeader) : null;

    return ApiError(
      code: (json?['code'] as String?) ?? _fallbackCode(response.statusCode),
      message: (json?['message'] as String?) ?? '문제가 생겼어요. 잠시 후 다시 시도해 주세요.',
      statusCode: response.statusCode,
      details: (json?['details'] as Map?)?.cast<String, dynamic>(),
      traceId: json?['traceId'] as String?,
      retryAfterSeconds: retryAfter,
    );
  }

  static String _fallbackCode(int? status) {
    if (status == null) return 'UNKNOWN_ERROR';
    if (status == 401) return 'AUTH_UNAUTHORIZED';
    if (status == 403) return 'FORBIDDEN';
    if (status == 404) return 'NOT_FOUND';
    if (status == 409) return 'CONFLICT';
    if (status == 429) return 'RATE_LIMIT_EXCEEDED';
    if (status >= 500) return 'INTERNAL_ERROR';
    return 'CLIENT_ERROR';
  }

  @override
  String toString() => 'ApiError($code, status=$statusCode): $message';
}
