// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'swipe_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SwipeRequest _$SwipeRequestFromJson(Map<String, dynamic> json) {
  return _SwipeRequest.fromJson(json);
}

/// @nodoc
mixin _$SwipeRequest {
  SwipeAction get action => throw _privateConstructorUsedError;
  String? get deckId => throw _privateConstructorUsedError;

  /// Serializes this SwipeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwipeRequestCopyWith<SwipeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeRequestCopyWith<$Res> {
  factory $SwipeRequestCopyWith(
    SwipeRequest value,
    $Res Function(SwipeRequest) then,
  ) = _$SwipeRequestCopyWithImpl<$Res, SwipeRequest>;
  @useResult
  $Res call({SwipeAction action, String? deckId});
}

/// @nodoc
class _$SwipeRequestCopyWithImpl<$Res, $Val extends SwipeRequest>
    implements $SwipeRequestCopyWith<$Res> {
  _$SwipeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? action = null, Object? deckId = freezed}) {
    return _then(
      _value.copyWith(
            action: null == action
                ? _value.action
                : action // ignore: cast_nullable_to_non_nullable
                      as SwipeAction,
            deckId: freezed == deckId
                ? _value.deckId
                : deckId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SwipeRequestImplCopyWith<$Res>
    implements $SwipeRequestCopyWith<$Res> {
  factory _$$SwipeRequestImplCopyWith(
    _$SwipeRequestImpl value,
    $Res Function(_$SwipeRequestImpl) then,
  ) = __$$SwipeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SwipeAction action, String? deckId});
}

/// @nodoc
class __$$SwipeRequestImplCopyWithImpl<$Res>
    extends _$SwipeRequestCopyWithImpl<$Res, _$SwipeRequestImpl>
    implements _$$SwipeRequestImplCopyWith<$Res> {
  __$$SwipeRequestImplCopyWithImpl(
    _$SwipeRequestImpl _value,
    $Res Function(_$SwipeRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? action = null, Object? deckId = freezed}) {
    return _then(
      _$SwipeRequestImpl(
        action: null == action
            ? _value.action
            : action // ignore: cast_nullable_to_non_nullable
                  as SwipeAction,
        deckId: freezed == deckId
            ? _value.deckId
            : deckId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SwipeRequestImpl implements _SwipeRequest {
  const _$SwipeRequestImpl({required this.action, this.deckId});

  factory _$SwipeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwipeRequestImplFromJson(json);

  @override
  final SwipeAction action;
  @override
  final String? deckId;

  @override
  String toString() {
    return 'SwipeRequest(action: $action, deckId: $deckId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwipeRequestImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.deckId, deckId) || other.deckId == deckId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, action, deckId);

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwipeRequestImplCopyWith<_$SwipeRequestImpl> get copyWith =>
      __$$SwipeRequestImplCopyWithImpl<_$SwipeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SwipeRequestImplToJson(this);
  }
}

abstract class _SwipeRequest implements SwipeRequest {
  const factory _SwipeRequest({
    required final SwipeAction action,
    final String? deckId,
  }) = _$SwipeRequestImpl;

  factory _SwipeRequest.fromJson(Map<String, dynamic> json) =
      _$SwipeRequestImpl.fromJson;

  @override
  SwipeAction get action;
  @override
  String? get deckId;

  /// Create a copy of SwipeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwipeRequestImplCopyWith<_$SwipeRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SwipeResultResponse _$SwipeResultResponseFromJson(Map<String, dynamic> json) {
  return _SwipeResultResponse.fromJson(json);
}

/// @nodoc
mixin _$SwipeResultResponse {
  SwipeOutcome get outcome => throw _privateConstructorUsedError;
  int? get matchId => throw _privateConstructorUsedError;
  ProfileCardResponse? get matchedUser => throw _privateConstructorUsedError;

  /// Serializes this SwipeResultResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwipeResultResponseCopyWith<SwipeResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipeResultResponseCopyWith<$Res> {
  factory $SwipeResultResponseCopyWith(
    SwipeResultResponse value,
    $Res Function(SwipeResultResponse) then,
  ) = _$SwipeResultResponseCopyWithImpl<$Res, SwipeResultResponse>;
  @useResult
  $Res call({
    SwipeOutcome outcome,
    int? matchId,
    ProfileCardResponse? matchedUser,
  });

  $ProfileCardResponseCopyWith<$Res>? get matchedUser;
}

/// @nodoc
class _$SwipeResultResponseCopyWithImpl<$Res, $Val extends SwipeResultResponse>
    implements $SwipeResultResponseCopyWith<$Res> {
  _$SwipeResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcome = null,
    Object? matchId = freezed,
    Object? matchedUser = freezed,
  }) {
    return _then(
      _value.copyWith(
            outcome: null == outcome
                ? _value.outcome
                : outcome // ignore: cast_nullable_to_non_nullable
                      as SwipeOutcome,
            matchId: freezed == matchId
                ? _value.matchId
                : matchId // ignore: cast_nullable_to_non_nullable
                      as int?,
            matchedUser: freezed == matchedUser
                ? _value.matchedUser
                : matchedUser // ignore: cast_nullable_to_non_nullable
                      as ProfileCardResponse?,
          )
          as $Val,
    );
  }

  /// Create a copy of SwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCardResponseCopyWith<$Res>? get matchedUser {
    if (_value.matchedUser == null) {
      return null;
    }

    return $ProfileCardResponseCopyWith<$Res>(_value.matchedUser!, (value) {
      return _then(_value.copyWith(matchedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SwipeResultResponseImplCopyWith<$Res>
    implements $SwipeResultResponseCopyWith<$Res> {
  factory _$$SwipeResultResponseImplCopyWith(
    _$SwipeResultResponseImpl value,
    $Res Function(_$SwipeResultResponseImpl) then,
  ) = __$$SwipeResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    SwipeOutcome outcome,
    int? matchId,
    ProfileCardResponse? matchedUser,
  });

  @override
  $ProfileCardResponseCopyWith<$Res>? get matchedUser;
}

/// @nodoc
class __$$SwipeResultResponseImplCopyWithImpl<$Res>
    extends _$SwipeResultResponseCopyWithImpl<$Res, _$SwipeResultResponseImpl>
    implements _$$SwipeResultResponseImplCopyWith<$Res> {
  __$$SwipeResultResponseImplCopyWithImpl(
    _$SwipeResultResponseImpl _value,
    $Res Function(_$SwipeResultResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outcome = null,
    Object? matchId = freezed,
    Object? matchedUser = freezed,
  }) {
    return _then(
      _$SwipeResultResponseImpl(
        outcome: null == outcome
            ? _value.outcome
            : outcome // ignore: cast_nullable_to_non_nullable
                  as SwipeOutcome,
        matchId: freezed == matchId
            ? _value.matchId
            : matchId // ignore: cast_nullable_to_non_nullable
                  as int?,
        matchedUser: freezed == matchedUser
            ? _value.matchedUser
            : matchedUser // ignore: cast_nullable_to_non_nullable
                  as ProfileCardResponse?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SwipeResultResponseImpl implements _SwipeResultResponse {
  const _$SwipeResultResponseImpl({
    required this.outcome,
    this.matchId,
    this.matchedUser,
  });

  factory _$SwipeResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwipeResultResponseImplFromJson(json);

  @override
  final SwipeOutcome outcome;
  @override
  final int? matchId;
  @override
  final ProfileCardResponse? matchedUser;

  @override
  String toString() {
    return 'SwipeResultResponse(outcome: $outcome, matchId: $matchId, matchedUser: $matchedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwipeResultResponseImpl &&
            (identical(other.outcome, outcome) || other.outcome == outcome) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.matchedUser, matchedUser) ||
                other.matchedUser == matchedUser));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, outcome, matchId, matchedUser);

  /// Create a copy of SwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwipeResultResponseImplCopyWith<_$SwipeResultResponseImpl> get copyWith =>
      __$$SwipeResultResponseImplCopyWithImpl<_$SwipeResultResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SwipeResultResponseImplToJson(this);
  }
}

abstract class _SwipeResultResponse implements SwipeResultResponse {
  const factory _SwipeResultResponse({
    required final SwipeOutcome outcome,
    final int? matchId,
    final ProfileCardResponse? matchedUser,
  }) = _$SwipeResultResponseImpl;

  factory _SwipeResultResponse.fromJson(Map<String, dynamic> json) =
      _$SwipeResultResponseImpl.fromJson;

  @override
  SwipeOutcome get outcome;
  @override
  int? get matchId;
  @override
  ProfileCardResponse? get matchedUser;

  /// Create a copy of SwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwipeResultResponseImplCopyWith<_$SwipeResultResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DailySwipeCardsResponse _$DailySwipeCardsResponseFromJson(
  Map<String, dynamic> json,
) {
  return _DailySwipeCardsResponse.fromJson(json);
}

/// @nodoc
mixin _$DailySwipeCardsResponse {
  String get deckId => throw _privateConstructorUsedError;
  DateTime get generatedAt => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get remainingCount => throw _privateConstructorUsedError;
  bool get allViewed => throw _privateConstructorUsedError;
  List<ProfileCardResponse> get cards => throw _privateConstructorUsedError;

  /// Serializes this DailySwipeCardsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailySwipeCardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailySwipeCardsResponseCopyWith<DailySwipeCardsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailySwipeCardsResponseCopyWith<$Res> {
  factory $DailySwipeCardsResponseCopyWith(
    DailySwipeCardsResponse value,
    $Res Function(DailySwipeCardsResponse) then,
  ) = _$DailySwipeCardsResponseCopyWithImpl<$Res, DailySwipeCardsResponse>;
  @useResult
  $Res call({
    String deckId,
    DateTime generatedAt,
    DateTime expiresAt,
    int totalCount,
    int remainingCount,
    bool allViewed,
    List<ProfileCardResponse> cards,
  });
}

/// @nodoc
class _$DailySwipeCardsResponseCopyWithImpl<
  $Res,
  $Val extends DailySwipeCardsResponse
>
    implements $DailySwipeCardsResponseCopyWith<$Res> {
  _$DailySwipeCardsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailySwipeCardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
    Object? generatedAt = null,
    Object? expiresAt = null,
    Object? totalCount = null,
    Object? remainingCount = null,
    Object? allViewed = null,
    Object? cards = null,
  }) {
    return _then(
      _value.copyWith(
            deckId: null == deckId
                ? _value.deckId
                : deckId // ignore: cast_nullable_to_non_nullable
                      as String,
            generatedAt: null == generatedAt
                ? _value.generatedAt
                : generatedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            totalCount: null == totalCount
                ? _value.totalCount
                : totalCount // ignore: cast_nullable_to_non_nullable
                      as int,
            remainingCount: null == remainingCount
                ? _value.remainingCount
                : remainingCount // ignore: cast_nullable_to_non_nullable
                      as int,
            allViewed: null == allViewed
                ? _value.allViewed
                : allViewed // ignore: cast_nullable_to_non_nullable
                      as bool,
            cards: null == cards
                ? _value.cards
                : cards // ignore: cast_nullable_to_non_nullable
                      as List<ProfileCardResponse>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DailySwipeCardsResponseImplCopyWith<$Res>
    implements $DailySwipeCardsResponseCopyWith<$Res> {
  factory _$$DailySwipeCardsResponseImplCopyWith(
    _$DailySwipeCardsResponseImpl value,
    $Res Function(_$DailySwipeCardsResponseImpl) then,
  ) = __$$DailySwipeCardsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String deckId,
    DateTime generatedAt,
    DateTime expiresAt,
    int totalCount,
    int remainingCount,
    bool allViewed,
    List<ProfileCardResponse> cards,
  });
}

/// @nodoc
class __$$DailySwipeCardsResponseImplCopyWithImpl<$Res>
    extends
        _$DailySwipeCardsResponseCopyWithImpl<
          $Res,
          _$DailySwipeCardsResponseImpl
        >
    implements _$$DailySwipeCardsResponseImplCopyWith<$Res> {
  __$$DailySwipeCardsResponseImplCopyWithImpl(
    _$DailySwipeCardsResponseImpl _value,
    $Res Function(_$DailySwipeCardsResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of DailySwipeCardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deckId = null,
    Object? generatedAt = null,
    Object? expiresAt = null,
    Object? totalCount = null,
    Object? remainingCount = null,
    Object? allViewed = null,
    Object? cards = null,
  }) {
    return _then(
      _$DailySwipeCardsResponseImpl(
        deckId: null == deckId
            ? _value.deckId
            : deckId // ignore: cast_nullable_to_non_nullable
                  as String,
        generatedAt: null == generatedAt
            ? _value.generatedAt
            : generatedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        totalCount: null == totalCount
            ? _value.totalCount
            : totalCount // ignore: cast_nullable_to_non_nullable
                  as int,
        remainingCount: null == remainingCount
            ? _value.remainingCount
            : remainingCount // ignore: cast_nullable_to_non_nullable
                  as int,
        allViewed: null == allViewed
            ? _value.allViewed
            : allViewed // ignore: cast_nullable_to_non_nullable
                  as bool,
        cards: null == cards
            ? _value._cards
            : cards // ignore: cast_nullable_to_non_nullable
                  as List<ProfileCardResponse>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DailySwipeCardsResponseImpl implements _DailySwipeCardsResponse {
  const _$DailySwipeCardsResponseImpl({
    required this.deckId,
    required this.generatedAt,
    required this.expiresAt,
    required this.totalCount,
    required this.remainingCount,
    required this.allViewed,
    final List<ProfileCardResponse> cards = const <ProfileCardResponse>[],
  }) : _cards = cards;

  factory _$DailySwipeCardsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailySwipeCardsResponseImplFromJson(json);

  @override
  final String deckId;
  @override
  final DateTime generatedAt;
  @override
  final DateTime expiresAt;
  @override
  final int totalCount;
  @override
  final int remainingCount;
  @override
  final bool allViewed;
  final List<ProfileCardResponse> _cards;
  @override
  @JsonKey()
  List<ProfileCardResponse> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  String toString() {
    return 'DailySwipeCardsResponse(deckId: $deckId, generatedAt: $generatedAt, expiresAt: $expiresAt, totalCount: $totalCount, remainingCount: $remainingCount, allViewed: $allViewed, cards: $cards)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailySwipeCardsResponseImpl &&
            (identical(other.deckId, deckId) || other.deckId == deckId) &&
            (identical(other.generatedAt, generatedAt) ||
                other.generatedAt == generatedAt) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.remainingCount, remainingCount) ||
                other.remainingCount == remainingCount) &&
            (identical(other.allViewed, allViewed) ||
                other.allViewed == allViewed) &&
            const DeepCollectionEquality().equals(other._cards, _cards));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    deckId,
    generatedAt,
    expiresAt,
    totalCount,
    remainingCount,
    allViewed,
    const DeepCollectionEquality().hash(_cards),
  );

  /// Create a copy of DailySwipeCardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailySwipeCardsResponseImplCopyWith<_$DailySwipeCardsResponseImpl>
  get copyWith =>
      __$$DailySwipeCardsResponseImplCopyWithImpl<
        _$DailySwipeCardsResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailySwipeCardsResponseImplToJson(this);
  }
}

abstract class _DailySwipeCardsResponse implements DailySwipeCardsResponse {
  const factory _DailySwipeCardsResponse({
    required final String deckId,
    required final DateTime generatedAt,
    required final DateTime expiresAt,
    required final int totalCount,
    required final int remainingCount,
    required final bool allViewed,
    final List<ProfileCardResponse> cards,
  }) = _$DailySwipeCardsResponseImpl;

  factory _DailySwipeCardsResponse.fromJson(Map<String, dynamic> json) =
      _$DailySwipeCardsResponseImpl.fromJson;

  @override
  String get deckId;
  @override
  DateTime get generatedAt;
  @override
  DateTime get expiresAt;
  @override
  int get totalCount;
  @override
  int get remainingCount;
  @override
  bool get allViewed;
  @override
  List<ProfileCardResponse> get cards;

  /// Create a copy of DailySwipeCardsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailySwipeCardsResponseImplCopyWith<_$DailySwipeCardsResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

UndoSwipeResultResponse _$UndoSwipeResultResponseFromJson(
  Map<String, dynamic> json,
) {
  return _UndoSwipeResultResponse.fromJson(json);
}

/// @nodoc
mixin _$UndoSwipeResultResponse {
  int get undoneTargetUserId => throw _privateConstructorUsedError;
  SwipeAction get restoredAction => throw _privateConstructorUsedError;
  DateTime get undoneAt => throw _privateConstructorUsedError;
  bool get matchDissolved => throw _privateConstructorUsedError;
  ProfileCardResponse? get restoredCard => throw _privateConstructorUsedError;

  /// Serializes this UndoSwipeResultResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UndoSwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UndoSwipeResultResponseCopyWith<UndoSwipeResultResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UndoSwipeResultResponseCopyWith<$Res> {
  factory $UndoSwipeResultResponseCopyWith(
    UndoSwipeResultResponse value,
    $Res Function(UndoSwipeResultResponse) then,
  ) = _$UndoSwipeResultResponseCopyWithImpl<$Res, UndoSwipeResultResponse>;
  @useResult
  $Res call({
    int undoneTargetUserId,
    SwipeAction restoredAction,
    DateTime undoneAt,
    bool matchDissolved,
    ProfileCardResponse? restoredCard,
  });

  $ProfileCardResponseCopyWith<$Res>? get restoredCard;
}

/// @nodoc
class _$UndoSwipeResultResponseCopyWithImpl<
  $Res,
  $Val extends UndoSwipeResultResponse
>
    implements $UndoSwipeResultResponseCopyWith<$Res> {
  _$UndoSwipeResultResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UndoSwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? undoneTargetUserId = null,
    Object? restoredAction = null,
    Object? undoneAt = null,
    Object? matchDissolved = null,
    Object? restoredCard = freezed,
  }) {
    return _then(
      _value.copyWith(
            undoneTargetUserId: null == undoneTargetUserId
                ? _value.undoneTargetUserId
                : undoneTargetUserId // ignore: cast_nullable_to_non_nullable
                      as int,
            restoredAction: null == restoredAction
                ? _value.restoredAction
                : restoredAction // ignore: cast_nullable_to_non_nullable
                      as SwipeAction,
            undoneAt: null == undoneAt
                ? _value.undoneAt
                : undoneAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            matchDissolved: null == matchDissolved
                ? _value.matchDissolved
                : matchDissolved // ignore: cast_nullable_to_non_nullable
                      as bool,
            restoredCard: freezed == restoredCard
                ? _value.restoredCard
                : restoredCard // ignore: cast_nullable_to_non_nullable
                      as ProfileCardResponse?,
          )
          as $Val,
    );
  }

  /// Create a copy of UndoSwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCardResponseCopyWith<$Res>? get restoredCard {
    if (_value.restoredCard == null) {
      return null;
    }

    return $ProfileCardResponseCopyWith<$Res>(_value.restoredCard!, (value) {
      return _then(_value.copyWith(restoredCard: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UndoSwipeResultResponseImplCopyWith<$Res>
    implements $UndoSwipeResultResponseCopyWith<$Res> {
  factory _$$UndoSwipeResultResponseImplCopyWith(
    _$UndoSwipeResultResponseImpl value,
    $Res Function(_$UndoSwipeResultResponseImpl) then,
  ) = __$$UndoSwipeResultResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int undoneTargetUserId,
    SwipeAction restoredAction,
    DateTime undoneAt,
    bool matchDissolved,
    ProfileCardResponse? restoredCard,
  });

  @override
  $ProfileCardResponseCopyWith<$Res>? get restoredCard;
}

/// @nodoc
class __$$UndoSwipeResultResponseImplCopyWithImpl<$Res>
    extends
        _$UndoSwipeResultResponseCopyWithImpl<
          $Res,
          _$UndoSwipeResultResponseImpl
        >
    implements _$$UndoSwipeResultResponseImplCopyWith<$Res> {
  __$$UndoSwipeResultResponseImplCopyWithImpl(
    _$UndoSwipeResultResponseImpl _value,
    $Res Function(_$UndoSwipeResultResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UndoSwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? undoneTargetUserId = null,
    Object? restoredAction = null,
    Object? undoneAt = null,
    Object? matchDissolved = null,
    Object? restoredCard = freezed,
  }) {
    return _then(
      _$UndoSwipeResultResponseImpl(
        undoneTargetUserId: null == undoneTargetUserId
            ? _value.undoneTargetUserId
            : undoneTargetUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        restoredAction: null == restoredAction
            ? _value.restoredAction
            : restoredAction // ignore: cast_nullable_to_non_nullable
                  as SwipeAction,
        undoneAt: null == undoneAt
            ? _value.undoneAt
            : undoneAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        matchDissolved: null == matchDissolved
            ? _value.matchDissolved
            : matchDissolved // ignore: cast_nullable_to_non_nullable
                  as bool,
        restoredCard: freezed == restoredCard
            ? _value.restoredCard
            : restoredCard // ignore: cast_nullable_to_non_nullable
                  as ProfileCardResponse?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UndoSwipeResultResponseImpl implements _UndoSwipeResultResponse {
  const _$UndoSwipeResultResponseImpl({
    required this.undoneTargetUserId,
    required this.restoredAction,
    required this.undoneAt,
    this.matchDissolved = false,
    this.restoredCard,
  });

  factory _$UndoSwipeResultResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UndoSwipeResultResponseImplFromJson(json);

  @override
  final int undoneTargetUserId;
  @override
  final SwipeAction restoredAction;
  @override
  final DateTime undoneAt;
  @override
  @JsonKey()
  final bool matchDissolved;
  @override
  final ProfileCardResponse? restoredCard;

  @override
  String toString() {
    return 'UndoSwipeResultResponse(undoneTargetUserId: $undoneTargetUserId, restoredAction: $restoredAction, undoneAt: $undoneAt, matchDissolved: $matchDissolved, restoredCard: $restoredCard)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UndoSwipeResultResponseImpl &&
            (identical(other.undoneTargetUserId, undoneTargetUserId) ||
                other.undoneTargetUserId == undoneTargetUserId) &&
            (identical(other.restoredAction, restoredAction) ||
                other.restoredAction == restoredAction) &&
            (identical(other.undoneAt, undoneAt) ||
                other.undoneAt == undoneAt) &&
            (identical(other.matchDissolved, matchDissolved) ||
                other.matchDissolved == matchDissolved) &&
            (identical(other.restoredCard, restoredCard) ||
                other.restoredCard == restoredCard));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    undoneTargetUserId,
    restoredAction,
    undoneAt,
    matchDissolved,
    restoredCard,
  );

  /// Create a copy of UndoSwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UndoSwipeResultResponseImplCopyWith<_$UndoSwipeResultResponseImpl>
  get copyWith =>
      __$$UndoSwipeResultResponseImplCopyWithImpl<
        _$UndoSwipeResultResponseImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UndoSwipeResultResponseImplToJson(this);
  }
}

abstract class _UndoSwipeResultResponse implements UndoSwipeResultResponse {
  const factory _UndoSwipeResultResponse({
    required final int undoneTargetUserId,
    required final SwipeAction restoredAction,
    required final DateTime undoneAt,
    final bool matchDissolved,
    final ProfileCardResponse? restoredCard,
  }) = _$UndoSwipeResultResponseImpl;

  factory _UndoSwipeResultResponse.fromJson(Map<String, dynamic> json) =
      _$UndoSwipeResultResponseImpl.fromJson;

  @override
  int get undoneTargetUserId;
  @override
  SwipeAction get restoredAction;
  @override
  DateTime get undoneAt;
  @override
  bool get matchDissolved;
  @override
  ProfileCardResponse? get restoredCard;

  /// Create a copy of UndoSwipeResultResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UndoSwipeResultResponseImplCopyWith<_$UndoSwipeResultResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

SwipePreferences _$SwipePreferencesFromJson(Map<String, dynamic> json) {
  return _SwipePreferences.fromJson(json);
}

/// @nodoc
mixin _$SwipePreferences {
  int get ageMin => throw _privateConstructorUsedError;
  int get ageMax => throw _privateConstructorUsedError;
  int get distanceKm => throw _privateConstructorUsedError;
  List<Gender>? get genders => throw _privateConstructorUsedError;
  List<MaritalStatus>? get maritalStatuses =>
      throw _privateConstructorUsedError;
  List<RelationshipIntent>? get relationshipIntents =>
      throw _privateConstructorUsedError;

  /// Serializes this SwipePreferences to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SwipePreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwipePreferencesCopyWith<SwipePreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwipePreferencesCopyWith<$Res> {
  factory $SwipePreferencesCopyWith(
    SwipePreferences value,
    $Res Function(SwipePreferences) then,
  ) = _$SwipePreferencesCopyWithImpl<$Res, SwipePreferences>;
  @useResult
  $Res call({
    int ageMin,
    int ageMax,
    int distanceKm,
    List<Gender>? genders,
    List<MaritalStatus>? maritalStatuses,
    List<RelationshipIntent>? relationshipIntents,
  });
}

/// @nodoc
class _$SwipePreferencesCopyWithImpl<$Res, $Val extends SwipePreferences>
    implements $SwipePreferencesCopyWith<$Res> {
  _$SwipePreferencesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwipePreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageMin = null,
    Object? ageMax = null,
    Object? distanceKm = null,
    Object? genders = freezed,
    Object? maritalStatuses = freezed,
    Object? relationshipIntents = freezed,
  }) {
    return _then(
      _value.copyWith(
            ageMin: null == ageMin
                ? _value.ageMin
                : ageMin // ignore: cast_nullable_to_non_nullable
                      as int,
            ageMax: null == ageMax
                ? _value.ageMax
                : ageMax // ignore: cast_nullable_to_non_nullable
                      as int,
            distanceKm: null == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                      as int,
            genders: freezed == genders
                ? _value.genders
                : genders // ignore: cast_nullable_to_non_nullable
                      as List<Gender>?,
            maritalStatuses: freezed == maritalStatuses
                ? _value.maritalStatuses
                : maritalStatuses // ignore: cast_nullable_to_non_nullable
                      as List<MaritalStatus>?,
            relationshipIntents: freezed == relationshipIntents
                ? _value.relationshipIntents
                : relationshipIntents // ignore: cast_nullable_to_non_nullable
                      as List<RelationshipIntent>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SwipePreferencesImplCopyWith<$Res>
    implements $SwipePreferencesCopyWith<$Res> {
  factory _$$SwipePreferencesImplCopyWith(
    _$SwipePreferencesImpl value,
    $Res Function(_$SwipePreferencesImpl) then,
  ) = __$$SwipePreferencesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int ageMin,
    int ageMax,
    int distanceKm,
    List<Gender>? genders,
    List<MaritalStatus>? maritalStatuses,
    List<RelationshipIntent>? relationshipIntents,
  });
}

/// @nodoc
class __$$SwipePreferencesImplCopyWithImpl<$Res>
    extends _$SwipePreferencesCopyWithImpl<$Res, _$SwipePreferencesImpl>
    implements _$$SwipePreferencesImplCopyWith<$Res> {
  __$$SwipePreferencesImplCopyWithImpl(
    _$SwipePreferencesImpl _value,
    $Res Function(_$SwipePreferencesImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SwipePreferences
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageMin = null,
    Object? ageMax = null,
    Object? distanceKm = null,
    Object? genders = freezed,
    Object? maritalStatuses = freezed,
    Object? relationshipIntents = freezed,
  }) {
    return _then(
      _$SwipePreferencesImpl(
        ageMin: null == ageMin
            ? _value.ageMin
            : ageMin // ignore: cast_nullable_to_non_nullable
                  as int,
        ageMax: null == ageMax
            ? _value.ageMax
            : ageMax // ignore: cast_nullable_to_non_nullable
                  as int,
        distanceKm: null == distanceKm
            ? _value.distanceKm
            : distanceKm // ignore: cast_nullable_to_non_nullable
                  as int,
        genders: freezed == genders
            ? _value._genders
            : genders // ignore: cast_nullable_to_non_nullable
                  as List<Gender>?,
        maritalStatuses: freezed == maritalStatuses
            ? _value._maritalStatuses
            : maritalStatuses // ignore: cast_nullable_to_non_nullable
                  as List<MaritalStatus>?,
        relationshipIntents: freezed == relationshipIntents
            ? _value._relationshipIntents
            : relationshipIntents // ignore: cast_nullable_to_non_nullable
                  as List<RelationshipIntent>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SwipePreferencesImpl implements _SwipePreferences {
  const _$SwipePreferencesImpl({
    required this.ageMin,
    required this.ageMax,
    required this.distanceKm,
    final List<Gender>? genders,
    final List<MaritalStatus>? maritalStatuses,
    final List<RelationshipIntent>? relationshipIntents,
  }) : _genders = genders,
       _maritalStatuses = maritalStatuses,
       _relationshipIntents = relationshipIntents;

  factory _$SwipePreferencesImpl.fromJson(Map<String, dynamic> json) =>
      _$$SwipePreferencesImplFromJson(json);

  @override
  final int ageMin;
  @override
  final int ageMax;
  @override
  final int distanceKm;
  final List<Gender>? _genders;
  @override
  List<Gender>? get genders {
    final value = _genders;
    if (value == null) return null;
    if (_genders is EqualUnmodifiableListView) return _genders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MaritalStatus>? _maritalStatuses;
  @override
  List<MaritalStatus>? get maritalStatuses {
    final value = _maritalStatuses;
    if (value == null) return null;
    if (_maritalStatuses is EqualUnmodifiableListView) return _maritalStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelationshipIntent>? _relationshipIntents;
  @override
  List<RelationshipIntent>? get relationshipIntents {
    final value = _relationshipIntents;
    if (value == null) return null;
    if (_relationshipIntents is EqualUnmodifiableListView)
      return _relationshipIntents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SwipePreferences(ageMin: $ageMin, ageMax: $ageMax, distanceKm: $distanceKm, genders: $genders, maritalStatuses: $maritalStatuses, relationshipIntents: $relationshipIntents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwipePreferencesImpl &&
            (identical(other.ageMin, ageMin) || other.ageMin == ageMin) &&
            (identical(other.ageMax, ageMax) || other.ageMax == ageMax) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            const DeepCollectionEquality().equals(other._genders, _genders) &&
            const DeepCollectionEquality().equals(
              other._maritalStatuses,
              _maritalStatuses,
            ) &&
            const DeepCollectionEquality().equals(
              other._relationshipIntents,
              _relationshipIntents,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ageMin,
    ageMax,
    distanceKm,
    const DeepCollectionEquality().hash(_genders),
    const DeepCollectionEquality().hash(_maritalStatuses),
    const DeepCollectionEquality().hash(_relationshipIntents),
  );

  /// Create a copy of SwipePreferences
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwipePreferencesImplCopyWith<_$SwipePreferencesImpl> get copyWith =>
      __$$SwipePreferencesImplCopyWithImpl<_$SwipePreferencesImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SwipePreferencesImplToJson(this);
  }
}

abstract class _SwipePreferences implements SwipePreferences {
  const factory _SwipePreferences({
    required final int ageMin,
    required final int ageMax,
    required final int distanceKm,
    final List<Gender>? genders,
    final List<MaritalStatus>? maritalStatuses,
    final List<RelationshipIntent>? relationshipIntents,
  }) = _$SwipePreferencesImpl;

  factory _SwipePreferences.fromJson(Map<String, dynamic> json) =
      _$SwipePreferencesImpl.fromJson;

  @override
  int get ageMin;
  @override
  int get ageMax;
  @override
  int get distanceKm;
  @override
  List<Gender>? get genders;
  @override
  List<MaritalStatus>? get maritalStatuses;
  @override
  List<RelationshipIntent>? get relationshipIntents;

  /// Create a copy of SwipePreferences
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwipePreferencesImplCopyWith<_$SwipePreferencesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateSwipePreferencesRequest _$UpdateSwipePreferencesRequestFromJson(
  Map<String, dynamic> json,
) {
  return _UpdateSwipePreferencesRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateSwipePreferencesRequest {
  int get ageMin => throw _privateConstructorUsedError;
  int get ageMax => throw _privateConstructorUsedError;
  int get distanceKm => throw _privateConstructorUsedError;
  List<Gender>? get genders => throw _privateConstructorUsedError;
  List<MaritalStatus>? get maritalStatuses =>
      throw _privateConstructorUsedError;
  List<RelationshipIntent>? get relationshipIntents =>
      throw _privateConstructorUsedError;

  /// Serializes this UpdateSwipePreferencesRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateSwipePreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateSwipePreferencesRequestCopyWith<UpdateSwipePreferencesRequest>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateSwipePreferencesRequestCopyWith<$Res> {
  factory $UpdateSwipePreferencesRequestCopyWith(
    UpdateSwipePreferencesRequest value,
    $Res Function(UpdateSwipePreferencesRequest) then,
  ) =
      _$UpdateSwipePreferencesRequestCopyWithImpl<
        $Res,
        UpdateSwipePreferencesRequest
      >;
  @useResult
  $Res call({
    int ageMin,
    int ageMax,
    int distanceKm,
    List<Gender>? genders,
    List<MaritalStatus>? maritalStatuses,
    List<RelationshipIntent>? relationshipIntents,
  });
}

/// @nodoc
class _$UpdateSwipePreferencesRequestCopyWithImpl<
  $Res,
  $Val extends UpdateSwipePreferencesRequest
>
    implements $UpdateSwipePreferencesRequestCopyWith<$Res> {
  _$UpdateSwipePreferencesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateSwipePreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageMin = null,
    Object? ageMax = null,
    Object? distanceKm = null,
    Object? genders = freezed,
    Object? maritalStatuses = freezed,
    Object? relationshipIntents = freezed,
  }) {
    return _then(
      _value.copyWith(
            ageMin: null == ageMin
                ? _value.ageMin
                : ageMin // ignore: cast_nullable_to_non_nullable
                      as int,
            ageMax: null == ageMax
                ? _value.ageMax
                : ageMax // ignore: cast_nullable_to_non_nullable
                      as int,
            distanceKm: null == distanceKm
                ? _value.distanceKm
                : distanceKm // ignore: cast_nullable_to_non_nullable
                      as int,
            genders: freezed == genders
                ? _value.genders
                : genders // ignore: cast_nullable_to_non_nullable
                      as List<Gender>?,
            maritalStatuses: freezed == maritalStatuses
                ? _value.maritalStatuses
                : maritalStatuses // ignore: cast_nullable_to_non_nullable
                      as List<MaritalStatus>?,
            relationshipIntents: freezed == relationshipIntents
                ? _value.relationshipIntents
                : relationshipIntents // ignore: cast_nullable_to_non_nullable
                      as List<RelationshipIntent>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$UpdateSwipePreferencesRequestImplCopyWith<$Res>
    implements $UpdateSwipePreferencesRequestCopyWith<$Res> {
  factory _$$UpdateSwipePreferencesRequestImplCopyWith(
    _$UpdateSwipePreferencesRequestImpl value,
    $Res Function(_$UpdateSwipePreferencesRequestImpl) then,
  ) = __$$UpdateSwipePreferencesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int ageMin,
    int ageMax,
    int distanceKm,
    List<Gender>? genders,
    List<MaritalStatus>? maritalStatuses,
    List<RelationshipIntent>? relationshipIntents,
  });
}

/// @nodoc
class __$$UpdateSwipePreferencesRequestImplCopyWithImpl<$Res>
    extends
        _$UpdateSwipePreferencesRequestCopyWithImpl<
          $Res,
          _$UpdateSwipePreferencesRequestImpl
        >
    implements _$$UpdateSwipePreferencesRequestImplCopyWith<$Res> {
  __$$UpdateSwipePreferencesRequestImplCopyWithImpl(
    _$UpdateSwipePreferencesRequestImpl _value,
    $Res Function(_$UpdateSwipePreferencesRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of UpdateSwipePreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ageMin = null,
    Object? ageMax = null,
    Object? distanceKm = null,
    Object? genders = freezed,
    Object? maritalStatuses = freezed,
    Object? relationshipIntents = freezed,
  }) {
    return _then(
      _$UpdateSwipePreferencesRequestImpl(
        ageMin: null == ageMin
            ? _value.ageMin
            : ageMin // ignore: cast_nullable_to_non_nullable
                  as int,
        ageMax: null == ageMax
            ? _value.ageMax
            : ageMax // ignore: cast_nullable_to_non_nullable
                  as int,
        distanceKm: null == distanceKm
            ? _value.distanceKm
            : distanceKm // ignore: cast_nullable_to_non_nullable
                  as int,
        genders: freezed == genders
            ? _value._genders
            : genders // ignore: cast_nullable_to_non_nullable
                  as List<Gender>?,
        maritalStatuses: freezed == maritalStatuses
            ? _value._maritalStatuses
            : maritalStatuses // ignore: cast_nullable_to_non_nullable
                  as List<MaritalStatus>?,
        relationshipIntents: freezed == relationshipIntents
            ? _value._relationshipIntents
            : relationshipIntents // ignore: cast_nullable_to_non_nullable
                  as List<RelationshipIntent>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateSwipePreferencesRequestImpl
    implements _UpdateSwipePreferencesRequest {
  const _$UpdateSwipePreferencesRequestImpl({
    required this.ageMin,
    required this.ageMax,
    required this.distanceKm,
    final List<Gender>? genders,
    final List<MaritalStatus>? maritalStatuses,
    final List<RelationshipIntent>? relationshipIntents,
  }) : _genders = genders,
       _maritalStatuses = maritalStatuses,
       _relationshipIntents = relationshipIntents;

  factory _$UpdateSwipePreferencesRequestImpl.fromJson(
    Map<String, dynamic> json,
  ) => _$$UpdateSwipePreferencesRequestImplFromJson(json);

  @override
  final int ageMin;
  @override
  final int ageMax;
  @override
  final int distanceKm;
  final List<Gender>? _genders;
  @override
  List<Gender>? get genders {
    final value = _genders;
    if (value == null) return null;
    if (_genders is EqualUnmodifiableListView) return _genders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MaritalStatus>? _maritalStatuses;
  @override
  List<MaritalStatus>? get maritalStatuses {
    final value = _maritalStatuses;
    if (value == null) return null;
    if (_maritalStatuses is EqualUnmodifiableListView) return _maritalStatuses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RelationshipIntent>? _relationshipIntents;
  @override
  List<RelationshipIntent>? get relationshipIntents {
    final value = _relationshipIntents;
    if (value == null) return null;
    if (_relationshipIntents is EqualUnmodifiableListView)
      return _relationshipIntents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateSwipePreferencesRequest(ageMin: $ageMin, ageMax: $ageMax, distanceKm: $distanceKm, genders: $genders, maritalStatuses: $maritalStatuses, relationshipIntents: $relationshipIntents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSwipePreferencesRequestImpl &&
            (identical(other.ageMin, ageMin) || other.ageMin == ageMin) &&
            (identical(other.ageMax, ageMax) || other.ageMax == ageMax) &&
            (identical(other.distanceKm, distanceKm) ||
                other.distanceKm == distanceKm) &&
            const DeepCollectionEquality().equals(other._genders, _genders) &&
            const DeepCollectionEquality().equals(
              other._maritalStatuses,
              _maritalStatuses,
            ) &&
            const DeepCollectionEquality().equals(
              other._relationshipIntents,
              _relationshipIntents,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    ageMin,
    ageMax,
    distanceKm,
    const DeepCollectionEquality().hash(_genders),
    const DeepCollectionEquality().hash(_maritalStatuses),
    const DeepCollectionEquality().hash(_relationshipIntents),
  );

  /// Create a copy of UpdateSwipePreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSwipePreferencesRequestImplCopyWith<
    _$UpdateSwipePreferencesRequestImpl
  >
  get copyWith =>
      __$$UpdateSwipePreferencesRequestImplCopyWithImpl<
        _$UpdateSwipePreferencesRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateSwipePreferencesRequestImplToJson(this);
  }
}

abstract class _UpdateSwipePreferencesRequest
    implements UpdateSwipePreferencesRequest {
  const factory _UpdateSwipePreferencesRequest({
    required final int ageMin,
    required final int ageMax,
    required final int distanceKm,
    final List<Gender>? genders,
    final List<MaritalStatus>? maritalStatuses,
    final List<RelationshipIntent>? relationshipIntents,
  }) = _$UpdateSwipePreferencesRequestImpl;

  factory _UpdateSwipePreferencesRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateSwipePreferencesRequestImpl.fromJson;

  @override
  int get ageMin;
  @override
  int get ageMax;
  @override
  int get distanceKm;
  @override
  List<Gender>? get genders;
  @override
  List<MaritalStatus>? get maritalStatuses;
  @override
  List<RelationshipIntent>? get relationshipIntents;

  /// Create a copy of UpdateSwipePreferencesRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSwipePreferencesRequestImplCopyWith<
    _$UpdateSwipePreferencesRequestImpl
  >
  get copyWith => throw _privateConstructorUsedError;
}
