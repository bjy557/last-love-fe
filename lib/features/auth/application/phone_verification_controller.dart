import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../data/auth_api.dart';
import '../domain/auth_enums.dart';
import '../domain/auth_models.dart';
import 'signup_flow_controller.dart';

part 'phone_verification_controller.g.dart';

class PhoneVerificationState {
  const PhoneVerificationState({
    this.verificationId,
    this.expiresAt,
    this.resendAvailableAt,
    this.lastError,
    this.isSending = false,
    this.isConfirming = false,
  });

  final String? verificationId;
  final DateTime? expiresAt;
  final DateTime? resendAvailableAt;
  final String? lastError;
  final bool isSending;
  final bool isConfirming;

  PhoneVerificationState copyWith({
    String? verificationId,
    DateTime? expiresAt,
    DateTime? resendAvailableAt,
    String? lastError,
    bool? isSending,
    bool? isConfirming,
    bool clearError = false,
  }) =>
      PhoneVerificationState(
        verificationId: verificationId ?? this.verificationId,
        expiresAt: expiresAt ?? this.expiresAt,
        resendAvailableAt: resendAvailableAt ?? this.resendAvailableAt,
        lastError: clearError ? null : (lastError ?? this.lastError),
        isSending: isSending ?? this.isSending,
        isConfirming: isConfirming ?? this.isConfirming,
      );
}

@Riverpod(keepAlive: true)
class PhoneVerificationController extends _$PhoneVerificationController {
  @override
  PhoneVerificationState build() => const PhoneVerificationState();

  AuthApi get _api => AuthApi(ref.read(apiDioProvider));

  Future<PhoneVerificationResponse?> sendCode(String phoneNumber) async {
    state = state.copyWith(isSending: true, clearError: true);
    try {
      final resp = await _api.requestPhoneVerification(
        RequestPhoneVerificationRequest(
          phoneNumber: phoneNumber,
          purpose: PhoneVerificationPurpose.signup,
        ),
      );
      ref.read(signupFlowControllerProvider.notifier)
        ..setPhone(phoneNumber)
        ..setVerification(resp.verificationId);
      state = state.copyWith(
        verificationId: resp.verificationId,
        expiresAt: resp.expiresAt,
        resendAvailableAt: resp.resendAvailableAt,
        isSending: false,
      );
      return resp;
    } on Object catch (e) {
      state = state.copyWith(isSending: false, lastError: e.toString());
      rethrow;
    }
  }

  /// Returns the confirm response so the caller can branch on `userExists`.
  Future<PhoneVerificationConfirmResponse> confirmCode(String code) async {
    final id = state.verificationId;
    if (id == null) {
      throw StateError('verificationId not set');
    }
    state = state.copyWith(isConfirming: true, clearError: true);
    try {
      final resp = await _api.confirmPhoneVerification(
        id,
        ConfirmPhoneVerificationRequest(code: code),
      );
      ref
          .read(signupFlowControllerProvider.notifier)
          .setVerifiedToken(resp.verifiedToken, resp.verifiedTokenExpiresAt);
      state = state.copyWith(isConfirming: false);
      return resp;
    } on Object catch (e) {
      state = state.copyWith(isConfirming: false, lastError: e.toString());
      rethrow;
    }
  }

  void clear() {
    state = const PhoneVerificationState();
  }
}
