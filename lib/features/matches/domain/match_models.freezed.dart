// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MatchResponse _$MatchResponseFromJson(Map<String, dynamic> json) {
  return _MatchResponse.fromJson(json);
}

/// @nodoc
mixin _$MatchResponse {
  int get id => throw _privateConstructorUsedError;
  DateTime get matchedAt => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  MatchStatus get status => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  ProfileCardResponse get matchedUser => throw _privateConstructorUsedError;
  int? get chatRoomId => throw _privateConstructorUsedError;
  String? get lastMessagePreview => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;

  /// Serializes this MatchResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchResponseCopyWith<MatchResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchResponseCopyWith<$Res> {
  factory $MatchResponseCopyWith(
    MatchResponse value,
    $Res Function(MatchResponse) then,
  ) = _$MatchResponseCopyWithImpl<$Res, MatchResponse>;
  @useResult
  $Res call({
    int id,
    DateTime matchedAt,
    DateTime? createdAt,
    MatchStatus status,
    DateTime? endedAt,
    ProfileCardResponse matchedUser,
    int? chatRoomId,
    String? lastMessagePreview,
    DateTime? lastMessageAt,
    int unreadCount,
  });

  $ProfileCardResponseCopyWith<$Res> get matchedUser;
}

/// @nodoc
class _$MatchResponseCopyWithImpl<$Res, $Val extends MatchResponse>
    implements $MatchResponseCopyWith<$Res> {
  _$MatchResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchedAt = null,
    Object? createdAt = freezed,
    Object? status = null,
    Object? endedAt = freezed,
    Object? matchedUser = null,
    Object? chatRoomId = freezed,
    Object? lastMessagePreview = freezed,
    Object? lastMessageAt = freezed,
    Object? unreadCount = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            matchedAt: null == matchedAt
                ? _value.matchedAt
                : matchedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as MatchStatus,
            endedAt: freezed == endedAt
                ? _value.endedAt
                : endedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            matchedUser: null == matchedUser
                ? _value.matchedUser
                : matchedUser // ignore: cast_nullable_to_non_nullable
                      as ProfileCardResponse,
            chatRoomId: freezed == chatRoomId
                ? _value.chatRoomId
                : chatRoomId // ignore: cast_nullable_to_non_nullable
                      as int?,
            lastMessagePreview: freezed == lastMessagePreview
                ? _value.lastMessagePreview
                : lastMessagePreview // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastMessageAt: freezed == lastMessageAt
                ? _value.lastMessageAt
                : lastMessageAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            unreadCount: null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCardResponseCopyWith<$Res> get matchedUser {
    return $ProfileCardResponseCopyWith<$Res>(_value.matchedUser, (value) {
      return _then(_value.copyWith(matchedUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MatchResponseImplCopyWith<$Res>
    implements $MatchResponseCopyWith<$Res> {
  factory _$$MatchResponseImplCopyWith(
    _$MatchResponseImpl value,
    $Res Function(_$MatchResponseImpl) then,
  ) = __$$MatchResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    DateTime matchedAt,
    DateTime? createdAt,
    MatchStatus status,
    DateTime? endedAt,
    ProfileCardResponse matchedUser,
    int? chatRoomId,
    String? lastMessagePreview,
    DateTime? lastMessageAt,
    int unreadCount,
  });

  @override
  $ProfileCardResponseCopyWith<$Res> get matchedUser;
}

/// @nodoc
class __$$MatchResponseImplCopyWithImpl<$Res>
    extends _$MatchResponseCopyWithImpl<$Res, _$MatchResponseImpl>
    implements _$$MatchResponseImplCopyWith<$Res> {
  __$$MatchResponseImplCopyWithImpl(
    _$MatchResponseImpl _value,
    $Res Function(_$MatchResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchedAt = null,
    Object? createdAt = freezed,
    Object? status = null,
    Object? endedAt = freezed,
    Object? matchedUser = null,
    Object? chatRoomId = freezed,
    Object? lastMessagePreview = freezed,
    Object? lastMessageAt = freezed,
    Object? unreadCount = null,
  }) {
    return _then(
      _$MatchResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        matchedAt: null == matchedAt
            ? _value.matchedAt
            : matchedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as MatchStatus,
        endedAt: freezed == endedAt
            ? _value.endedAt
            : endedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        matchedUser: null == matchedUser
            ? _value.matchedUser
            : matchedUser // ignore: cast_nullable_to_non_nullable
                  as ProfileCardResponse,
        chatRoomId: freezed == chatRoomId
            ? _value.chatRoomId
            : chatRoomId // ignore: cast_nullable_to_non_nullable
                  as int?,
        lastMessagePreview: freezed == lastMessagePreview
            ? _value.lastMessagePreview
            : lastMessagePreview // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastMessageAt: freezed == lastMessageAt
            ? _value.lastMessageAt
            : lastMessageAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchResponseImpl implements _MatchResponse {
  const _$MatchResponseImpl({
    required this.id,
    required this.matchedAt,
    this.createdAt,
    required this.status,
    this.endedAt,
    required this.matchedUser,
    this.chatRoomId,
    this.lastMessagePreview,
    this.lastMessageAt,
    this.unreadCount = 0,
  });

  factory _$MatchResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchResponseImplFromJson(json);

  @override
  final int id;
  @override
  final DateTime matchedAt;
  @override
  final DateTime? createdAt;
  @override
  final MatchStatus status;
  @override
  final DateTime? endedAt;
  @override
  final ProfileCardResponse matchedUser;
  @override
  final int? chatRoomId;
  @override
  final String? lastMessagePreview;
  @override
  final DateTime? lastMessageAt;
  @override
  @JsonKey()
  final int unreadCount;

  @override
  String toString() {
    return 'MatchResponse(id: $id, matchedAt: $matchedAt, createdAt: $createdAt, status: $status, endedAt: $endedAt, matchedUser: $matchedUser, chatRoomId: $chatRoomId, lastMessagePreview: $lastMessagePreview, lastMessageAt: $lastMessageAt, unreadCount: $unreadCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matchedAt, matchedAt) ||
                other.matchedAt == matchedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.matchedUser, matchedUser) ||
                other.matchedUser == matchedUser) &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.lastMessagePreview, lastMessagePreview) ||
                other.lastMessagePreview == lastMessagePreview) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    matchedAt,
    createdAt,
    status,
    endedAt,
    matchedUser,
    chatRoomId,
    lastMessagePreview,
    lastMessageAt,
    unreadCount,
  );

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchResponseImplCopyWith<_$MatchResponseImpl> get copyWith =>
      __$$MatchResponseImplCopyWithImpl<_$MatchResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchResponseImplToJson(this);
  }
}

abstract class _MatchResponse implements MatchResponse {
  const factory _MatchResponse({
    required final int id,
    required final DateTime matchedAt,
    final DateTime? createdAt,
    required final MatchStatus status,
    final DateTime? endedAt,
    required final ProfileCardResponse matchedUser,
    final int? chatRoomId,
    final String? lastMessagePreview,
    final DateTime? lastMessageAt,
    final int unreadCount,
  }) = _$MatchResponseImpl;

  factory _MatchResponse.fromJson(Map<String, dynamic> json) =
      _$MatchResponseImpl.fromJson;

  @override
  int get id;
  @override
  DateTime get matchedAt;
  @override
  DateTime? get createdAt;
  @override
  MatchStatus get status;
  @override
  DateTime? get endedAt;
  @override
  ProfileCardResponse get matchedUser;
  @override
  int? get chatRoomId;
  @override
  String? get lastMessagePreview;
  @override
  DateTime? get lastMessageAt;
  @override
  int get unreadCount;

  /// Create a copy of MatchResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchResponseImplCopyWith<_$MatchResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchesPage _$MatchesPageFromJson(Map<String, dynamic> json) {
  return _MatchesPage.fromJson(json);
}

/// @nodoc
mixin _$MatchesPage {
  List<MatchResponse> get items => throw _privateConstructorUsedError;
  String? get nextCursor => throw _privateConstructorUsedError;

  /// Serializes this MatchesPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MatchesPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MatchesPageCopyWith<MatchesPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesPageCopyWith<$Res> {
  factory $MatchesPageCopyWith(
    MatchesPage value,
    $Res Function(MatchesPage) then,
  ) = _$MatchesPageCopyWithImpl<$Res, MatchesPage>;
  @useResult
  $Res call({List<MatchResponse> items, String? nextCursor});
}

/// @nodoc
class _$MatchesPageCopyWithImpl<$Res, $Val extends MatchesPage>
    implements $MatchesPageCopyWith<$Res> {
  _$MatchesPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MatchesPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? nextCursor = freezed}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<MatchResponse>,
            nextCursor: freezed == nextCursor
                ? _value.nextCursor
                : nextCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MatchesPageImplCopyWith<$Res>
    implements $MatchesPageCopyWith<$Res> {
  factory _$$MatchesPageImplCopyWith(
    _$MatchesPageImpl value,
    $Res Function(_$MatchesPageImpl) then,
  ) = __$$MatchesPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MatchResponse> items, String? nextCursor});
}

