// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RequestPhoneVerificationRequestImpl
_$$RequestPhoneVerificationRequestImplFromJson(Map<String, dynamic> json) =>
    _$RequestPhoneVerificationRequestImpl(
      phoneNumber: json['phoneNumber'] as String,
      purpose: $enumDecode(_$PhoneVerificationPurposeEnumMap, json['purpose']),
    );

Map<String, dynamic> _$$RequestPhoneVerificationRequestImplToJson(
  _$RequestPhoneVerificationRequestImpl instance,
) => <String, dynamic>{
  'phoneNumber': instance.phoneNumber,
  'purpose': _$PhoneVerificationPurposeEnumMap[instance.purpose]!,
};

const _$PhoneVerificationPurposeEnumMap = {
  PhoneVerificationPurpose.signup: 'SIGNUP',
  PhoneVerificationPurpose.login: 'LOGIN',
};

_$PhoneVerificationResponseImpl _$$PhoneVerificationResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PhoneVerificationResponseImpl(
  verificationId: json['verificationId'] as String,
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  resendAvailableAt: DateTime.parse(json['resendAvailableAt'] as String),
);

Map<String, dynamic> _$$PhoneVerificationResponseImplToJson(
  _$PhoneVerificationResponseImpl instance,
) => <String, dynamic>{
  'verificationId': instance.verificationId,
  'expiresAt': instance.expiresAt.toIso8601String(),
  'resendAvailableAt': instance.resendAvailableAt.toIso8601String(),
};

_$ConfirmPhoneVerificationRequestImpl
_$$ConfirmPhoneVerificationRequestImplFromJson(Map<String, dynamic> json) =>
    _$ConfirmPhoneVerificationRequestImpl(code: json['code'] as String);

Map<String, dynamic> _$$ConfirmPhoneVerificationRequestImplToJson(
  _$ConfirmPhoneVerificationRequestImpl instance,
) => <String, dynamic>{'code': instance.code};

_$PhoneVerificationConfirmResponseImpl
_$$PhoneVerificationConfirmResponseImplFromJson(Map<String, dynamic> json) =>
    _$PhoneVerificationConfirmResponseImpl(
      verifiedToken: json['verifiedToken'] as String,
      verifiedTokenExpiresAt: DateTime.parse(
        json['verifiedTokenExpiresAt'] as String,
      ),
      userExists: json['userExists'] as bool,
    );

Map<String, dynamic> _$$PhoneVerificationConfirmResponseImplToJson(
  _$PhoneVerificationConfirmResponseImpl instance,
) => <String, dynamic>{
  'verifiedToken': instance.verifiedToken,
  'verifiedTokenExpiresAt': instance.verifiedTokenExpiresAt.toIso8601String(),
  'userExists': instance.userExists,
};

_$SignupRequestImpl _$$SignupRequestImplFromJson(
  Map<String, dynamic> json,
) => _$SignupRequestImpl(
  verifiedToken: json['verifiedToken'] as String,
  displayName: json['displayName'] as String,
  birthDate: const LocalDateConverter().fromJson(json['birthDate'] as String),
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  agreements: AgreementSet.fromJson(json['agreements'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$SignupRequestImplToJson(_$SignupRequestImpl instance) =>
    <String, dynamic>{
      'verifiedToken': instance.verifiedToken,
      'displayName': instance.displayName,
      'birthDate': const LocalDateConverter().toJson(instance.birthDate),
      'gender': _$GenderEnumMap[instance.gender]!,
      'agreements': instance.agreements,
    };

const _$GenderEnumMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};

_$LoginRequestImpl _$$LoginRequestImplFromJson(Map<String, dynamic> json) =>
    _$LoginRequestImpl(verifiedToken: json['verifiedToken'] as String);

Map<String, dynamic> _$$LoginRequestImplToJson(_$LoginRequestImpl instance) =>
    <String, dynamic>{'verifiedToken': instance.verifiedToken};

_$RefreshTokenRequestImpl _$$RefreshTokenRequestImplFromJson(
  Map<String, dynamic> json,
) => _$RefreshTokenRequestImpl(refreshToken: json['refreshToken'] as String);

Map<String, dynamic> _$$RefreshTokenRequestImplToJson(
  _$RefreshTokenRequestImpl instance,
) => <String, dynamic>{'refreshToken': instance.refreshToken};

_$AuthTokensImpl _$$AuthTokensImplFromJson(Map<String, dynamic> json) =>
    _$AuthTokensImpl(
      accessToken: json['accessToken'] as String,
      refreshToken: json['refreshToken'] as String,
      accessTokenExpiresAt: DateTime.parse(
        json['accessTokenExpiresAt'] as String,
      ),
      refreshTokenExpiresAt: DateTime.parse(
        json['refreshTokenExpiresAt'] as String,
      ),
      tokenType: json['tokenType'] as String? ?? 'Bearer',
    );

Map<String, dynamic> _$$AuthTokensImplToJson(_$AuthTokensImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'accessTokenExpiresAt': instance.accessTokenExpiresAt.toIso8601String(),
      'refreshTokenExpiresAt': instance.refreshTokenExpiresAt.toIso8601String(),
      'tokenType': instance.tokenType,
    };

_$UserResponseImpl _$$UserResponseImplFromJson(Map<String, dynamic> json) =>
    _$UserResponseImpl(
      id: (json['id'] as num).toInt(),
      phoneNumber: json['phoneNumber'] as String,
      status: $enumDecode(_$UserAccountStatusEnumMap, json['status']),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastLoginAt: json['lastLoginAt'] == null
          ? null
          : DateTime.parse(json['lastLoginAt'] as String),
    );

Map<String, dynamic> _$$UserResponseImplToJson(_$UserResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'phoneNumber': instance.phoneNumber,
      'status': _$UserAccountStatusEnumMap[instance.status]!,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastLoginAt': instance.lastLoginAt?.toIso8601String(),
    };

const _$UserAccountStatusEnumMap = {
  UserAccountStatus.active: 'ACTIVE',
  UserAccountStatus.suspended: 'SUSPENDED',
  UserAccountStatus.deactivated: 'DEACTIVATED',
  UserAccountStatus.deleted: 'DELETED',
};

_$AuthSessionImpl _$$AuthSessionImplFromJson(Map<String, dynamic> json) =>
    _$AuthSessionImpl(
      user: UserResponse.fromJson(json['user'] as Map<String, dynamic>),
      tokens: AuthTokens.fromJson(json['tokens'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthSessionImplToJson(_$AuthSessionImpl instance) =>
    <String, dynamic>{'user': instance.user, 'tokens': instance.tokens};
