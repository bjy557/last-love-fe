// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RequestPhoneVerificationRequest _$RequestPhoneVerificationRequestFromJson(
  Map<String, dynamic> json,
) {
  return _RequestPhoneVerificationRequest.fromJson(json);
}

/// @nodoc
mixin _$RequestPhoneVerificationRequest {
  String get phoneNumber => throw _privateConstructorUsedError;
  PhoneVerificationPurpose get purpose => throw _privateConstructorUsedError;

  /// Serializes this RequestPhoneVerificationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestPhoneVerificationRequestCopyWith<RequestPhoneVerificationRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPhoneVerificationRequestCopyWith<$Res> {
  factory $RequestPhoneVerificationRequestCopyWith(
    RequestPhoneVerificationRequest value,
    $Res Function(RequestPhoneVerificationRequest) then,
  ) =
      _$RequestPhoneVerificationRequestCopyWithImpl<
        $Res,
        RequestPhoneVerificationRequest
      >;
  @useResult
  $Res call({String phoneNumber, PhoneVerificationPurpose purpose});
}

/// @nodoc
class _$RequestPhoneVerificationRequestCopyWithImpl<
  $Res,
  $Val extends RequestPhoneVerificationRequest
>
    implements $RequestPhoneVerificationRequestCopyWith<$Res> {
  _$RequestPhoneVerificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null, Object? purpose = null}) {
    return _then(
      _value.copyWith(
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            purpose: null == purpose
                ? _value.purpose
                : purpose // ignore: cast_nullable_to_non_nullable
                      as PhoneVerificationPurpose,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RequestPhoneVerificationRequestImplCopyWith<$Res>
    implements $RequestPhoneVerificationRequestCopyWith<$Res> {
  factory _$$RequestPhoneVerificationRequestImplCopyWith(
    _$RequestPhoneVerificationRequestImpl value,
    $Res Function(_$RequestPhoneVerificationRequestImpl) then,
  ) = __$$RequestPhoneVerificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, PhoneVerificationPurpose purpose});
}

/// @nodoc
class __$$RequestPhoneVerificationRequestImplCopyWithImpl<$Res>
    extends
        _$RequestPhoneVerificationRequestCopyWithImpl<
          $Res,
          _$RequestPhoneVerificationRequestImpl
        >
    implements _$$RequestPhoneVerificationRequestImplCopyWith<$Res> {
  __$$RequestPhoneVerificationRequestImplCopyWithImpl(
    _$RequestPhoneVerificationRequestImpl _value,
    $Res Function(_$RequestPhoneVerificationRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RequestPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? phoneNumber = null, Object? purpose = null}) {
    return _then(
      _$RequestPhoneVerificationRequestImpl(
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        purpose: null == purpose
            ? _value.purpose
            : purpose // ignore: cast_nullable_to_non_nullable
                  as PhoneVerificationPurpose,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestPhoneVerificationRequestImpl
    implements _RequestPhoneVerificationRequest {
  const _$RequestPhoneVerificationRequestImpl({
    required this.phoneNumber,
    required this.purpose,
  });

  factory _$RequestPhoneVerificationRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$RequestPhoneVerificationRequestImplFromJson(json);

  @override
  final String phoneNumber;
  @override
  final PhoneVerificationPurpose purpose;

  @override
  String toString() {
    return 'RequestPhoneVerificationRequest(phoneNumber: $phoneNumber, purpose: $purpose)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPhoneVerificationRequestImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.purpose, purpose) || other.purpose == purpose));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, purpose);

  /// Create a copy of RequestPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPhoneVerificationRequestImplCopyWith<
    _$RequestPhoneVerificationRequestImpl
  >
  get copyWith =>
      __$$RequestPhoneVerificationRequestImplCopyWithImpl<
        _$RequestPhoneVerificationRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPhoneVerificationRequestImplToJson(this);
  }
}

abstract class _RequestPhoneVerificationRequest
    implements RequestPhoneVerificationRequest {
  const factory _RequestPhoneVerificationRequest({
    required final String phoneNumber,
    required final PhoneVerificationPurpose purpose,
  }) = _$RequestPhoneVerificationRequestImpl;

  factory _RequestPhoneVerificationRequest.fromJson(Map<String, dynamic> json) =
      _$RequestPhoneVerificationRequestImpl.fromJson;

  @override
  String get phoneNumber;
  @override
  PhoneVerificationPurpose get purpose;

  /// Create a copy of RequestPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPhoneVerificationRequestImplCopyWith<
    _$RequestPhoneVerificationRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

PhoneVerificationResponse _$PhoneVerificationResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PhoneVerificationResponse.fromJson(json);
}

/// @nodoc
mixin _$PhoneVerificationResponse {
  String get verificationId => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get resendAvailableAt => throw _privateConstructorUsedError;

  /// Serializes this PhoneVerificationResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhoneVerificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneVerificationResponseCopyWith<PhoneVerificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneVerificationResponseCopyWith<$Res> {
  factory $PhoneVerificationResponseCopyWith(
    PhoneVerificationResponse value,
    $Res Function(PhoneVerificationResponse) then,
  ) = _$PhoneVerificationResponseCopyWithImpl<$Res, PhoneVerificationResponse>;
  @useResult
  $Res call({
    String verificationId,
    DateTime expiresAt,
    DateTime resendAvailableAt,
  });
}

/// @nodoc
class _$PhoneVerificationResponseCopyWithImpl<
  $Res,
  $Val extends PhoneVerificationResponse
>
    implements $PhoneVerificationResponseCopyWith<$Res> {
  _$PhoneVerificationResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneVerificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? expiresAt = null,
    Object? resendAvailableAt = null,
  }) {
    return _then(
      _value.copyWith(
            verificationId: null == verificationId
                ? _value.verificationId
                : verificationId // ignore: cast_nullable_to_non_nullable
                      as String,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            resendAvailableAt: null == resendAvailableAt
                ? _value.resendAvailableAt
                : resendAvailableAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhoneVerificationResponseImplCopyWith<$Res>
    implements $PhoneVerificationResponseCopyWith<$Res> {
  factory _$$PhoneVerificationResponseImplCopyWith(
    _$PhoneVerificationResponseImpl value,
    $Res Function(_$PhoneVerificationResponseImpl) then,
  ) = __$$PhoneVerificationResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String verificationId,
    DateTime expiresAt,
    DateTime resendAvailableAt,
  });
}

/// @nodoc
class __$$PhoneVerificationResponseImplCopyWithImpl<$Res>
    extends
        _$PhoneVerificationResponseCopyWithImpl<
          $Res,
          _$PhoneVerificationResponseImpl
        >
    implements _$$PhoneVerificationResponseImplCopyWith<$Res> {
  __$$PhoneVerificationResponseImplCopyWithImpl(
    _$PhoneVerificationResponseImpl _value,
    $Res Function(_$PhoneVerificationResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhoneVerificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verificationId = null,
    Object? expiresAt = null,
    Object? resendAvailableAt = null,
  }) {
    return _then(
      _$PhoneVerificationResponseImpl(
        verificationId: null == verificationId
            ? _value.verificationId
            : verificationId // ignore: cast_nullable_to_non_nullable
                  as String,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        resendAvailableAt: null == resendAvailableAt
            ? _value.resendAvailableAt
            : resendAvailableAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneVerificationResponseImpl implements _PhoneVerificationResponse {
  const _$PhoneVerificationResponseImpl({
    required this.verificationId,
    required this.expiresAt,
    required this.resendAvailableAt,
  });

  factory _$PhoneVerificationResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhoneVerificationResponseImplFromJson(json);

  @override
  final String verificationId;
  @override
  final DateTime expiresAt;
  @override
  final DateTime resendAvailableAt;

  @override
  String toString() {
    return 'PhoneVerificationResponse(verificationId: $verificationId, expiresAt: $expiresAt, resendAvailableAt: $resendAvailableAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerificationResponseImpl &&
            (identical(other.verificationId, verificationId) ||
                other.verificationId == verificationId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.resendAvailableAt, resendAvailableAt) ||
                other.resendAvailableAt == resendAvailableAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, verificationId, expiresAt, resendAvailableAt);

  /// Create a copy of PhoneVerificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneVerificationResponseImplCopyWith<_$PhoneVerificationResponseImpl>
  get copyWith =>
      __$$PhoneVerificationResponseImplCopyWithImpl<
        _$PhoneVerificationResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneVerificationResponseImplToJson(this);
  }
}

abstract class _PhoneVerificationResponse implements PhoneVerificationResponse {
  const factory _PhoneVerificationResponse({
    required final String verificationId,
    required final DateTime expiresAt,
    required final DateTime resendAvailableAt,
  }) = _$PhoneVerificationResponseImpl;

  factory _PhoneVerificationResponse.fromJson(Map<String, dynamic> json) =
      _$PhoneVerificationResponseImpl.fromJson;

  @override
  String get verificationId;
  @override
  DateTime get expiresAt;
  @override
  DateTime get resendAvailableAt;

  /// Create a copy of PhoneVerificationResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneVerificationResponseImplCopyWith<_$PhoneVerificationResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ConfirmPhoneVerificationRequest _$ConfirmPhoneVerificationRequestFromJson(
  Map<String, dynamic> json,
) {
  return _ConfirmPhoneVerificationRequest.fromJson(json);
}

/// @nodoc
mixin _$ConfirmPhoneVerificationRequest {
  String get code => throw _privateConstructorUsedError;

  /// Serializes this ConfirmPhoneVerificationRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmPhoneVerificationRequestCopyWith<ConfirmPhoneVerificationRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmPhoneVerificationRequestCopyWith<$Res> {
  factory $ConfirmPhoneVerificationRequestCopyWith(
    ConfirmPhoneVerificationRequest value,
    $Res Function(ConfirmPhoneVerificationRequest) then,
  ) =
      _$ConfirmPhoneVerificationRequestCopyWithImpl<
        $Res,
        ConfirmPhoneVerificationRequest
      >;
  @useResult
  $Res call({String code});
}

/// @nodoc
class _$ConfirmPhoneVerificationRequestCopyWithImpl<
  $Res,
  $Val extends ConfirmPhoneVerificationRequest
>
    implements $ConfirmPhoneVerificationRequestCopyWith<$Res> {
  _$ConfirmPhoneVerificationRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _value.copyWith(
            code: null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ConfirmPhoneVerificationRequestImplCopyWith<$Res>
    implements $ConfirmPhoneVerificationRequestCopyWith<$Res> {
  factory _$$ConfirmPhoneVerificationRequestImplCopyWith(
    _$ConfirmPhoneVerificationRequestImpl value,
    $Res Function(_$ConfirmPhoneVerificationRequestImpl) then,
  ) = __$$ConfirmPhoneVerificationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$ConfirmPhoneVerificationRequestImplCopyWithImpl<$Res>
    extends
        _$ConfirmPhoneVerificationRequestCopyWithImpl<
          $Res,
          _$ConfirmPhoneVerificationRequestImpl
        >
    implements _$$ConfirmPhoneVerificationRequestImplCopyWith<$Res> {
  __$$ConfirmPhoneVerificationRequestImplCopyWithImpl(
    _$ConfirmPhoneVerificationRequestImpl _value,
    $Res Function(_$ConfirmPhoneVerificationRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ConfirmPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$ConfirmPhoneVerificationRequestImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmPhoneVerificationRequestImpl
    implements _ConfirmPhoneVerificationRequest {
  const _$ConfirmPhoneVerificationRequestImpl({required this.code});

  factory _$ConfirmPhoneVerificationRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$ConfirmPhoneVerificationRequestImplFromJson(json);

  @override
  final String code;

  @override
  String toString() {
    return 'ConfirmPhoneVerificationRequest(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmPhoneVerificationRequestImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of ConfirmPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmPhoneVerificationRequestImplCopyWith<
    _$ConfirmPhoneVerificationRequestImpl
  >
  get copyWith =>
      __$$ConfirmPhoneVerificationRequestImplCopyWithImpl<
        _$ConfirmPhoneVerificationRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmPhoneVerificationRequestImplToJson(this);
  }
}

abstract class _ConfirmPhoneVerificationRequest
    implements ConfirmPhoneVerificationRequest {
  const factory _ConfirmPhoneVerificationRequest({required final String code}) =
      _$ConfirmPhoneVerificationRequestImpl;

  factory _ConfirmPhoneVerificationRequest.fromJson(Map<String, dynamic> json) =
      _$ConfirmPhoneVerificationRequestImpl.fromJson;

  @override
  String get code;

  /// Create a copy of ConfirmPhoneVerificationRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmPhoneVerificationRequestImplCopyWith<
    _$ConfirmPhoneVerificationRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

PhoneVerificationConfirmResponse _$PhoneVerificationConfirmResponseFromJson(
  Map<String, dynamic> json,
) {
  return _PhoneVerificationConfirmResponse.fromJson(json);
}

/// @nodoc
mixin _$PhoneVerificationConfirmResponse {
  String get verifiedToken => throw _privateConstructorUsedError;
  DateTime get verifiedTokenExpiresAt => throw _privateConstructorUsedError;
  bool get userExists => throw _privateConstructorUsedError;

  /// Serializes this PhoneVerificationConfirmResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhoneVerificationConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneVerificationConfirmResponseCopyWith<PhoneVerificationConfirmResponse>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneVerificationConfirmResponseCopyWith<$Res> {
  factory $PhoneVerificationConfirmResponseCopyWith(
    PhoneVerificationConfirmResponse value,
    $Res Function(PhoneVerificationConfirmResponse) then,
  ) =
      _$PhoneVerificationConfirmResponseCopyWithImpl<
        $Res,
        PhoneVerificationConfirmResponse
      >;
  @useResult
  $Res call({
    String verifiedToken,
    DateTime verifiedTokenExpiresAt,
    bool userExists,
  });
}

/// @nodoc
class _$PhoneVerificationConfirmResponseCopyWithImpl<
  $Res,
  $Val extends PhoneVerificationConfirmResponse
>
    implements $PhoneVerificationConfirmResponseCopyWith<$Res> {
  _$PhoneVerificationConfirmResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneVerificationConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifiedToken = null,
    Object? verifiedTokenExpiresAt = null,
    Object? userExists = null,
  }) {
    return _then(
      _value.copyWith(
            verifiedToken: null == verifiedToken
                ? _value.verifiedToken
                : verifiedToken // ignore: cast_nullable_to_non_nullable
                      as String,
            verifiedTokenExpiresAt: null == verifiedTokenExpiresAt
                ? _value.verifiedTokenExpiresAt
                : verifiedTokenExpiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            userExists: null == userExists
                ? _value.userExists
                : userExists // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhoneVerificationConfirmResponseImplCopyWith<$Res>
    implements $PhoneVerificationConfirmResponseCopyWith<$Res> {
  factory _$$PhoneVerificationConfirmResponseImplCopyWith(
    _$PhoneVerificationConfirmResponseImpl value,
    $Res Function(_$PhoneVerificationConfirmResponseImpl) then,
  ) = __$$PhoneVerificationConfirmResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String verifiedToken,
    DateTime verifiedTokenExpiresAt,
    bool userExists,
  });
}

/// @nodoc
class __$$PhoneVerificationConfirmResponseImplCopyWithImpl<$Res>
    extends
        _$PhoneVerificationConfirmResponseCopyWithImpl<
          $Res,
          _$PhoneVerificationConfirmResponseImpl
        >
    implements _$$PhoneVerificationConfirmResponseImplCopyWith<$Res> {
  __$$PhoneVerificationConfirmResponseImplCopyWithImpl(
    _$PhoneVerificationConfirmResponseImpl _value,
    $Res Function(_$PhoneVerificationConfirmResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhoneVerificationConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifiedToken = null,
    Object? verifiedTokenExpiresAt = null,
    Object? userExists = null,
  }) {
    return _then(
      _$PhoneVerificationConfirmResponseImpl(
        verifiedToken: null == verifiedToken
            ? _value.verifiedToken
            : verifiedToken // ignore: cast_nullable_to_non_nullable
                  as String,
        verifiedTokenExpiresAt: null == verifiedTokenExpiresAt
            ? _value.verifiedTokenExpiresAt
            : verifiedTokenExpiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        userExists: null == userExists
            ? _value.userExists
            : userExists // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhoneVerificationConfirmResponseImpl
    implements _PhoneVerificationConfirmResponse {
  const _$PhoneVerificationConfirmResponseImpl({
    required this.verifiedToken,
    required this.verifiedTokenExpiresAt,
    required this.userExists,
  });

  factory _$PhoneVerificationConfirmResponseImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$PhoneVerificationConfirmResponseImplFromJson(json);

  @override
  final String verifiedToken;
  @override
  final DateTime verifiedTokenExpiresAt;
  @override
  final bool userExists;

  @override
  String toString() {
    return 'PhoneVerificationConfirmResponse(verifiedToken: $verifiedToken, verifiedTokenExpiresAt: $verifiedTokenExpiresAt, userExists: $userExists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneVerificationConfirmResponseImpl &&
            (identical(other.verifiedToken, verifiedToken) ||
                other.verifiedToken == verifiedToken) &&
            (identical(other.verifiedTokenExpiresAt, verifiedTokenExpiresAt) ||
                other.verifiedTokenExpiresAt == verifiedTokenExpiresAt) &&
            (identical(other.userExists, userExists) ||
                other.userExists == userExists));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    verifiedToken,
    verifiedTokenExpiresAt,
    userExists,
  );

  /// Create a copy of PhoneVerificationConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneVerificationConfirmResponseImplCopyWith<
    _$PhoneVerificationConfirmResponseImpl
  >
  get copyWith =>
      __$$PhoneVerificationConfirmResponseImplCopyWithImpl<
        _$PhoneVerificationConfirmResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhoneVerificationConfirmResponseImplToJson(this);
  }
}

abstract class _PhoneVerificationConfirmResponse
    implements PhoneVerificationConfirmResponse {
  const factory _PhoneVerificationConfirmResponse({
    required final String verifiedToken,
    required final DateTime verifiedTokenExpiresAt,
    required final bool userExists,
  }) = _$PhoneVerificationConfirmResponseImpl;

  factory _PhoneVerificationConfirmResponse.fromJson(
    Map<String, dynamic> json,
  ) = _$PhoneVerificationConfirmResponseImpl.fromJson;

  @override
  String get verifiedToken;
  @override
  DateTime get verifiedTokenExpiresAt;
  @override
  bool get userExists;

  /// Create a copy of PhoneVerificationConfirmResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneVerificationConfirmResponseImplCopyWith<
    _$PhoneVerificationConfirmResponseImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}

SignupRequest _$SignupRequestFromJson(Map<String, dynamic> json) {
  return _SignupRequest.fromJson(json);
}

/// @nodoc
mixin _$SignupRequest {
  String get verifiedToken => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  @LocalDateConverter()
  DateTime get birthDate => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  AgreementSet get agreements => throw _privateConstructorUsedError;

  /// Serializes this SignupRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignupRequestCopyWith<SignupRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignupRequestCopyWith<$Res> {
  factory $SignupRequestCopyWith(
    SignupRequest value,
    $Res Function(SignupRequest) then,
  ) = _$SignupRequestCopyWithImpl<$Res, SignupRequest>;
  @useResult
  $Res call({
    String verifiedToken,
    String displayName,
    @LocalDateConverter() DateTime birthDate,
    Gender gender,
    AgreementSet agreements,
  });

  $AgreementSetCopyWith<$Res> get agreements;
}

/// @nodoc
class _$SignupRequestCopyWithImpl<$Res, $Val extends SignupRequest>
    implements $SignupRequestCopyWith<$Res> {
  _$SignupRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifiedToken = null,
    Object? displayName = null,
    Object? birthDate = null,
    Object? gender = null,
    Object? agreements = null,
  }) {
    return _then(
      _value.copyWith(
            verifiedToken: null == verifiedToken
                ? _value.verifiedToken
                : verifiedToken // ignore: cast_nullable_to_non_nullable
                      as String,
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            birthDate: null == birthDate
                ? _value.birthDate
                : birthDate // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as Gender,
            agreements: null == agreements
                ? _value.agreements
                : agreements // ignore: cast_nullable_to_non_nullable
                      as AgreementSet,
          )
          as $Val,
    );
  }

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AgreementSetCopyWith<$Res> get agreements {
    return $AgreementSetCopyWith<$Res>(_value.agreements, (value) {
      return _then(_value.copyWith(agreements: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignupRequestImplCopyWith<$Res>
    implements $SignupRequestCopyWith<$Res> {
  factory _$$SignupRequestImplCopyWith(
    _$SignupRequestImpl value,
    $Res Function(_$SignupRequestImpl) then,
  ) = __$$SignupRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String verifiedToken,
    String displayName,
    @LocalDateConverter() DateTime birthDate,
    Gender gender,
    AgreementSet agreements,
  });

  @override
  $AgreementSetCopyWith<$Res> get agreements;
}

/// @nodoc
class __$$SignupRequestImplCopyWithImpl<$Res>
    extends _$SignupRequestCopyWithImpl<$Res, _$SignupRequestImpl>
    implements _$$SignupRequestImplCopyWith<$Res> {
  __$$SignupRequestImplCopyWithImpl(
    _$SignupRequestImpl _value,
    $Res Function(_$SignupRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifiedToken = null,
    Object? displayName = null,
    Object? birthDate = null,
    Object? gender = null,
    Object? agreements = null,
  }) {
    return _then(
      _$SignupRequestImpl(
        verifiedToken: null == verifiedToken
            ? _value.verifiedToken
            : verifiedToken // ignore: cast_nullable_to_non_nullable
                  as String,
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        birthDate: null == birthDate
            ? _value.birthDate
            : birthDate // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as Gender,
        agreements: null == agreements
            ? _value.agreements
            : agreements // ignore: cast_nullable_to_non_nullable
                  as AgreementSet,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SignupRequestImpl implements _SignupRequest {
  const _$SignupRequestImpl({
    required this.verifiedToken,
    required this.displayName,
    @LocalDateConverter() required this.birthDate,
    required this.gender,
    required this.agreements,
  });

  factory _$SignupRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignupRequestImplFromJson(json);

  @override
  final String verifiedToken;
  @override
  final String displayName;
  @override
  @LocalDateConverter()
  final DateTime birthDate;
  @override
  final Gender gender;
  @override
  final AgreementSet agreements;

  @override
  String toString() {
    return 'SignupRequest(verifiedToken: $verifiedToken, displayName: $displayName, birthDate: $birthDate, gender: $gender, agreements: $agreements)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupRequestImpl &&
            (identical(other.verifiedToken, verifiedToken) ||
                other.verifiedToken == verifiedToken) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.agreements, agreements) ||
                other.agreements == agreements));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    verifiedToken,
    displayName,
    birthDate,
    gender,
    agreements,
  );

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupRequestImplCopyWith<_$SignupRequestImpl> get copyWith =>
      __$$SignupRequestImplCopyWithImpl<_$SignupRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignupRequestImplToJson(this);
  }
}

abstract class _SignupRequest implements SignupRequest {
  const factory _SignupRequest({
    required final String verifiedToken,
    required final String displayName,
    @LocalDateConverter() required final DateTime birthDate,
    required final Gender gender,
    required final AgreementSet agreements,
  }) = _$SignupRequestImpl;

  factory _SignupRequest.fromJson(Map<String, dynamic> json) =
      _$SignupRequestImpl.fromJson;

  @override
  String get verifiedToken;
  @override
  String get displayName;
  @override
  @LocalDateConverter()
  DateTime get birthDate;
  @override
  Gender get gender;
  @override
  AgreementSet get agreements;

  /// Create a copy of SignupRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupRequestImplCopyWith<_$SignupRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) {
  return _LoginRequest.fromJson(json);
}

/// @nodoc
mixin _$LoginRequest {
  String get verifiedToken => throw _privateConstructorUsedError;

  /// Serializes this LoginRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestCopyWith<LoginRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestCopyWith<$Res> {
  factory $LoginRequestCopyWith(
    LoginRequest value,
    $Res Function(LoginRequest) then,
  ) = _$LoginRequestCopyWithImpl<$Res, LoginRequest>;
  @useResult
  $Res call({String verifiedToken});
}

/// @nodoc
class _$LoginRequestCopyWithImpl<$Res, $Val extends LoginRequest>
    implements $LoginRequestCopyWith<$Res> {
  _$LoginRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? verifiedToken = null}) {
    return _then(
      _value.copyWith(
            verifiedToken: null == verifiedToken
                ? _value.verifiedToken
                : verifiedToken // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginRequestImplCopyWith<$Res>
    implements $LoginRequestCopyWith<$Res> {
  factory _$$LoginRequestImplCopyWith(
    _$LoginRequestImpl value,
    $Res Function(_$LoginRequestImpl) then,
  ) = __$$LoginRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String verifiedToken});
}

/// @nodoc
class __$$LoginRequestImplCopyWithImpl<$Res>
    extends _$LoginRequestCopyWithImpl<$Res, _$LoginRequestImpl>
    implements _$$LoginRequestImplCopyWith<$Res> {
  __$$LoginRequestImplCopyWithImpl(
    _$LoginRequestImpl _value,
    $Res Function(_$LoginRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? verifiedToken = null}) {
    return _then(
      _$LoginRequestImpl(
        verifiedToken: null == verifiedToken
            ? _value.verifiedToken
            : verifiedToken // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestImpl implements _LoginRequest {
  const _$LoginRequestImpl({required this.verifiedToken});

  factory _$LoginRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestImplFromJson(json);

  @override
  final String verifiedToken;

  @override
  String toString() {
    return 'LoginRequest(verifiedToken: $verifiedToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestImpl &&
            (identical(other.verifiedToken, verifiedToken) ||
                other.verifiedToken == verifiedToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verifiedToken);

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      __$$LoginRequestImplCopyWithImpl<_$LoginRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestImplToJson(this);
  }
}

abstract class _LoginRequest implements LoginRequest {
  const factory _LoginRequest({required final String verifiedToken}) =
      _$LoginRequestImpl;

  factory _LoginRequest.fromJson(Map<String, dynamic> json) =
      _$LoginRequestImpl.fromJson;

  @override
  String get verifiedToken;

  /// Create a copy of LoginRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestImplCopyWith<_$LoginRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RefreshTokenRequest _$RefreshTokenRequestFromJson(Map<String, dynamic> json) {
  return _RefreshTokenRequest.fromJson(json);
}

/// @nodoc
mixin _$RefreshTokenRequest {
  String get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshTokenRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshTokenRequestCopyWith<RefreshTokenRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshTokenRequestCopyWith<$Res> {
  factory $RefreshTokenRequestCopyWith(
    RefreshTokenRequest value,
    $Res Function(RefreshTokenRequest) then,
  ) = _$RefreshTokenRequestCopyWithImpl<$Res, RefreshTokenRequest>;
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class _$RefreshTokenRequestCopyWithImpl<$Res, $Val extends RefreshTokenRequest>
    implements $RefreshTokenRequestCopyWith<$Res> {
  _$RefreshTokenRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? refreshToken = null}) {
    return _then(
      _value.copyWith(
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RefreshTokenRequestImplCopyWith<$Res>
    implements $RefreshTokenRequestCopyWith<$Res> {
  factory _$$RefreshTokenRequestImplCopyWith(
    _$RefreshTokenRequestImpl value,
    $Res Function(_$RefreshTokenRequestImpl) then,
  ) = __$$RefreshTokenRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken});
}

/// @nodoc
class __$$RefreshTokenRequestImplCopyWithImpl<$Res>
    extends _$RefreshTokenRequestCopyWithImpl<$Res, _$RefreshTokenRequestImpl>
    implements _$$RefreshTokenRequestImplCopyWith<$Res> {
  __$$RefreshTokenRequestImplCopyWithImpl(
    _$RefreshTokenRequestImpl _value,
    $Res Function(_$RefreshTokenRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? refreshToken = null}) {
    return _then(
      _$RefreshTokenRequestImpl(
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshTokenRequestImpl implements _RefreshTokenRequest {
  const _$RefreshTokenRequestImpl({required this.refreshToken});

  factory _$RefreshTokenRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshTokenRequestImplFromJson(json);

  @override
  final String refreshToken;

  @override
  String toString() {
    return 'RefreshTokenRequest(refreshToken: $refreshToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshTokenRequestImpl &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, refreshToken);

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      __$$RefreshTokenRequestImplCopyWithImpl<_$RefreshTokenRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshTokenRequestImplToJson(this);
  }
}

abstract class _RefreshTokenRequest implements RefreshTokenRequest {
  const factory _RefreshTokenRequest({required final String refreshToken}) =
      _$RefreshTokenRequestImpl;

  factory _RefreshTokenRequest.fromJson(Map<String, dynamic> json) =
      _$RefreshTokenRequestImpl.fromJson;

  @override
  String get refreshToken;

  /// Create a copy of RefreshTokenRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshTokenRequestImplCopyWith<_$RefreshTokenRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthTokens _$AuthTokensFromJson(Map<String, dynamic> json) {
  return _AuthTokens.fromJson(json);
}

/// @nodoc
mixin _$AuthTokens {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  DateTime get accessTokenExpiresAt => throw _privateConstructorUsedError;
  DateTime get refreshTokenExpiresAt => throw _privateConstructorUsedError;
  String get tokenType => throw _privateConstructorUsedError;

  /// Serializes this AuthTokens to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthTokensCopyWith<AuthTokens> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokensCopyWith<$Res> {
  factory $AuthTokensCopyWith(
    AuthTokens value,
    $Res Function(AuthTokens) then,
  ) = _$AuthTokensCopyWithImpl<$Res, AuthTokens>;
  @useResult
  $Res call({
    String accessToken,
    String refreshToken,
    DateTime accessTokenExpiresAt,
    DateTime refreshTokenExpiresAt,
    String tokenType,
  });
}

/// @nodoc
class _$AuthTokensCopyWithImpl<$Res, $Val extends AuthTokens>
    implements $AuthTokensCopyWith<$Res> {
  _$AuthTokensCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpiresAt = null,
    Object? refreshTokenExpiresAt = null,
    Object? tokenType = null,
  }) {
    return _then(
      _value.copyWith(
            accessToken: null == accessToken
                ? _value.accessToken
                : accessToken // ignore: cast_nullable_to_non_nullable
                      as String,
            refreshToken: null == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String,
            accessTokenExpiresAt: null == accessTokenExpiresAt
                ? _value.accessTokenExpiresAt
                : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            refreshTokenExpiresAt: null == refreshTokenExpiresAt
                ? _value.refreshTokenExpiresAt
                : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            tokenType: null == tokenType
                ? _value.tokenType
                : tokenType // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthTokensImplCopyWith<$Res>
    implements $AuthTokensCopyWith<$Res> {
  factory _$$AuthTokensImplCopyWith(
    _$AuthTokensImpl value,
    $Res Function(_$AuthTokensImpl) then,
  ) = __$$AuthTokensImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String accessToken,
    String refreshToken,
    DateTime accessTokenExpiresAt,
    DateTime refreshTokenExpiresAt,
    String tokenType,
  });
}

/// @nodoc
class __$$AuthTokensImplCopyWithImpl<$Res>
    extends _$AuthTokensCopyWithImpl<$Res, _$AuthTokensImpl>
    implements _$$AuthTokensImplCopyWith<$Res> {
  __$$AuthTokensImplCopyWithImpl(
    _$AuthTokensImpl _value,
    $Res Function(_$AuthTokensImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthTokens
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? accessTokenExpiresAt = null,
    Object? refreshTokenExpiresAt = null,
    Object? tokenType = null,
  }) {
    return _then(
      _$AuthTokensImpl(
        accessToken: null == accessToken
            ? _value.accessToken
            : accessToken // ignore: cast_nullable_to_non_nullable
                  as String,
        refreshToken: null == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String,
        accessTokenExpiresAt: null == accessTokenExpiresAt
            ? _value.accessTokenExpiresAt
            : accessTokenExpiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        refreshTokenExpiresAt: null == refreshTokenExpiresAt
            ? _value.refreshTokenExpiresAt
            : refreshTokenExpiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        tokenType: null == tokenType
            ? _value.tokenType
            : tokenType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthTokensImpl implements _AuthTokens {
  const _$AuthTokensImpl({
    required this.accessToken,
    required this.refreshToken,
    required this.accessTokenExpiresAt,
    required this.refreshTokenExpiresAt,
    this.tokenType = 'Bearer',
  });

  factory _$AuthTokensImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthTokensImplFromJson(json);

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final DateTime accessTokenExpiresAt;
  @override
  final DateTime refreshTokenExpiresAt;
  @override
  @JsonKey()
  final String tokenType;

  @override
  String toString() {
    return 'AuthTokens(accessToken: $accessToken, refreshToken: $refreshToken, accessTokenExpiresAt: $accessTokenExpiresAt, refreshTokenExpiresAt: $refreshTokenExpiresAt, tokenType: $tokenType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokensImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.accessTokenExpiresAt, accessTokenExpiresAt) ||
                other.accessTokenExpiresAt == accessTokenExpiresAt) &&
            (identical(other.refreshTokenExpiresAt, refreshTokenExpiresAt) ||
                other.refreshTokenExpiresAt == refreshTokenExpiresAt) &&
            (identical(other.tokenType, tokenType) ||
                other.tokenType == tokenType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    accessToken,
    refreshToken,
    accessTokenExpiresAt,
    refreshTokenExpiresAt,
    tokenType,
  );

  /// Create a copy of AuthTokens
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokensImplCopyWith<_$AuthTokensImpl> get copyWith =>
      __$$AuthTokensImplCopyWithImpl<_$AuthTokensImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthTokensImplToJson(this);
  }
}

abstract class _AuthTokens implements AuthTokens {
  const factory _AuthTokens({
    required final String accessToken,
    required final String refreshToken,
    required final DateTime accessTokenExpiresAt,
    required final DateTime refreshTokenExpiresAt,
    final String tokenType,
  }) = _$AuthTokensImpl;

  factory _AuthTokens.fromJson(Map<String, dynamic> json) =
      _$AuthTokensImpl.fromJson;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  DateTime get accessTokenExpiresAt;
  @override
  DateTime get refreshTokenExpiresAt;
  @override
  String get tokenType;

  /// Create a copy of AuthTokens
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthTokensImplCopyWith<_$AuthTokensImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return _UserResponse.fromJson(json);
}

/// @nodoc
mixin _$UserResponse {
  int get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  UserAccountStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get lastLoginAt => throw _privateConstructorUsedError;

  /// Serializes this UserResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserResponseCopyWith<UserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserResponseCopyWith<$Res> {
  factory $UserResponseCopyWith(
    UserResponse value,
    $Res Function(UserResponse) then,
  ) = _$UserResponseCopyWithImpl<$Res, UserResponse>;
  @useResult
  $Res call({
    int id,
    String phoneNumber,
    UserAccountStatus status,
    DateTime createdAt,
    DateTime? lastLoginAt,
  });
}

/// @nodoc
class _$UserResponseCopyWithImpl<$Res, $Val extends UserResponse>
    implements $UserResponseCopyWith<$Res> {
  _$UserResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? status = null,
    Object? createdAt = null,
    Object? lastLoginAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as UserAccountStatus,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            lastLoginAt: freezed == lastLoginAt
                ? _value.lastLoginAt
                : lastLoginAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UserResponseImplCopyWith<$Res>
    implements $UserResponseCopyWith<$Res> {
  factory _$$UserResponseImplCopyWith(
    _$UserResponseImpl value,
    $Res Function(_$UserResponseImpl) then,
  ) = __$$UserResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String phoneNumber,
    UserAccountStatus status,
    DateTime createdAt,
    DateTime? lastLoginAt,
  });
}

/// @nodoc
class __$$UserResponseImplCopyWithImpl<$Res>
    extends _$UserResponseCopyWithImpl<$Res, _$UserResponseImpl>
    implements _$$UserResponseImplCopyWith<$Res> {
  __$$UserResponseImplCopyWithImpl(
    _$UserResponseImpl _value,
    $Res Function(_$UserResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? phoneNumber = null,
    Object? status = null,
    Object? createdAt = null,
    Object? lastLoginAt = freezed,
  }) {
    return _then(
      _$UserResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as UserAccountStatus,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        lastLoginAt: freezed == lastLoginAt
            ? _value.lastLoginAt
            : lastLoginAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserResponseImpl implements _UserResponse {
  const _$UserResponseImpl({
    required this.id,
    required this.phoneNumber,
    required this.status,
    required this.createdAt,
    this.lastLoginAt,
  });

  factory _$UserResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String phoneNumber;
  @override
  final UserAccountStatus status;
  @override
  final DateTime createdAt;
  @override
  final DateTime? lastLoginAt;

  @override
  String toString() {
    return 'UserResponse(id: $id, phoneNumber: $phoneNumber, status: $status, createdAt: $createdAt, lastLoginAt: $lastLoginAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastLoginAt, lastLoginAt) ||
                other.lastLoginAt == lastLoginAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, phoneNumber, status, createdAt, lastLoginAt);

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      __$$UserResponseImplCopyWithImpl<_$UserResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserResponseImplToJson(this);
  }
}

abstract class _UserResponse implements UserResponse {
  const factory _UserResponse({
    required final int id,
    required final String phoneNumber,
    required final UserAccountStatus status,
    required final DateTime createdAt,
    final DateTime? lastLoginAt,
  }) = _$UserResponseImpl;

  factory _UserResponse.fromJson(Map<String, dynamic> json) =
      _$UserResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get phoneNumber;
  @override
  UserAccountStatus get status;
  @override
  DateTime get createdAt;
  @override
  DateTime? get lastLoginAt;

  /// Create a copy of UserResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserResponseImplCopyWith<_$UserResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthSession _$AuthSessionFromJson(Map<String, dynamic> json) {
  return _AuthSession.fromJson(json);
}

/// @nodoc
mixin _$AuthSession {
  UserResponse get user => throw _privateConstructorUsedError;
  AuthTokens get tokens => throw _privateConstructorUsedError;

  /// Serializes this AuthSession to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthSessionCopyWith<AuthSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthSessionCopyWith<$Res> {
  factory $AuthSessionCopyWith(
    AuthSession value,
    $Res Function(AuthSession) then,
  ) = _$AuthSessionCopyWithImpl<$Res, AuthSession>;
  @useResult
  $Res call({UserResponse user, AuthTokens tokens});

  $UserResponseCopyWith<$Res> get user;
  $AuthTokensCopyWith<$Res> get tokens;
}

/// @nodoc
class _$AuthSessionCopyWithImpl<$Res, $Val extends AuthSession>
    implements $AuthSessionCopyWith<$Res> {
  _$AuthSessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null, Object? tokens = null}) {
    return _then(
      _value.copyWith(
            user: null == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as UserResponse,
            tokens: null == tokens
                ? _value.tokens
                : tokens // ignore: cast_nullable_to_non_nullable
                      as AuthTokens,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserResponseCopyWith<$Res> get user {
    return $UserResponseCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of AuthSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AuthTokensCopyWith<$Res> get tokens {
    return $AuthTokensCopyWith<$Res>(_value.tokens, (value) {
      return _then(_value.copyWith(tokens: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthSessionImplCopyWith<$Res>
    implements $AuthSessionCopyWith<$Res> {
  factory _$$AuthSessionImplCopyWith(
    _$AuthSessionImpl value,
    $Res Function(_$AuthSessionImpl) then,
  ) = __$$AuthSessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserResponse user, AuthTokens tokens});

  @override
  $UserResponseCopyWith<$Res> get user;
  @override
  $AuthTokensCopyWith<$Res> get tokens;
}

/// @nodoc
class __$$AuthSessionImplCopyWithImpl<$Res>
    extends _$AuthSessionCopyWithImpl<$Res, _$AuthSessionImpl>
    implements _$$AuthSessionImplCopyWith<$Res> {
  __$$AuthSessionImplCopyWithImpl(
    _$AuthSessionImpl _value,
    $Res Function(_$AuthSessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthSession
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = null, Object? tokens = null}) {
    return _then(
      _$AuthSessionImpl(
        user: null == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as UserResponse,
        tokens: null == tokens
            ? _value.tokens
            : tokens // ignore: cast_nullable_to_non_nullable
                  as AuthTokens,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthSessionImpl implements _AuthSession {
  const _$AuthSessionImpl({required this.user, required this.tokens});

  factory _$AuthSessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthSessionImplFromJson(json);

  @override
  final UserResponse user;
  @override
  final AuthTokens tokens;

  @override
  String toString() {
    return 'AuthSession(user: $user, tokens: $tokens)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSessionImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.tokens, tokens) || other.tokens == tokens));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, user, tokens);

  /// Create a copy of AuthSession
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSessionImplCopyWith<_$AuthSessionImpl> get copyWith =>
      __$$AuthSessionImplCopyWithImpl<_$AuthSessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthSessionImplToJson(this);
  }
}

abstract class _AuthSession implements AuthSession {
  const factory _AuthSession({
    required final UserResponse user,
    required final AuthTokens tokens,
  }) = _$AuthSessionImpl;

  factory _AuthSession.fromJson(Map<String, dynamic> json) =
      _$AuthSessionImpl.fromJson;

  @override
  UserResponse get user;
  @override
  AuthTokens get tokens;

  /// Create a copy of AuthSession
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSessionImplCopyWith<_$AuthSessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
