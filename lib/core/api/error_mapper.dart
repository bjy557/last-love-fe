import 'api_error.dart';

/// Maps BE error codes to user-facing messages tuned by the strategist.
///
/// When no override is registered we fall back to the BE-provided `message` -
/// the contract guarantees Korean copy already.
class ErrorMessages {
  ErrorMessages._();

  /// Static prefixes that need no template substitution.
  static const Map<String, String> _static = <String, String>{
    // OTP / verification
    'AUTH_OTP_EXPIRED': '인증 시간이 지났어요. 다시 받기를 눌러주세요.',
    'AUTH_OTP_TOO_MANY_ATTEMPTS': '여러 번 일치하지 않았어요. 5분 후 다시 시도해 주세요.',
    'AUTH_VERIFICATION_ALREADY_ACTIVE': '방금 받으신 인증을 먼저 입력해 주세요.',
    'AUTH_VERIFIED_TOKEN_INVALID': '인증 시간이 지났어요. 처음부터 다시 받아주세요.',
    'AUTH_PHONE_ALREADY_REGISTERED': '이미 가입된 번호예요. 바로 로그인할까요?',
    'AUTH_TOKEN_EXPIRED': '다시 로그인해 주세요.',
    'AUTH_TOKEN_INVALID': '다시 로그인해 주세요.',
    'AUTH_REFRESH_INVALID': '보안을 위해 다시 로그인이 필요해요.',
    // Signup
    'SIGNUP_AGREEMENT_REQUIRED': '필수 약관에 모두 동의해 주세요.',
    'SIGNUP_DISPLAY_NAME_TAKEN': '이 닉네임은 사용 중이에요. 다른 이름을 정해 주세요.',
    'VALIDATION_FAILED': '입력값을 확인해 주세요.',
    // Account
    'ACCOUNT_SUSPENDED': '이용이 제한되었어요. 자세한 안내는 고객센터로 문의해 주세요.',
    'ACCOUNT_DEACTIVATED': '탈퇴 처리 중이에요. 14일 이내라면 복구 안내를 받아보세요. 고객센터로 문의해 주세요.',
    // Location
    'LOCATION_INVALID': '위치 정보를 받아오지 못했어요. 잠시 후 다시 시도해 주세요.',
    // Photo
    'PHOTO_TOO_LARGE': '사진 용량이 너무 커요 (10MB 이하). 다른 사진을 골라 주세요.',
    'PHOTO_INVALID_CONTENT_TYPE': 'JPG, PNG, HEIC 형식의 사진만 올릴 수 있어요.',
    'PHOTO_LIMIT_EXCEEDED': '사진은 최대 6장까지 올릴 수 있어요.',
    'PHOTO_NOT_UPLOADED': '사진을 다시 보내드릴게요.',
    'PHOTO_REVIEW_REJECTED': '이 사진은 가이드라인에 맞지 않아요. 다른 사진을 골라 주세요.',
    // Chat
    'CHAT_ROOM_NOT_FOUND': '대화방을 찾을 수 없어요.',
    'CHAT_ROOM_ACCESS_DENIED': '이 대화방에 접근할 수 없어요.',
    'CHAT_ROOM_ENDED': '종료된 대화예요.',
    'MESSAGE_TOO_LONG': '메시지가 너무 길어요 (최대 1000자).',
    'MESSAGE_EMPTY': '메시지를 입력해 주세요.',
    'MESSAGE_DUPLICATE': '이미 보낸 메시지예요.',
    // Safety
    'REPORT_ALREADY_FILED': '이미 신고하신 분이에요.',
    'BLOCK_ALREADY_EXISTS': '이미 차단한 분이에요.',
    'BLOCK_NOT_FOUND': '차단 기록을 찾을 수 없어요.',
    // WebSocket
    'WS_AUTH_FAILED': '연결이 끊겼어요. 다시 로그인해 주세요.',
    'WS_INVALID_DESTINATION': '잘못된 대화방이에요.',
    // Generic
    'INTERNAL_ERROR': '일시적인 문제가 생겼어요. 잠시 후 다시 시도해 주세요.',
    'NETWORK_ERROR': '연결이 잘 안 돼요. 잠시 후 다시 시도해 주세요.',
    'TIMEOUT': '응답이 늦어지고 있어요. 잠시 후 다시 시도해 주세요.',
  };

  /// Resolves the message for an [ApiError]. Some codes need details (e.g.
  /// `remainingAttempts`) so we keep the API as an error object input.
  static String resolve(ApiError error) {
    switch (error.code) {
      case 'AUTH_OTP_INVALID':
        final remaining = error.details?['remainingAttempts'];
        if (remaining is int) {
          return '숫자가 일치하지 않아요. 다시 한번 확인해 주세요. (남은 시도: $remaining회)';
        }
        return '숫자가 일치하지 않아요. 다시 한번 확인해 주세요.';
      case 'RATE_LIMIT_EXCEEDED':
        final retry = error.retryAfterSeconds;
        if (retry != null) {
          return '잠시 후 다시 요청해 주세요. ($retry초 후)';
        }
        return '잠시 후 다시 요청해 주세요.';
      default:
        return _static[error.code] ?? error.message;
    }
  }
}