/// @nodoc
class __$$MatchesPageImplCopyWithImpl<$Res>
    extends _$MatchesPageCopyWithImpl<$Res, _$MatchesPageImpl>
    implements _$$MatchesPageImplCopyWith<$Res> {
  __$$MatchesPageImplCopyWithImpl(
    _$MatchesPageImpl _value,
    $Res Function(_$MatchesPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MatchesPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null, Object? nextCursor = freezed}) {
    return _then(
      _$MatchesPageImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<MatchResponse>,
        nextCursor: freezed == nextCursor
            ? _value.nextCursor
            : nextCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MatchesPageImpl implements _MatchesPage {
  const _$MatchesPageImpl({
    final List<MatchResponse> items = const <MatchResponse>[],
    this.nextCursor,
  }) : _items = items;

  factory _$MatchesPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$MatchesPageImplFromJson(json);

  final List<MatchResponse> _items;
  @override
  @JsonKey()
  List<MatchResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextCursor;

  @override
  String toString() {
    return 'MatchesPage(items: $items, nextCursor: $nextCursor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchesPageImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    nextCursor,
  );

  /// Create a copy of MatchesPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchesPageImplCopyWith<_$MatchesPageImpl> get copyWith =>
      __$$MatchesPageImplCopyWithImpl<_$MatchesPageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MatchesPageImplToJson(this);
  }
}

abstract class _MatchesPage implements MatchesPage {
  const factory _MatchesPage({
    final List<MatchResponse> items,
    final String? nextCursor,
  }) = _$MatchesPageImpl;

  factory _MatchesPage.fromJson(Map<String, dynamic> json) =
      _$MatchesPageImpl.fromJson;

  @override
  List<MatchResponse> get items;
  @override
  String? get nextCursor;

  /// Create a copy of MatchesPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MatchesPageImplCopyWith<_$MatchesPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
