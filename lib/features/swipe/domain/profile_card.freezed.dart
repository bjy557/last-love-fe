// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

PhotoCardResponse _$PhotoCardResponseFromJson(Map<String, dynamic> json) {
  return _PhotoCardResponse.fromJson(json);
}

/// @nodoc
mixin _$PhotoCardResponse {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get orderIndex => throw _privateConstructorUsedError;

  /// Serializes this PhotoCardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoCardResponseCopyWith<PhotoCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCardResponseCopyWith<$Res> {
  factory $PhotoCardResponseCopyWith(
    PhotoCardResponse value,
    $Res Function(PhotoCardResponse) then,
  ) = _$PhotoCardResponseCopyWithImpl<$Res, PhotoCardResponse>;
  @useResult
  $Res call({int id, String url, int orderIndex});
}

/// @nodoc
class _$PhotoCardResponseCopyWithImpl<$Res, $Val extends PhotoCardResponse>
    implements $PhotoCardResponseCopyWith<$Res> {
  _$PhotoCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? orderIndex = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            url: null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                      as String,
            orderIndex: null == orderIndex
                ? _value.orderIndex
                : orderIndex // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhotoCardResponseImplCopyWith<$Res>
    implements $PhotoCardResponseCopyWith<$Res> {
  factory _$$PhotoCardResponseImplCopyWith(
    _$PhotoCardResponseImpl value,
    $Res Function(_$PhotoCardResponseImpl) then,
  ) = __$$PhotoCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, int orderIndex});
}

