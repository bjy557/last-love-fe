// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'safety_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreateReportRequest _$CreateReportRequestFromJson(Map<String, dynamic> json) {
  return _CreateReportRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateReportRequest {
  int get reportedUserId => throw _privateConstructorUsedError;
  ReportReason get reason => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get chatMessageId => throw _privateConstructorUsedError;

  /// Serializes this CreateReportRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateReportRequestCopyWith<CreateReportRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateReportRequestCopyWith<$Res> {
  factory $CreateReportRequestCopyWith(
    CreateReportRequest value,
    $Res Function(CreateReportRequest) then,
  ) = _$CreateReportRequestCopyWithImpl<$Res, CreateReportRequest>;
  @useResult
  $Res call({
    int reportedUserId,
    ReportReason reason,
    String? description,
    int? chatMessageId,
  });
}

/// @nodoc
class _$CreateReportRequestCopyWithImpl<$Res, $Val extends CreateReportRequest>
    implements $CreateReportRequestCopyWith<$Res> {
  _$CreateReportRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportedUserId = null,
    Object? reason = null,
    Object? description = freezed,
    Object? chatMessageId = freezed,
  }) {
    return _then(
      _value.copyWith(
            reportedUserId: null == reportedUserId
                ? _value.reportedUserId
                : reportedUserId // ignore: cast_nullable_to_non_nullable
                      as int,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as ReportReason,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            chatMessageId: freezed == chatMessageId
                ? _value.chatMessageId
                : chatMessageId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreateReportRequestImplCopyWith<$Res>
    implements $CreateReportRequestCopyWith<$Res> {
  factory _$$CreateReportRequestImplCopyWith(
    _$CreateReportRequestImpl value,
    $Res Function(_$CreateReportRequestImpl) then,
  ) = __$$CreateReportRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int reportedUserId,
    ReportReason reason,
    String? description,
    int? chatMessageId,
  });
}

/// @nodoc
class __$$CreateReportRequestImplCopyWithImpl<$Res>
    extends _$CreateReportRequestCopyWithImpl<$Res, _$CreateReportRequestImpl>
    implements _$$CreateReportRequestImplCopyWith<$Res> {
  __$$CreateReportRequestImplCopyWithImpl(
    _$CreateReportRequestImpl _value,
    $Res Function(_$CreateReportRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reportedUserId = null,
    Object? reason = null,
    Object? description = freezed,
    Object? chatMessageId = freezed,
  }) {
    return _then(
      _$CreateReportRequestImpl(
        reportedUserId: null == reportedUserId
            ? _value.reportedUserId
            : reportedUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as ReportReason,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        chatMessageId: freezed == chatMessageId
            ? _value.chatMessageId
            : chatMessageId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateReportRequestImpl implements _CreateReportRequest {
  const _$CreateReportRequestImpl({
    required this.reportedUserId,
    required this.reason,
    this.description,
    this.chatMessageId,
  });

  factory _$CreateReportRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateReportRequestImplFromJson(json);

  @override
  final int reportedUserId;
  @override
  final ReportReason reason;
  @override
  final String? description;
  @override
  final int? chatMessageId;

  @override
  String toString() {
    return 'CreateReportRequest(reportedUserId: $reportedUserId, reason: $reason, description: $description, chatMessageId: $chatMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateReportRequestImpl &&
            (identical(other.reportedUserId, reportedUserId) ||
                other.reportedUserId == reportedUserId) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.chatMessageId, chatMessageId) ||
                other.chatMessageId == chatMessageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    reportedUserId,
    reason,
    description,
    chatMessageId,
  );

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateReportRequestImplCopyWith<_$CreateReportRequestImpl> get copyWith =>
      __$$CreateReportRequestImplCopyWithImpl<_$CreateReportRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateReportRequestImplToJson(this);
  }
}

abstract class _CreateReportRequest implements CreateReportRequest {
  const factory _CreateReportRequest({
    required final int reportedUserId,
    required final ReportReason reason,
    final String? description,
    final int? chatMessageId,
  }) = _$CreateReportRequestImpl;

  factory _CreateReportRequest.fromJson(Map<String, dynamic> json) =
      _$CreateReportRequestImpl.fromJson;

  @override
  int get reportedUserId;
  @override
  ReportReason get reason;
  @override
  String? get description;
  @override
  int? get chatMessageId;

  /// Create a copy of CreateReportRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateReportRequestImplCopyWith<_$CreateReportRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReportResponse _$ReportResponseFromJson(Map<String, dynamic> json) {
  return _ReportResponse.fromJson(json);
}

/// @nodoc
mixin _$ReportResponse {
  int get id => throw _privateConstructorUsedError;
  ReportReason get reason => throw _privateConstructorUsedError;
  ReportStatus get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get chatMessageId => throw _privateConstructorUsedError;

  /// Serializes this ReportResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReportResponseCopyWith<ReportResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReportResponseCopyWith<$Res> {
  factory $ReportResponseCopyWith(
    ReportResponse value,
    $Res Function(ReportResponse) then,
  ) = _$ReportResponseCopyWithImpl<$Res, ReportResponse>;
  @useResult
  $Res call({
    int id,
    ReportReason reason,
    ReportStatus status,
    DateTime createdAt,
    String? description,
    int? chatMessageId,
  });
}

/// @nodoc
class _$ReportResponseCopyWithImpl<$Res, $Val extends ReportResponse>
    implements $ReportResponseCopyWith<$Res> {
  _$ReportResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reason = null,
    Object? status = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? chatMessageId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            reason: null == reason
                ? _value.reason
                : reason // ignore: cast_nullable_to_non_nullable
                      as ReportReason,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ReportStatus,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            description: freezed == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                      as String?,
            chatMessageId: freezed == chatMessageId
                ? _value.chatMessageId
                : chatMessageId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ReportResponseImplCopyWith<$Res>
    implements $ReportResponseCopyWith<$Res> {
  factory _$$ReportResponseImplCopyWith(
    _$ReportResponseImpl value,
    $Res Function(_$ReportResponseImpl) then,
  ) = __$$ReportResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    ReportReason reason,
    ReportStatus status,
    DateTime createdAt,
    String? description,
    int? chatMessageId,
  });
}

/// @nodoc
class __$$ReportResponseImplCopyWithImpl<$Res>
    extends _$ReportResponseCopyWithImpl<$Res, _$ReportResponseImpl>
    implements _$$ReportResponseImplCopyWith<$Res> {
  __$$ReportResponseImplCopyWithImpl(
    _$ReportResponseImpl _value,
    $Res Function(_$ReportResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? reason = null,
    Object? status = null,
    Object? createdAt = null,
    Object? description = freezed,
    Object? chatMessageId = freezed,
  }) {
    return _then(
      _$ReportResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        reason: null == reason
            ? _value.reason
            : reason // ignore: cast_nullable_to_non_nullable
                  as ReportReason,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ReportStatus,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        description: freezed == description
            ? _value.description
            : description // ignore: cast_nullable_to_non_nullable
                  as String?,
        chatMessageId: freezed == chatMessageId
            ? _value.chatMessageId
            : chatMessageId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ReportResponseImpl implements _ReportResponse {
  const _$ReportResponseImpl({
    required this.id,
    required this.reason,
    required this.status,
    required this.createdAt,
    this.description,
    this.chatMessageId,
  });

  factory _$ReportResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReportResponseImplFromJson(json);

  @override
  final int id;
  @override
  final ReportReason reason;
  @override
  final ReportStatus status;
  @override
  final DateTime createdAt;
  @override
  final String? description;
  @override
  final int? chatMessageId;

  @override
  String toString() {
    return 'ReportResponse(id: $id, reason: $reason, status: $status, createdAt: $createdAt, description: $description, chatMessageId: $chatMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReportResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.reason, reason) || other.reason == reason) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.chatMessageId, chatMessageId) ||
                other.chatMessageId == chatMessageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    reason,
    status,
    createdAt,
    description,
    chatMessageId,
  );

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReportResponseImplCopyWith<_$ReportResponseImpl> get copyWith =>
      __$$ReportResponseImplCopyWithImpl<_$ReportResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ReportResponseImplToJson(this);
  }
}

abstract class _ReportResponse implements ReportResponse {
  const factory _ReportResponse({
    required final int id,
    required final ReportReason reason,
    required final ReportStatus status,
    required final DateTime createdAt,
    final String? description,
    final int? chatMessageId,
  }) = _$ReportResponseImpl;

  factory _ReportResponse.fromJson(Map<String, dynamic> json) =
      _$ReportResponseImpl.fromJson;

  @override
  int get id;
  @override
  ReportReason get reason;
  @override
  ReportStatus get status;
  @override
  DateTime get createdAt;
  @override
  String? get description;
  @override
  int? get chatMessageId;

  /// Create a copy of ReportResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReportResponseImplCopyWith<_$ReportResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockUserRequest _$BlockUserRequestFromJson(Map<String, dynamic> json) {
  return _BlockUserRequest.fromJson(json);
}

/// @nodoc
mixin _$BlockUserRequest {
  int get blockedUserId => throw _privateConstructorUsedError;

  /// Serializes this BlockUserRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlockUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockUserRequestCopyWith<BlockUserRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockUserRequestCopyWith<$Res> {
  factory $BlockUserRequestCopyWith(
    BlockUserRequest value,
    $Res Function(BlockUserRequest) then,
  ) = _$BlockUserRequestCopyWithImpl<$Res, BlockUserRequest>;
  @useResult
  $Res call({int blockedUserId});
}

/// @nodoc
class _$BlockUserRequestCopyWithImpl<$Res, $Val extends BlockUserRequest>
    implements $BlockUserRequestCopyWith<$Res> {
  _$BlockUserRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? blockedUserId = null}) {
    return _then(
      _value.copyWith(
            blockedUserId: null == blockedUserId
                ? _value.blockedUserId
                : blockedUserId // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BlockUserRequestImplCopyWith<$Res>
    implements $BlockUserRequestCopyWith<$Res> {
  factory _$$BlockUserRequestImplCopyWith(
    _$BlockUserRequestImpl value,
    $Res Function(_$BlockUserRequestImpl) then,
  ) = __$$BlockUserRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int blockedUserId});
}

/// @nodoc
class __$$BlockUserRequestImplCopyWithImpl<$Res>
    extends _$BlockUserRequestCopyWithImpl<$Res, _$BlockUserRequestImpl>
    implements _$$BlockUserRequestImplCopyWith<$Res> {
  __$$BlockUserRequestImplCopyWithImpl(
    _$BlockUserRequestImpl _value,
    $Res Function(_$BlockUserRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BlockUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? blockedUserId = null}) {
    return _then(
      _$BlockUserRequestImpl(
        blockedUserId: null == blockedUserId
            ? _value.blockedUserId
            : blockedUserId // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockUserRequestImpl implements _BlockUserRequest {
  const _$BlockUserRequestImpl({required this.blockedUserId});

  factory _$BlockUserRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockUserRequestImplFromJson(json);

  @override
  final int blockedUserId;

  @override
  String toString() {
    return 'BlockUserRequest(blockedUserId: $blockedUserId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockUserRequestImpl &&
            (identical(other.blockedUserId, blockedUserId) ||
                other.blockedUserId == blockedUserId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, blockedUserId);

  /// Create a copy of BlockUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockUserRequestImplCopyWith<_$BlockUserRequestImpl> get copyWith =>
      __$$BlockUserRequestImplCopyWithImpl<_$BlockUserRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockUserRequestImplToJson(this);
  }
}

abstract class _BlockUserRequest implements BlockUserRequest {
  const factory _BlockUserRequest({required final int blockedUserId}) =
      _$BlockUserRequestImpl;

  factory _BlockUserRequest.fromJson(Map<String, dynamic> json) =
      _$BlockUserRequestImpl.fromJson;

  @override
  int get blockedUserId;

  /// Create a copy of BlockUserRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockUserRequestImplCopyWith<_$BlockUserRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockResponse _$BlockResponseFromJson(Map<String, dynamic> json) {
  return _BlockResponse.fromJson(json);
}

/// @nodoc
mixin _$BlockResponse {
  int get id => throw _privateConstructorUsedError;
  int get blockedUserId => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String? get blockedUserDisplayName => throw _privateConstructorUsedError;
  BlockSource? get source => throw _privateConstructorUsedError;

  /// Serializes this BlockResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlockResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockResponseCopyWith<BlockResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockResponseCopyWith<$Res> {
  factory $BlockResponseCopyWith(
    BlockResponse value,
    $Res Function(BlockResponse) then,
  ) = _$BlockResponseCopyWithImpl<$Res, BlockResponse>;
  @useResult
  $Res call({
    int id,
    int blockedUserId,
    DateTime createdAt,
    String? blockedUserDisplayName,
    BlockSource? source,
  });
}

/// @nodoc
class _$BlockResponseCopyWithImpl<$Res, $Val extends BlockResponse>
    implements $BlockResponseCopyWith<$Res> {
  _$BlockResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blockedUserId = null,
    Object? createdAt = null,
    Object? blockedUserDisplayName = freezed,
    Object? source = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            blockedUserId: null == blockedUserId
                ? _value.blockedUserId
                : blockedUserId // ignore: cast_nullable_to_non_nullable
                      as int,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            blockedUserDisplayName: freezed == blockedUserDisplayName
                ? _value.blockedUserDisplayName
                : blockedUserDisplayName // ignore: cast_nullable_to_non_nullable
                      as String?,
            source: freezed == source
                ? _value.source
                : source // ignore: cast_nullable_to_non_nullable
                      as BlockSource?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BlockResponseImplCopyWith<$Res>
    implements $BlockResponseCopyWith<$Res> {
  factory _$$BlockResponseImplCopyWith(
    _$BlockResponseImpl value,
    $Res Function(_$BlockResponseImpl) then,
  ) = __$$BlockResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int blockedUserId,
    DateTime createdAt,
    String? blockedUserDisplayName,
    BlockSource? source,
  });
}

/// @nodoc
class __$$BlockResponseImplCopyWithImpl<$Res>
    extends _$BlockResponseCopyWithImpl<$Res, _$BlockResponseImpl>
    implements _$$BlockResponseImplCopyWith<$Res> {
  __$$BlockResponseImplCopyWithImpl(
    _$BlockResponseImpl _value,
    $Res Function(_$BlockResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BlockResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? blockedUserId = null,
    Object? createdAt = null,
    Object? blockedUserDisplayName = freezed,
    Object? source = freezed,
  }) {
    return _then(
      _$BlockResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        blockedUserId: null == blockedUserId
            ? _value.blockedUserId
            : blockedUserId // ignore: cast_nullable_to_non_nullable
                  as int,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        blockedUserDisplayName: freezed == blockedUserDisplayName
            ? _value.blockedUserDisplayName
            : blockedUserDisplayName // ignore: cast_nullable_to_non_nullable
                  as String?,
        source: freezed == source
            ? _value.source
            : source // ignore: cast_nullable_to_non_nullable
                  as BlockSource?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockResponseImpl implements _BlockResponse {
  const _$BlockResponseImpl({
    required this.id,
    required this.blockedUserId,
    required this.createdAt,
    this.blockedUserDisplayName,
    this.source,
  });

  factory _$BlockResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int blockedUserId;
  @override
  final DateTime createdAt;
  @override
  final String? blockedUserDisplayName;
  @override
  final BlockSource? source;

  @override
  String toString() {
    return 'BlockResponse(id: $id, blockedUserId: $blockedUserId, createdAt: $createdAt, blockedUserDisplayName: $blockedUserDisplayName, source: $source)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.blockedUserId, blockedUserId) ||
                other.blockedUserId == blockedUserId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.blockedUserDisplayName, blockedUserDisplayName) ||
                other.blockedUserDisplayName == blockedUserDisplayName) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    blockedUserId,
    createdAt,
    blockedUserDisplayName,
    source,
  );

  /// Create a copy of BlockResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockResponseImplCopyWith<_$BlockResponseImpl> get copyWith =>
      __$$BlockResponseImplCopyWithImpl<_$BlockResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockResponseImplToJson(this);
  }
}

abstract class _BlockResponse implements BlockResponse {
  const factory _BlockResponse({
    required final int id,
    required final int blockedUserId,
    required final DateTime createdAt,
    final String? blockedUserDisplayName,
    final BlockSource? source,
  }) = _$BlockResponseImpl;

  factory _BlockResponse.fromJson(Map<String, dynamic> json) =
      _$BlockResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get blockedUserId;
  @override
  DateTime get createdAt;
  @override
  String? get blockedUserDisplayName;
  @override
  BlockSource? get source;

  /// Create a copy of BlockResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockResponseImplCopyWith<_$BlockResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BlockListResponse _$BlockListResponseFromJson(Map<String, dynamic> json) {
  return _BlockListResponse.fromJson(json);
}

/// @nodoc
mixin _$BlockListResponse {
  List<BlockResponse> get items => throw _privateConstructorUsedError;

  /// Serializes this BlockListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlockListResponseCopyWith<BlockListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlockListResponseCopyWith<$Res> {
  factory $BlockListResponseCopyWith(
    BlockListResponse value,
    $Res Function(BlockListResponse) then,
  ) = _$BlockListResponseCopyWithImpl<$Res, BlockListResponse>;
  @useResult
  $Res call({List<BlockResponse> items});
}

/// @nodoc
class _$BlockListResponseCopyWithImpl<$Res, $Val extends BlockListResponse>
    implements $BlockListResponseCopyWith<$Res> {
  _$BlockListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<BlockResponse>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BlockListResponseImplCopyWith<$Res>
    implements $BlockListResponseCopyWith<$Res> {
  factory _$$BlockListResponseImplCopyWith(
    _$BlockListResponseImpl value,
    $Res Function(_$BlockListResponseImpl) then,
  ) = __$$BlockListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<BlockResponse> items});
}

/// @nodoc
class __$$BlockListResponseImplCopyWithImpl<$Res>
    extends _$BlockListResponseCopyWithImpl<$Res, _$BlockListResponseImpl>
    implements _$$BlockListResponseImplCopyWith<$Res> {
  __$$BlockListResponseImplCopyWithImpl(
    _$BlockListResponseImpl _value,
    $Res Function(_$BlockListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BlockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _$BlockListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<BlockResponse>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BlockListResponseImpl implements _BlockListResponse {
  const _$BlockListResponseImpl({
    final List<BlockResponse> items = const <BlockResponse>[],
  }) : _items = items;

  factory _$BlockListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlockListResponseImplFromJson(json);

  final List<BlockResponse> _items;
  @override
  @JsonKey()
  List<BlockResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'BlockListResponse(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlockListResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of BlockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlockListResponseImplCopyWith<_$BlockListResponseImpl> get copyWith =>
      __$$BlockListResponseImplCopyWithImpl<_$BlockListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$BlockListResponseImplToJson(this);
  }
}

abstract class _BlockListResponse implements BlockListResponse {
  const factory _BlockListResponse({final List<BlockResponse> items}) =
      _$BlockListResponseImpl;

  factory _BlockListResponse.fromJson(Map<String, dynamic> json) =
      _$BlockListResponseImpl.fromJson;

  @override
  List<BlockResponse> get items;

  /// Create a copy of BlockListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlockListResponseImplCopyWith<_$BlockListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
