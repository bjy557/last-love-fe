// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agreement_set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MarketingChannels _$MarketingChannelsFromJson(Map<String, dynamic> json) {
  return _MarketingChannels.fromJson(json);
}

/// @nodoc
mixin _$MarketingChannels {
  bool? get email => throw _privateConstructorUsedError;
  bool? get sms => throw _privateConstructorUsedError;
  bool? get push => throw _privateConstructorUsedError;

  /// Serializes this MarketingChannels to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketingChannels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketingChannelsCopyWith<MarketingChannels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketingChannelsCopyWith<$Res> {
  factory $MarketingChannelsCopyWith(
    MarketingChannels value,
    $Res Function(MarketingChannels) then,
  ) = _$MarketingChannelsCopyWithImpl<$Res, MarketingChannels>;
  @useResult
  $Res call({bool? email, bool? sms, bool? push});
}

/// @nodoc
class _$MarketingChannelsCopyWithImpl<$Res, $Val extends MarketingChannels>
    implements $MarketingChannelsCopyWith<$Res> {
  _$MarketingChannelsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketingChannels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? sms = freezed,
    Object? push = freezed,
  }) {
    return _then(
      _value.copyWith(
            email: freezed == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as bool?,
            sms: freezed == sms
                ? _value.sms
                : sms // ignore: cast_nullable_to_non_nullable
                      as bool?,
            push: freezed == push
                ? _value.push
                : push // ignore: cast_nullable_to_non_nullable
                      as bool?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarketingChannelsImplCopyWith<$Res>
    implements $MarketingChannelsCopyWith<$Res> {
  factory _$$MarketingChannelsImplCopyWith(
    _$MarketingChannelsImpl value,
    $Res Function(_$MarketingChannelsImpl) then,
  ) = __$$MarketingChannelsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? email, bool? sms, bool? push});
}

/// @nodoc
class __$$MarketingChannelsImplCopyWithImpl<$Res>
    extends _$MarketingChannelsCopyWithImpl<$Res, _$MarketingChannelsImpl>
    implements _$$MarketingChannelsImplCopyWith<$Res> {
  __$$MarketingChannelsImplCopyWithImpl(
    _$MarketingChannelsImpl _value,
    $Res Function(_$MarketingChannelsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarketingChannels
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? sms = freezed,
    Object? push = freezed,
  }) {
    return _then(
      _$MarketingChannelsImpl(
        email: freezed == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as bool?,
        sms: freezed == sms
            ? _value.sms
            : sms // ignore: cast_nullable_to_non_nullable
                  as bool?,
        push: freezed == push
            ? _value.push
            : push // ignore: cast_nullable_to_non_nullable
                  as bool?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketingChannelsImpl implements _MarketingChannels {
  const _$MarketingChannelsImpl({this.email, this.sms, this.push});

  factory _$MarketingChannelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketingChannelsImplFromJson(json);

  @override
  final bool? email;
  @override
  final bool? sms;
  @override
  final bool? push;

  @override
  String toString() {
    return 'MarketingChannels(email: $email, sms: $sms, push: $push)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingChannelsImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.sms, sms) || other.sms == sms) &&
            (identical(other.push, push) || other.push == push));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, sms, push);

  /// Create a copy of MarketingChannels
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingChannelsImplCopyWith<_$MarketingChannelsImpl> get copyWith =>
      __$$MarketingChannelsImplCopyWithImpl<_$MarketingChannelsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketingChannelsImplToJson(this);
  }
}

abstract class _MarketingChannels implements MarketingChannels {
  const factory _MarketingChannels({
    final bool? email,
    final bool? sms,
    final bool? push,
  }) = _$MarketingChannelsImpl;

  factory _MarketingChannels.fromJson(Map<String, dynamic> json) =
      _$MarketingChannelsImpl.fromJson;

  @override
  bool? get email;
  @override
  bool? get sms;
  @override
  bool? get push;

  /// Create a copy of MarketingChannels
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketingChannelsImplCopyWith<_$MarketingChannelsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AgreementSet _$AgreementSetFromJson(Map<String, dynamic> json) {
  return _AgreementSet.fromJson(json);
}

/// @nodoc
mixin _$AgreementSet {
  bool get terms => throw _privateConstructorUsedError;
  bool get privacy => throw _privateConstructorUsedError;
  bool? get privacyOptional => throw _privateConstructorUsedError;
  bool get location => throw _privateConstructorUsedError;
  bool get ageConfirmed => throw _privateConstructorUsedError;
  bool get marketing => throw _privateConstructorUsedError;
  MarketingChannels? get marketingChannels =>
      throw _privateConstructorUsedError;
  String get termsVersion => throw _privateConstructorUsedError;

  /// Serializes this AgreementSet to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AgreementSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AgreementSetCopyWith<AgreementSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgreementSetCopyWith<$Res> {
  factory $AgreementSetCopyWith(
    AgreementSet value,
    $Res Function(AgreementSet) then,
  ) = _$AgreementSetCopyWithImpl<$Res, AgreementSet>;
  @useResult
  $Res call({
    bool terms,
    bool privacy,
    bool? privacyOptional,
    bool location,
    bool ageConfirmed,
    bool marketing,
    MarketingChannels? marketingChannels,
    String termsVersion,
  });

  $MarketingChannelsCopyWith<$Res>? get marketingChannels;
}

/// @nodoc
class _$AgreementSetCopyWithImpl<$Res, $Val extends AgreementSet>
    implements $AgreementSetCopyWith<$Res> {
  _$AgreementSetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AgreementSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = null,
    Object? privacy = null,
    Object? privacyOptional = freezed,
    Object? location = null,
    Object? ageConfirmed = null,
    Object? marketing = null,
    Object? marketingChannels = freezed,
    Object? termsVersion = null,
  }) {
    return _then(
      _value.copyWith(
            terms: null == terms
                ? _value.terms
                : terms // ignore: cast_nullable_to_non_nullable
                      as bool,
            privacy: null == privacy
                ? _value.privacy
                : privacy // ignore: cast_nullable_to_non_nullable
                      as bool,
            privacyOptional: freezed == privacyOptional
                ? _value.privacyOptional
                : privacyOptional // ignore: cast_nullable_to_non_nullable
                      as bool?,
            location: null == location
                ? _value.location
                : location // ignore: cast_nullable_to_non_nullable
                      as bool,
            ageConfirmed: null == ageConfirmed
                ? _value.ageConfirmed
                : ageConfirmed // ignore: cast_nullable_to_non_nullable
                      as bool,
            marketing: null == marketing
                ? _value.marketing
                : marketing // ignore: cast_nullable_to_non_nullable
                      as bool,
            marketingChannels: freezed == marketingChannels
                ? _value.marketingChannels
                : marketingChannels // ignore: cast_nullable_to_non_nullable
                      as MarketingChannels?,
            termsVersion: null == termsVersion
                ? _value.termsVersion
                : termsVersion // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }

  /// Create a copy of AgreementSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MarketingChannelsCopyWith<$Res>? get marketingChannels {
    if (_value.marketingChannels == null) {
      return null;
    }

    return $MarketingChannelsCopyWith<$Res>(_value.marketingChannels!, (value) {
      return _then(_value.copyWith(marketingChannels: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgreementSetImplCopyWith<$Res>
    implements $AgreementSetCopyWith<$Res> {
  factory _$$AgreementSetImplCopyWith(
    _$AgreementSetImpl value,
    $Res Function(_$AgreementSetImpl) then,
  ) = __$$AgreementSetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool terms,
    bool privacy,
    bool? privacyOptional,
    bool location,
    bool ageConfirmed,
    bool marketing,
    MarketingChannels? marketingChannels,
    String termsVersion,
  });

  @override
  $MarketingChannelsCopyWith<$Res>? get marketingChannels;
}

/// @nodoc
class __$$AgreementSetImplCopyWithImpl<$Res>
    extends _$AgreementSetCopyWithImpl<$Res, _$AgreementSetImpl>
    implements _$$AgreementSetImplCopyWith<$Res> {
  __$$AgreementSetImplCopyWithImpl(
    _$AgreementSetImpl _value,
    $Res Function(_$AgreementSetImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AgreementSet
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terms = null,
    Object? privacy = null,
    Object? privacyOptional = freezed,
    Object? location = null,
    Object? ageConfirmed = null,
    Object? marketing = null,
    Object? marketingChannels = freezed,
    Object? termsVersion = null,
  }) {
    return _then(
      _$AgreementSetImpl(
        terms: null == terms
            ? _value.terms
            : terms // ignore: cast_nullable_to_non_nullable
                  as bool,
        privacy: null == privacy
            ? _value.privacy
            : privacy // ignore: cast_nullable_to_non_nullable
                  as bool,
        privacyOptional: freezed == privacyOptional
            ? _value.privacyOptional
            : privacyOptional // ignore: cast_nullable_to_non_nullable
                  as bool?,
        location: null == location
            ? _value.location
            : location // ignore: cast_nullable_to_non_nullable
                  as bool,
        ageConfirmed: null == ageConfirmed
            ? _value.ageConfirmed
            : ageConfirmed // ignore: cast_nullable_to_non_nullable
                  as bool,
        marketing: null == marketing
            ? _value.marketing
            : marketing // ignore: cast_nullable_to_non_nullable
                  as bool,
        marketingChannels: freezed == marketingChannels
            ? _value.marketingChannels
            : marketingChannels // ignore: cast_nullable_to_non_nullable
                  as MarketingChannels?,
        termsVersion: null == termsVersion
            ? _value.termsVersion
            : termsVersion // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AgreementSetImpl implements _AgreementSet {
  const _$AgreementSetImpl({
    required this.terms,
    required this.privacy,
    this.privacyOptional,
    required this.location,
    required this.ageConfirmed,
    required this.marketing,
    this.marketingChannels,
    required this.termsVersion,
  });

  factory _$AgreementSetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AgreementSetImplFromJson(json);

  @override
  final bool terms;
  @override
  final bool privacy;
  @override
  final bool? privacyOptional;
  @override
  final bool location;
  @override
  final bool ageConfirmed;
  @override
  final bool marketing;
  @override
  final MarketingChannels? marketingChannels;
  @override
  final String termsVersion;

  @override
  String toString() {
    return 'AgreementSet(terms: $terms, privacy: $privacy, privacyOptional: $privacyOptional, location: $location, ageConfirmed: $ageConfirmed, marketing: $marketing, marketingChannels: $marketingChannels, termsVersion: $termsVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgreementSetImpl &&
            (identical(other.terms, terms) || other.terms == terms) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.privacyOptional, privacyOptional) ||
                other.privacyOptional == privacyOptional) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.ageConfirmed, ageConfirmed) ||
                other.ageConfirmed == ageConfirmed) &&
            (identical(other.marketing, marketing) ||
                other.marketing == marketing) &&
            (identical(other.marketingChannels, marketingChannels) ||
                other.marketingChannels == marketingChannels) &&
            (identical(other.termsVersion, termsVersion) ||
                other.termsVersion == termsVersion));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    terms,
    privacy,
    privacyOptional,
    location,
    ageConfirmed,
    marketing,
    marketingChannels,
    termsVersion,
  );

  /// Create a copy of AgreementSet
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AgreementSetImplCopyWith<_$AgreementSetImpl> get copyWith =>
      __$$AgreementSetImplCopyWithImpl<_$AgreementSetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AgreementSetImplToJson(this);
  }
}

abstract class _AgreementSet implements AgreementSet {
  const factory _AgreementSet({
    required final bool terms,
    required final bool privacy,
    final bool? privacyOptional,
    required final bool location,
    required final bool ageConfirmed,
    required final bool marketing,
    final MarketingChannels? marketingChannels,
    required final String termsVersion,
  }) = _$AgreementSetImpl;

  factory _AgreementSet.fromJson(Map<String, dynamic> json) =
      _$AgreementSetImpl.fromJson;

  @override
  bool get terms;
  @override
  bool get privacy;
  @override
  bool? get privacyOptional;
  @override
  bool get location;
  @override
  bool get ageConfirmed;
  @override
  bool get marketing;
  @override
  MarketingChannels? get marketingChannels;
  @override
  String get termsVersion;

  /// Create a copy of AgreementSet
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AgreementSetImplCopyWith<_$AgreementSetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
