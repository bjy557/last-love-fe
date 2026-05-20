import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/json/local_date_converter.dart';
import 'agreement_set.dart';
import 'auth_enums.dart';

part 'auth_models.freezed.dart';
part 'auth_models.g.dart';

@freezed
class RequestPhoneVerificationRequest with _$RequestPhoneVerificationRequest {
  const factory RequestPhoneVerificationRequest({
    required String phoneNumber,
    required PhoneVerificationPurpose purpose,
  }) = _RequestPhoneVerificationRequest;

  factory RequestPhoneVerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$RequestPhoneVerificationRequestFromJson(json);
}

@freezed
class PhoneVerificationResponse with _$PhoneVerificationResponse {
  const factory PhoneVerificationResponse({
    required String verificationId,
    required DateTime expiresAt,
    required DateTime resendAvailableAt,
  }) = _PhoneVerificationResponse;

  factory PhoneVerificationResponse.fromJson(Map<String, dynamic> json) =>
      _$PhoneVerificationResponseFromJson(json);
}

@freezed
class ConfirmPhoneVerificationRequest with _$ConfirmPhoneVerificationRequest {
  const factory ConfirmPhoneVerificationRequest({
    required String code,
  }) = _ConfirmPhoneVerificationRequest;

  factory ConfirmPhoneVerificationRequest.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPhoneVerificationRequestFromJson(json);
}

@freezed
class PhoneVerificationConfirmResponse with _$PhoneVerificationConfirmResponse {
  const factory PhoneVerificationConfirmResponse({
    required String verifiedToken,
    required DateTime verifiedTokenExpiresAt,
    required bool userExists,
  }) = _PhoneVerificationConfirmResponse;

  factory PhoneVerificationConfirmResponse.fromJson(
          Map<String, dynamic> json) =>
      _$PhoneVerificationConfirmResponseFromJson(json);
}

@freezed
class SignupRequest with _$SignupRequest {
  const factory SignupRequest({
    required String verifiedToken,
    required String displayName,
    @LocalDateConverter() required DateTime birthDate,
    required Gender gender,
    required AgreementSet agreements,
  }) = _SignupRequest;

  factory SignupRequest.fromJson(Map<String, dynamic> json) =>
      _$SignupRequestFromJson(json);
}

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String verifiedToken,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class RefreshTokenRequest with _$RefreshTokenRequest {
  const factory RefreshTokenRequest({
    required String refreshToken,
  }) = _RefreshTokenRequest;

  factory RefreshTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$RefreshTokenRequestFromJson(json);
}

@freezed
class AuthTokens with _$AuthTokens {
  const factory AuthTokens({
    required String accessToken,
    required String refreshToken,
    required DateTime accessTokenExpiresAt,
    required DateTime refreshTokenExpiresAt,
    @Default('Bearer') String tokenType,
  }) = _AuthTokens;

  factory AuthTokens.fromJson(Map<String, dynamic> json) =>
      _$AuthTokensFromJson(json);
}

@freezed
class UserResponse with _$UserResponse {
  const factory UserResponse({
    required int id,
    required String phoneNumber,
    required UserAccountStatus status,
    required DateTime createdAt,
    DateTime? lastLoginAt,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class AuthSession with _$AuthSession {
  const factory AuthSession({
    required UserResponse user,
    required AuthTokens tokens,
  }) = _AuthSession;

  factory AuthSession.fromJson(Map<String, dynamic> json) =>
      _$AuthSessionFromJson(json);
}
