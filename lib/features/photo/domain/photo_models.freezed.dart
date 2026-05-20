// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

RequestPhotoUploadRequest _$RequestPhotoUploadRequestFromJson(
  Map<String, dynamic> json,
) {
  return _RequestPhotoUploadRequest.fromJson(json);
}

/// @nodoc
mixin _$RequestPhotoUploadRequest {
  PhotoContentType get contentType => throw _privateConstructorUsedError;
  int get sizeBytes => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;

  /// Serializes this RequestPhotoUploadRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RequestPhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequestPhotoUploadRequestCopyWith<RequestPhotoUploadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestPhotoUploadRequestCopyWith<$Res> {
  factory $RequestPhotoUploadRequestCopyWith(
    RequestPhotoUploadRequest value,
    $Res Function(RequestPhotoUploadRequest) then,
  ) = _$RequestPhotoUploadRequestCopyWithImpl<$Res, RequestPhotoUploadRequest>;
  @useResult
  $Res call({PhotoContentType contentType, int sizeBytes, String? filename});
}

/// @nodoc
class _$RequestPhotoUploadRequestCopyWithImpl<
  $Res,
  $Val extends RequestPhotoUploadRequest
>
    implements $RequestPhotoUploadRequestCopyWith<$Res> {
  _$RequestPhotoUploadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequestPhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? filename = freezed,
  }) {
    return _then(
      _value.copyWith(
            contentType: null == contentType
                ? _value.contentType
                : contentType // ignore: cast_nullable_to_non_nullable
                      as PhotoContentType,
            sizeBytes: null == sizeBytes
                ? _value.sizeBytes
                : sizeBytes // ignore: cast_nullable_to_non_nullable
                      as int,
            filename: freezed == filename
                ? _value.filename
                : filename // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RequestPhotoUploadRequestImplCopyWith<$Res>
    implements $RequestPhotoUploadRequestCopyWith<$Res> {
  factory _$$RequestPhotoUploadRequestImplCopyWith(
    _$RequestPhotoUploadRequestImpl value,
    $Res Function(_$RequestPhotoUploadRequestImpl) then,
  ) = __$$RequestPhotoUploadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PhotoContentType contentType, int sizeBytes, String? filename});
}

/// @nodoc
class __$$RequestPhotoUploadRequestImplCopyWithImpl<$Res>
    extends
        _$RequestPhotoUploadRequestCopyWithImpl<
          $Res,
          _$RequestPhotoUploadRequestImpl
        >
    implements _$$RequestPhotoUploadRequestImplCopyWith<$Res> {
  __$$RequestPhotoUploadRequestImplCopyWithImpl(
    _$RequestPhotoUploadRequestImpl _value,
    $Res Function(_$RequestPhotoUploadRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of RequestPhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? sizeBytes = null,
    Object? filename = freezed,
  }) {
    return _then(
      _$RequestPhotoUploadRequestImpl(
        contentType: null == contentType
            ? _value.contentType
            : contentType // ignore: cast_nullable_to_non_nullable
                  as PhotoContentType,
        sizeBytes: null == sizeBytes
            ? _value.sizeBytes
            : sizeBytes // ignore: cast_nullable_to_non_nullable
                  as int,
        filename: freezed == filename
            ? _value.filename
            : filename // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RequestPhotoUploadRequestImpl implements _RequestPhotoUploadRequest {
  const _$RequestPhotoUploadRequestImpl({
    required this.contentType,
    required this.sizeBytes,
    this.filename,
  });

  factory _$RequestPhotoUploadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RequestPhotoUploadRequestImplFromJson(json);

  @override
  final PhotoContentType contentType;
  @override
  final int sizeBytes;
  @override
  final String? filename;

  @override
  String toString() {
    return 'RequestPhotoUploadRequest(contentType: $contentType, sizeBytes: $sizeBytes, filename: $filename)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestPhotoUploadRequestImpl &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.sizeBytes, sizeBytes) ||
                other.sizeBytes == sizeBytes) &&
            (identical(other.filename, filename) ||
                other.filename == filename));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, contentType, sizeBytes, filename);

  /// Create a copy of RequestPhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestPhotoUploadRequestImplCopyWith<_$RequestPhotoUploadRequestImpl>
  get copyWith =>
      __$$RequestPhotoUploadRequestImplCopyWithImpl<
        _$RequestPhotoUploadRequestImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RequestPhotoUploadRequestImplToJson(this);
  }
}

abstract class _RequestPhotoUploadRequest implements RequestPhotoUploadRequest {
  const factory _RequestPhotoUploadRequest({
    required final PhotoContentType contentType,
    required final int sizeBytes,
    final String? filename,
  }) = _$RequestPhotoUploadRequestImpl;

  factory _RequestPhotoUploadRequest.fromJson(Map<String, dynamic> json) =
      _$RequestPhotoUploadRequestImpl.fromJson;

  @override
  PhotoContentType get contentType;
  @override
  int get sizeBytes;
  @override
  String? get filename;

  /// Create a copy of RequestPhotoUploadRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequestPhotoUploadRequestImplCopyWith<_$RequestPhotoUploadRequestImpl>
  get copyWith => throw _privateConstructorUsedError;
}

PhotoUploadTicket _$PhotoUploadTicketFromJson(Map<String, dynamic> json) {
  return _PhotoUploadTicket.fromJson(json);
}

/// @nodoc
mixin _$PhotoUploadTicket {
  int get photoId => throw _privateConstructorUsedError;
  String get presignedUrl => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  Map<String, String> get requiredHeaders => throw _privateConstructorUsedError;

  /// Serializes this PhotoUploadTicket to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoUploadTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoUploadTicketCopyWith<PhotoUploadTicket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoUploadTicketCopyWith<$Res> {
  factory $PhotoUploadTicketCopyWith(
    PhotoUploadTicket value,
    $Res Function(PhotoUploadTicket) then,
  ) = _$PhotoUploadTicketCopyWithImpl<$Res, PhotoUploadTicket>;
  @useResult
  $Res call({
    int photoId,
    String presignedUrl,
    String method,
    DateTime expiresAt,
    Map<String, String> requiredHeaders,
  });
}

/// @nodoc
class _$PhotoUploadTicketCopyWithImpl<$Res, $Val extends PhotoUploadTicket>
    implements $PhotoUploadTicketCopyWith<$Res> {
  _$PhotoUploadTicketCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoUploadTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
    Object? presignedUrl = null,
    Object? method = null,
    Object? expiresAt = null,
    Object? requiredHeaders = null,
  }) {
    return _then(
      _value.copyWith(
            photoId: null == photoId
                ? _value.photoId
                : photoId // ignore: cast_nullable_to_non_nullable
                      as int,
            presignedUrl: null == presignedUrl
                ? _value.presignedUrl
                : presignedUrl // ignore: cast_nullable_to_non_nullable
                      as String,
            method: null == method
                ? _value.method
                : method // ignore: cast_nullable_to_non_nullable
                      as String,
            expiresAt: null == expiresAt
                ? _value.expiresAt
                : expiresAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            requiredHeaders: null == requiredHeaders
                ? _value.requiredHeaders
                : requiredHeaders // ignore: cast_nullable_to_non_nullable
                      as Map<String, String>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhotoUploadTicketImplCopyWith<$Res>
    implements $PhotoUploadTicketCopyWith<$Res> {
  factory _$$PhotoUploadTicketImplCopyWith(
    _$PhotoUploadTicketImpl value,
    $Res Function(_$PhotoUploadTicketImpl) then,
  ) = __$$PhotoUploadTicketImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int photoId,
    String presignedUrl,
    String method,
    DateTime expiresAt,
    Map<String, String> requiredHeaders,
  });
}

/// @nodoc
class __$$PhotoUploadTicketImplCopyWithImpl<$Res>
    extends _$PhotoUploadTicketCopyWithImpl<$Res, _$PhotoUploadTicketImpl>
    implements _$$PhotoUploadTicketImplCopyWith<$Res> {
  __$$PhotoUploadTicketImplCopyWithImpl(
    _$PhotoUploadTicketImpl _value,
    $Res Function(_$PhotoUploadTicketImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhotoUploadTicket
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photoId = null,
    Object? presignedUrl = null,
    Object? method = null,
    Object? expiresAt = null,
    Object? requiredHeaders = null,
  }) {
    return _then(
      _$PhotoUploadTicketImpl(
        photoId: null == photoId
            ? _value.photoId
            : photoId // ignore: cast_nullable_to_non_nullable
                  as int,
        presignedUrl: null == presignedUrl
            ? _value.presignedUrl
            : presignedUrl // ignore: cast_nullable_to_non_nullable
                  as String,
        method: null == method
            ? _value.method
            : method // ignore: cast_nullable_to_non_nullable
                  as String,
        expiresAt: null == expiresAt
            ? _value.expiresAt
            : expiresAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        requiredHeaders: null == requiredHeaders
            ? _value._requiredHeaders
            : requiredHeaders // ignore: cast_nullable_to_non_nullable
                  as Map<String, String>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoUploadTicketImpl implements _PhotoUploadTicket {
  const _$PhotoUploadTicketImpl({
    required this.photoId,
    required this.presignedUrl,
    this.method = 'PUT',
    required this.expiresAt,
    required final Map<String, String> requiredHeaders,
  }) : _requiredHeaders = requiredHeaders;

  factory _$PhotoUploadTicketImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoUploadTicketImplFromJson(json);

  @override
  final int photoId;
  @override
  final String presignedUrl;
  @override
  @JsonKey()
  final String method;
  @override
  final DateTime expiresAt;
  final Map<String, String> _requiredHeaders;
  @override
  Map<String, String> get requiredHeaders {
    if (_requiredHeaders is EqualUnmodifiableMapView) return _requiredHeaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_requiredHeaders);
  }

  @override
  String toString() {
    return 'PhotoUploadTicket(photoId: $photoId, presignedUrl: $presignedUrl, method: $method, expiresAt: $expiresAt, requiredHeaders: $requiredHeaders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoUploadTicketImpl &&
            (identical(other.photoId, photoId) || other.photoId == photoId) &&
            (identical(other.presignedUrl, presignedUrl) ||
                other.presignedUrl == presignedUrl) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            const DeepCollectionEquality().equals(
              other._requiredHeaders,
              _requiredHeaders,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    photoId,
    presignedUrl,
    method,
    expiresAt,
    const DeepCollectionEquality().hash(_requiredHeaders),
  );

  /// Create a copy of PhotoUploadTicket
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoUploadTicketImplCopyWith<_$PhotoUploadTicketImpl> get copyWith =>
      __$$PhotoUploadTicketImplCopyWithImpl<_$PhotoUploadTicketImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoUploadTicketImplToJson(this);
  }
}

abstract class _PhotoUploadTicket implements PhotoUploadTicket {
  const factory _PhotoUploadTicket({
    required final int photoId,
    required final String presignedUrl,
    final String method,
    required final DateTime expiresAt,
    required final Map<String, String> requiredHeaders,
  }) = _$PhotoUploadTicketImpl;

  factory _PhotoUploadTicket.fromJson(Map<String, dynamic> json) =
      _$PhotoUploadTicketImpl.fromJson;

  @override
  int get photoId;
  @override
  String get presignedUrl;
  @override
  String get method;
  @override
  DateTime get expiresAt;
  @override
  Map<String, String> get requiredHeaders;

  /// Create a copy of PhotoUploadTicket
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoUploadTicketImplCopyWith<_$PhotoUploadTicketImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PhotoResponse _$PhotoResponseFromJson(Map<String, dynamic> json) {
  return _PhotoResponse.fromJson(json);
}

/// @nodoc
mixin _$PhotoResponse {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  int get orderIndex => throw _privateConstructorUsedError;
  PhotoReviewStatus get reviewStatus => throw _privateConstructorUsedError;
  bool? get containsMinorWarning => throw _privateConstructorUsedError;
  DateTime get uploadedAt => throw _privateConstructorUsedError;

  /// Serializes this PhotoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhotoResponseCopyWith<PhotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoResponseCopyWith<$Res> {
  factory $PhotoResponseCopyWith(
    PhotoResponse value,
    $Res Function(PhotoResponse) then,
  ) = _$PhotoResponseCopyWithImpl<$Res, PhotoResponse>;
  @useResult
  $Res call({
    int id,
    String url,
    int orderIndex,
    PhotoReviewStatus reviewStatus,
    bool? containsMinorWarning,
    DateTime uploadedAt,
  });
}

/// @nodoc
class _$PhotoResponseCopyWithImpl<$Res, $Val extends PhotoResponse>
    implements $PhotoResponseCopyWith<$Res> {
  _$PhotoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? orderIndex = null,
    Object? reviewStatus = null,
    Object? containsMinorWarning = freezed,
    Object? uploadedAt = null,
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
            reviewStatus: null == reviewStatus
                ? _value.reviewStatus
                : reviewStatus // ignore: cast_nullable_to_non_nullable
                      as PhotoReviewStatus,
            containsMinorWarning: freezed == containsMinorWarning
                ? _value.containsMinorWarning
                : containsMinorWarning // ignore: cast_nullable_to_non_nullable
                      as bool?,
            uploadedAt: null == uploadedAt
                ? _value.uploadedAt
                : uploadedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PhotoResponseImplCopyWith<$Res>
    implements $PhotoResponseCopyWith<$Res> {
  factory _$$PhotoResponseImplCopyWith(
    _$PhotoResponseImpl value,
    $Res Function(_$PhotoResponseImpl) then,
  ) = __$$PhotoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String url,
    int orderIndex,
    PhotoReviewStatus reviewStatus,
    bool? containsMinorWarning,
    DateTime uploadedAt,
  });
}

/// @nodoc
class __$$PhotoResponseImplCopyWithImpl<$Res>
    extends _$PhotoResponseCopyWithImpl<$Res, _$PhotoResponseImpl>
    implements _$$PhotoResponseImplCopyWith<$Res> {
  __$$PhotoResponseImplCopyWithImpl(
    _$PhotoResponseImpl _value,
    $Res Function(_$PhotoResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? orderIndex = null,
    Object? reviewStatus = null,
    Object? containsMinorWarning = freezed,
    Object? uploadedAt = null,
  }) {
    return _then(
      _$PhotoResponseImpl(
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
        reviewStatus: null == reviewStatus
            ? _value.reviewStatus
            : reviewStatus // ignore: cast_nullable_to_non_nullable
                  as PhotoReviewStatus,
        containsMinorWarning: freezed == containsMinorWarning
            ? _value.containsMinorWarning
            : containsMinorWarning // ignore: cast_nullable_to_non_nullable
                  as bool?,
        uploadedAt: null == uploadedAt
            ? _value.uploadedAt
            : uploadedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PhotoResponseImpl implements _PhotoResponse {
  const _$PhotoResponseImpl({
    required this.id,
    required this.url,
    required this.orderIndex,
    required this.reviewStatus,
    this.containsMinorWarning,
    required this.uploadedAt,
  });

  factory _$PhotoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhotoResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final int orderIndex;
  @override
  final PhotoReviewStatus reviewStatus;
  @override
  final bool? containsMinorWarning;
  @override
  final DateTime uploadedAt;

  @override
  String toString() {
    return 'PhotoResponse(id: $id, url: $url, orderIndex: $orderIndex, reviewStatus: $reviewStatus, containsMinorWarning: $containsMinorWarning, uploadedAt: $uploadedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.orderIndex, orderIndex) ||
                other.orderIndex == orderIndex) &&
            (identical(other.reviewStatus, reviewStatus) ||
                other.reviewStatus == reviewStatus) &&
            (identical(other.containsMinorWarning, containsMinorWarning) ||
                other.containsMinorWarning == containsMinorWarning) &&
            (identical(other.uploadedAt, uploadedAt) ||
                other.uploadedAt == uploadedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    url,
    orderIndex,
    reviewStatus,
    containsMinorWarning,
    uploadedAt,
  );

  /// Create a copy of PhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoResponseImplCopyWith<_$PhotoResponseImpl> get copyWith =>
      __$$PhotoResponseImplCopyWithImpl<_$PhotoResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhotoResponseImplToJson(this);
  }
}

abstract class _PhotoResponse implements PhotoResponse {
  const factory _PhotoResponse({
    required final int id,
    required final String url,
    required final int orderIndex,
    required final PhotoReviewStatus reviewStatus,
    final bool? containsMinorWarning,
    required final DateTime uploadedAt,
  }) = _$PhotoResponseImpl;

  factory _PhotoResponse.fromJson(Map<String, dynamic> json) =
      _$PhotoResponseImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  int get orderIndex;
  @override
  PhotoReviewStatus get reviewStatus;
  @override
  bool? get containsMinorWarning;
  @override
  DateTime get uploadedAt;

  /// Create a copy of PhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhotoResponseImplCopyWith<_$PhotoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
