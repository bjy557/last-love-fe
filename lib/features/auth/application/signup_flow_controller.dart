import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../domain/agreement_set.dart';

part 'signup_flow_controller.g.dart';

/// In-memory scratch state for the signup flow.
///
/// Holds the phone number, verification id, verified token, agreements, etc.
/// Wiped if the app is killed - by strategist policy 40+ users get a fresh
/// flow on relaunch rather than fragile resume logic.
class SignupFlowState {
  const SignupFlowState({
    this.phoneNumber,
    this.verificationId,
    this.verifiedToken,
    this.verifiedTokenExpiresAt,
    this.agreements,
  });

  final String? phoneNumber;
  final String? verificationId;
  final String? verifiedToken;
  final DateTime? verifiedTokenExpiresAt;
  final AgreementSet? agreements;

  SignupFlowState copyWith({
    String? phoneNumber,
    String? verificationId,
    String? verifiedToken,
    DateTime? verifiedTokenExpiresAt,
    AgreementSet? agreements,
  }) =>
      SignupFlowState(
        phoneNumber: phoneNumber ?? this.phoneNumber,
        verificationId: verificationId ?? this.verificationId,
        verifiedToken: verifiedToken ?? this.verifiedToken,
        verifiedTokenExpiresAt:
            verifiedTokenExpiresAt ?? this.verifiedTokenExpiresAt,
        agreements: agreements ?? this.agreements,
      );
}

@Riverpod(keepAlive: true)
class SignupFlowController extends _$SignupFlowController {
  @override
  SignupFlowState build() => const SignupFlowState();

  void setAgreements(AgreementSet agreements) {
    state = state.copyWith(agreements: agreements);
  }

  void setPhone(String phoneNumber) {
    state = state.copyWith(phoneNumber: phoneNumber);
  }

  void setVerification(String verificationId) {
    state = state.copyWith(verificationId: verificationId);
  }

  void setVerifiedToken(String token, DateTime expiresAt) {
    state = state.copyWith(
      verifiedToken: token,
      verifiedTokenExpiresAt: expiresAt,
    );
  }

  void reset() {
    state = const SignupFlowState();
  }
}