/// @nodoc
class __$$PhotoCardResponseImplCopyWithImpl<$Res>
    extends _$PhotoCardResponseCopyWithImpl<$Res, _$PhotoCardResponseImpl>
    implements _$$PhotoCardResponseImplCopyWith<$Res> {
  __$$PhotoCardResponseImplCopyWithImpl(
    _$PhotoCardResponseImpl _value,
    $Res Function(_$PhotoCardResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhotoCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? orderIndex = null,
  }) {
    return _then(
      _$PhotoCardResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        url: null == url
            ? _value.url
            : url // ignore: cast_nullable_to_non_nullable
                  as String,
        orderIndex: null == orderIndex
            ? _value.orderIndex
            : orderIndex // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoCardResponseImpl implements _PhotoCardResponse {
  const _$PhotoCardResponseImpl({
    required this.id,
    required this.url,
    required this.orderIndex,
  });

  factory _$PhotoCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoCardResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final int orderIndex;

  @override
  String toString() {
    return 'PhotoCardResponse(id: $id, url: $url, orderIndex: $orderIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoCardResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, orderIndex);

  /// Create a copy of PhotoCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoCardResponseImplCopyWith<_$PhotoCardResponseImpl> get copyWith =>
      __$$PhotoCardResponseImplCopyWithImpl<_$PhotoCardResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoCardResponseImplToJson(this);
  }
}

abstract class _PhotoCardResponse implements PhotoCardResponse {
  const factory _PhotoCardResponse({
    required final int id,
    required final String url,
    required final int orderIndex,
  }) = _$PhotoCardResponseImpl;

  factory _PhotoCardResponse.fromJson(Map<String, dynamic> json) =
      _$PhotoCardResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  int get orderIndex;

  /// Create a copy of PhotoCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoCardResponseImplCopyWith<_$PhotoCardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileCardResponse _$ProfileCardResponseFromJson(Map<String, dynamic> json) {
  return _ProfileCardResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileCardResponse {
  int get userId => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  int? get heightCm => throw _privateConstructorUsedError;
  String? get occupation => throw _privateConstructorUsedError;
  EducationLevel? get educationLevel => throw _privateConstructorUsedError;
  Religion? get religion => throw _privateConstructorUsedError;
  SmokingStatus? get smokingStatus => throw _privateConstructorUsedError;
  DrinkingStatus? get drinkingStatus => throw _privateConstructorUsedError;
  MaritalStatus? get maritalStatus => throw _privateConstructorUsedError;
  HasChildren? get hasChildren => throw _privateConstructorUsedError;
  RelationshipIntent get relationshipIntent =>
      throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get locationCity => throw _privateConstructorUsedError;
  String? get distanceLabel => throw _privateConstructorUsedError;
  List<PhotoCardResponse> get photos => throw _privateConstructorUsedError;
  String? get bioPlaceholder => throw _privateConstructorUsedError;
  ProfileCompletenessLevel get completenessLevel =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileCardResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCardResponseCopyWith<ProfileCardResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCardResponseCopyWith<$Res> {
  factory $ProfileCardResponseCopyWith(
    ProfileCardResponse value,
    $Res Function(ProfileCardResponse) then,
  ) = _$ProfileCardResponseCopyWithImpl<$Res, ProfileCardResponse>;
  @useResult
  $Res call({
    int userId,
    String displayName,
    int age,
    Gender gender,
    int? heightCm,
    String? occupation,
    EducationLevel? educationLevel,
    Religion? religion,
    SmokingStatus? smokingStatus,
    DrinkingStatus? drinkingStatus,
    MaritalStatus? maritalStatus,
    HasChildren? hasChildren,
    RelationshipIntent relationshipIntent,
    String? bio,
    String? locationCity,
    String? distanceLabel,
    List<PhotoCardResponse> photos,
    String? bioPlaceholder,
    ProfileCompletenessLevel completenessLevel,
  });
}

/// @nodoc
class _$ProfileCardResponseCopyWithImpl<$Res, $Val extends ProfileCardResponse>
    implements $ProfileCardResponseCopyWith<$Res> {
  _$ProfileCardResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? age = null,
    Object? gender = null,
    Object? heightCm = freezed,
    Object? occupation = freezed,
    Object? educationLevel = freezed,
    Object? religion = freezed,
    Object? smokingStatus = freezed,
    Object? drinkingStatus = freezed,
    Object? maritalStatus = freezed,
    Object? hasChildren = freezed,
    Object? relationshipIntent = null,
    Object? bio = freezed,
    Object? locationCity = freezed,
    Object? distanceLabel = freezed,
    Object? photos = null,
    Object? bioPlaceholder = freezed,
    Object? completenessLevel = null,
  }) {
    return _then(
      _value.copyWith(
            userId: null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int,
            displayName: null == displayName
                ? _value.displayName
                : displayName // ignore: cast_nullable_to_non_nullable
                      as String,
            age: null == age
                ? _value.age
                : age // ignore: cast_nullable_to_non_nullable
                      as int,
            gender: null == gender
                ? _value.gender
                : gender // ignore: cast_nullable_to_non_nullable
                      as Gender,
            heightCm: freezed == heightCm
                ? _value.heightCm
                : heightCm // ignore: cast_nullable_to_non_nullable
                      as int?,
            occupation: freezed == occupation
                ? _value.occupation
                : occupation // ignore: cast_nullable_to_non_nullable
                      as String?,
            educationLevel: freezed == educationLevel
                ? _value.educationLevel
                : educationLevel // ignore: cast_nullable_to_non_nullable
                      as EducationLevel?,
            religion: freezed == religion
                ? _value.religion
                : religion // ignore: cast_nullable_to_non_nullable
                      as Religion?,
            smokingStatus: freezed == smokingStatus
                ? _value.smokingStatus
                : smokingStatus // ignore: cast_nullable_to_non_nullable
                      as SmokingStatus?,
            drinkingStatus: freezed == drinkingStatus
                ? _value.drinkingStatus
                : drinkingStatus // ignore: cast_nullable_to_non_nullable
                      as DrinkingStatus?,
            maritalStatus: freezed == maritalStatus
                ? _value.maritalStatus
                : maritalStatus // ignore: cast_nullable_to_non_nullable
                      as MaritalStatus?,
            hasChildren: freezed == hasChildren
                ? _value.hasChildren
                : hasChildren // ignore: cast_nullable_to_non_nullable
                      as HasChildren?,
            relationshipIntent: null == relationshipIntent
                ? _value.relationshipIntent
                : relationshipIntent // ignore: cast_nullable_to_non_nullable
                      as RelationshipIntent,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            locationCity: freezed == locationCity
                ? _value.locationCity
                : locationCity // ignore: cast_nullable_to_non_nullable
                      as String?,
            distanceLabel: freezed == distanceLabel
                ? _value.distanceLabel
                : distanceLabel // ignore: cast_nullable_to_non_nullable
                      as String?,
            photos: null == photos
                ? _value.photos
                : photos // ignore: cast_nullable_to_non_nullable
                      as List<PhotoCardResponse>,
            bioPlaceholder: freezed == bioPlaceholder
                ? _value.bioPlaceholder
                : bioPlaceholder // ignore: cast_nullable_to_non_nullable
                      as String?,
            completenessLevel: null == completenessLevel
                ? _value.completenessLevel
                : completenessLevel // ignore: cast_nullable_to_non_nullable
                      as ProfileCompletenessLevel,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ProfileCardResponseImplCopyWith<$Res>
    implements $ProfileCardResponseCopyWith<$Res> {
  factory _$$ProfileCardResponseImplCopyWith(
    _$ProfileCardResponseImpl value,
    $Res Function(_$ProfileCardResponseImpl) then,
  ) = __$$ProfileCardResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int userId,
    String displayName,
    int age,
    Gender gender,
    int? heightCm,
    String? occupation,
    EducationLevel? educationLevel,
    Religion? religion,
    SmokingStatus? smokingStatus,
    DrinkingStatus? drinkingStatus,
    MaritalStatus? maritalStatus,
    HasChildren? hasChildren,
    RelationshipIntent relationshipIntent,
    String? bio,
    String? locationCity,
    String? distanceLabel,
    List<PhotoCardResponse> photos,
    String? bioPlaceholder,
    ProfileCompletenessLevel completenessLevel,
  });
}

/// @nodoc
class __$$ProfileCardResponseImplCopyWithImpl<$Res>
    extends _$ProfileCardResponseCopyWithImpl<$Res, _$ProfileCardResponseImpl>
    implements _$$ProfileCardResponseImplCopyWith<$Res> {
  __$$ProfileCardResponseImplCopyWithImpl(
    _$ProfileCardResponseImpl _value,
    $Res Function(_$ProfileCardResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ProfileCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? displayName = null,
    Object? age = null,
    Object? gender = null,
    Object? heightCm = freezed,
    Object? occupation = freezed,
    Object? educationLevel = freezed,
    Object? religion = freezed,
    Object? smokingStatus = freezed,
    Object? drinkingStatus = freezed,
    Object? maritalStatus = freezed,
    Object? hasChildren = freezed,
    Object? relationshipIntent = null,
    Object? bio = freezed,
    Object? locationCity = freezed,
    Object? distanceLabel = freezed,
    Object? photos = null,
    Object? bioPlaceholder = freezed,
    Object? completenessLevel = null,
  }) {
    return _then(
      _$ProfileCardResponseImpl(
        userId: null == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int,
        displayName: null == displayName
            ? _value.displayName
            : displayName // ignore: cast_nullable_to_non_nullable
                  as String,
        age: null == age
            ? _value.age
            : age // ignore: cast_nullable_to_non_nullable
                  as int,
        gender: null == gender
            ? _value.gender
            : gender // ignore: cast_nullable_to_non_nullable
                  as Gender,
        heightCm: freezed == heightCm
            ? _value.heightCm
            : heightCm // ignore: cast_nullable_to_non_nullable
                  as int?,
        occupation: freezed == occupation
            ? _value.occupation
            : occupation // ignore: cast_nullable_to_non_nullable
                  as String?,
        educationLevel: freezed == educationLevel
            ? _value.educationLevel
            : educationLevel // ignore: cast_nullable_to_non_nullable
                  as EducationLevel?,
        religion: freezed == religion
            ? _value.religion
            : religion // ignore: cast_nullable_to_non_nullable
                  as Religion?,
        smokingStatus: freezed == smokingStatus
            ? _value.smokingStatus
            : smokingStatus // ignore: cast_nullable_to_non_nullable
                  as SmokingStatus?,
        drinkingStatus: freezed == drinkingStatus
            ? _value.drinkingStatus
            : drinkingStatus // ignore: cast_nullable_to_non_nullable
                  as DrinkingStatus?,
        maritalStatus: freezed == maritalStatus
            ? _value.maritalStatus
            : maritalStatus // ignore: cast_nullable_to_non_nullable
                  as MaritalStatus?,
        hasChildren: freezed == hasChildren
            ? _value.hasChildren
            : hasChildren // ignore: cast_nullable_to_non_nullable
                  as HasChildren?,
        relationshipIntent: null == relationshipIntent
            ? _value.relationshipIntent
            : relationshipIntent // ignore: cast_nullable_to_non_nullable
                  as RelationshipIntent,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        locationCity: freezed == locationCity
            ? _value.locationCity
            : locationCity // ignore: cast_nullable_to_non_nullable
                  as String?,
        distanceLabel: freezed == distanceLabel
            ? _value.distanceLabel
            : distanceLabel // ignore: cast_nullable_to_non_nullable
                  as String?,
        photos: null == photos
            ? _value._photos
            : photos // ignore: cast_nullable_to_non_nullable
                  as List<PhotoCardResponse>,
        bioPlaceholder: freezed == bioPlaceholder
            ? _value.bioPlaceholder
            : bioPlaceholder // ignore: cast_nullable_to_non_nullable
                  as String?,
        completenessLevel: null == completenessLevel
            ? _value.completenessLevel
            : completenessLevel // ignore: cast_nullable_to_non_nullable
                  as ProfileCompletenessLevel,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileCardResponseImpl implements _ProfileCardResponse {
  const _$ProfileCardResponseImpl({
    required this.userId,
    required this.displayName,
    required this.age,
    required this.gender,
    this.heightCm,
    this.occupation,
    this.educationLevel,
    this.religion,
    this.smokingStatus,
    this.drinkingStatus,
    this.maritalStatus,
    this.hasChildren,
    required this.relationshipIntent,
    this.bio,
    this.locationCity,
    this.distanceLabel,
    final List<PhotoCardResponse> photos = const <PhotoCardResponse>[],
    this.bioPlaceholder,
    required this.completenessLevel,
  }) : _photos = photos;

  factory _$ProfileCardResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileCardResponseImplFromJson(json);

  @override
  final int userId;
  @override
  final String displayName;
  @override
  final int age;
  @override
  final Gender gender;
  @override
  final int? heightCm;
  @override
  final String? occupation;
  @override
  final EducationLevel? educationLevel;
  @override
  final Religion? religion;
  @override
  final SmokingStatus? smokingStatus;
  @override
  final DrinkingStatus? drinkingStatus;
  @override
  final MaritalStatus? maritalStatus;
  @override
  final HasChildren? hasChildren;
  @override
  final RelationshipIntent relationshipIntent;
  @override
  final String? bio;
  @override
  final String? locationCity;
  @override
  final String? distanceLabel;
  final List<PhotoCardResponse> _photos;
  @override
  @JsonKey()
  List<PhotoCardResponse> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  final String? bioPlaceholder;
  @override
  final ProfileCompletenessLevel completenessLevel;

  @override
  String toString() {
    return 'ProfileCardResponse(userId: $userId, displayName: $displayName, age: $age, gender: $gender, heightCm: $heightCm, occupation: $occupation, educationLevel: $educationLevel, religion: $religion, smokingStatus: $smokingStatus, drinkingStatus: $drinkingStatus, maritalStatus: $maritalStatus, hasChildren: $hasChildren, relationshipIntent: $relationshipIntent, bio: $bio, locationCity: $locationCity, distanceLabel: $distanceLabel, photos: $photos, bioPlaceholder: $bioPlaceholder, completenessLevel: $completenessLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileCardResponseImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.heightCm, heightCm) ||
                other.heightCm == heightCm) &&
            (identical(other.occupation, occupation) ||
                other.occupation == occupation) &&
            (identical(other.educationLevel, educationLevel) ||
                other.educationLevel == educationLevel) &&
            (identical(other.religion, religion) ||
                other.religion == religion) &&
            (identical(other.smokingStatus, smokingStatus) ||
                other.smokingStatus == smokingStatus) &&
            (identical(other.drinkingStatus, drinkingStatus) ||
                other.drinkingStatus == drinkingStatus) &&
            (identical(other.maritalStatus, maritalStatus) ||
                other.maritalStatus == maritalStatus) &&
            (identical(other.hasChildren, hasChildren) ||
                other.hasChildren == hasChildren) &&
            (identical(other.relationshipIntent, relationshipIntent) ||
                other.relationshipIntent == relationshipIntent) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.locationCity, locationCity) ||
                other.locationCity == locationCity) &&
            (identical(other.distanceLabel, distanceLabel) ||
                other.distanceLabel == distanceLabel) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.bioPlaceholder, bioPlaceholder) ||
                other.bioPlaceholder == bioPlaceholder) &&
            (identical(other.completenessLevel, completenessLevel) ||
                other.completenessLevel == completenessLevel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    userId,
    displayName,
    age,
    gender,
    heightCm,
    occupation,
    educationLevel,
    religion,
    smokingStatus,
    drinkingStatus,
    maritalStatus,
    hasChildren,
    relationshipIntent,
    bio,
    locationCity,
    distanceLabel,
    const DeepCollectionEquality().hash(_photos),
    bioPlaceholder,
    completenessLevel,
  ]);

  /// Create a copy of ProfileCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileCardResponseImplCopyWith<_$ProfileCardResponseImpl> get copyWith =>
      __$$ProfileCardResponseImplCopyWithImpl<_$ProfileCardResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileCardResponseImplToJson(this);
  }
}

abstract class _ProfileCardResponse implements ProfileCardResponse {
  const factory _ProfileCardResponse({
    required final int userId,
    required final String displayName,
    required final int age,
    required final Gender gender,
    final int? heightCm,
    final String? occupation,
    final EducationLevel? educationLevel,
    final Religion? religion,
    final SmokingStatus? smokingStatus,
    final DrinkingStatus? drinkingStatus,
    final MaritalStatus? maritalStatus,
    final HasChildren? hasChildren,
    required final RelationshipIntent relationshipIntent,
    final String? bio,
    final String? locationCity,
    final String? distanceLabel,
    final List<PhotoCardResponse> photos,
    final String? bioPlaceholder,
    required final ProfileCompletenessLevel completenessLevel,
  }) = _$ProfileCardResponseImpl;

  factory _ProfileCardResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileCardResponseImpl.fromJson;

  @override
  int get userId;
  @override
  String get displayName;
  @override
  int get age;
  @override
  Gender get gender;
  @override
  int? get heightCm;
  @override
  String? get occupation;
  @override
  EducationLevel? get educationLevel;
  @override
  Religion? get religion;
  @override
  SmokingStatus? get smokingStatus;
  @override
  DrinkingStatus? get drinkingStatus;
  @override
  MaritalStatus? get maritalStatus;
  @override
  HasChildren? get hasChildren;
  @override
  RelationshipIntent get relationshipIntent;
  @override
  String? get bio;
  @override
  String? get locationCity;
  @override
  String? get distanceLabel;
  @override
  List<PhotoCardResponse> get photos;
  @override
  String? get bioPlaceholder;
  @override
  ProfileCompletenessLevel get completenessLevel;

  /// Create a copy of ProfileCardResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileCardResponseImplCopyWith<_$ProfileCardResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
