// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ChatSystemMessageMeta _$ChatSystemMessageMetaFromJson(
  Map<String, dynamic> json,
) {
  return _ChatSystemMessageMeta.fromJson(json);
}

/// @nodoc
mixin _$ChatSystemMessageMeta {
  int? get actorUserId => throw _privateConstructorUsedError;
  int? get relatedReportId => throw _privateConstructorUsedError;

  /// Serializes this ChatSystemMessageMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatSystemMessageMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatSystemMessageMetaCopyWith<ChatSystemMessageMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatSystemMessageMetaCopyWith<$Res> {
  factory $ChatSystemMessageMetaCopyWith(
    ChatSystemMessageMeta value,
    $Res Function(ChatSystemMessageMeta) then,
  ) = _$ChatSystemMessageMetaCopyWithImpl<$Res, ChatSystemMessageMeta>;
  @useResult
  $Res call({int? actorUserId, int? relatedReportId});
}

/// @nodoc
class _$ChatSystemMessageMetaCopyWithImpl<
  $Res,
  $Val extends ChatSystemMessageMeta
>
    implements $ChatSystemMessageMetaCopyWith<$Res> {
  _$ChatSystemMessageMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatSystemMessageMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actorUserId = freezed,
    Object? relatedReportId = freezed,
  }) {
    return _then(
      _value.copyWith(
            actorUserId: freezed == actorUserId
                ? _value.actorUserId
                : actorUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            relatedReportId: freezed == relatedReportId
                ? _value.relatedReportId
                : relatedReportId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatSystemMessageMetaImplCopyWith<$Res>
    implements $ChatSystemMessageMetaCopyWith<$Res> {
  factory _$$ChatSystemMessageMetaImplCopyWith(
    _$ChatSystemMessageMetaImpl value,
    $Res Function(_$ChatSystemMessageMetaImpl) then,
  ) = __$$ChatSystemMessageMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? actorUserId, int? relatedReportId});
}

/// @nodoc
class __$$ChatSystemMessageMetaImplCopyWithImpl<$Res>
    extends
        _$ChatSystemMessageMetaCopyWithImpl<$Res, _$ChatSystemMessageMetaImpl>
    implements _$$ChatSystemMessageMetaImplCopyWith<$Res> {
  __$$ChatSystemMessageMetaImplCopyWithImpl(
    _$ChatSystemMessageMetaImpl _value,
    $Res Function(_$ChatSystemMessageMetaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatSystemMessageMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actorUserId = freezed,
    Object? relatedReportId = freezed,
  }) {
    return _then(
      _$ChatSystemMessageMetaImpl(
        actorUserId: freezed == actorUserId
            ? _value.actorUserId
            : actorUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        relatedReportId: freezed == relatedReportId
            ? _value.relatedReportId
            : relatedReportId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatSystemMessageMetaImpl implements _ChatSystemMessageMeta {
  const _$ChatSystemMessageMetaImpl({this.actorUserId, this.relatedReportId});

  factory _$ChatSystemMessageMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatSystemMessageMetaImplFromJson(json);

  @override
  final int? actorUserId;
  @override
  final int? relatedReportId;

  @override
  String toString() {
    return 'ChatSystemMessageMeta(actorUserId: $actorUserId, relatedReportId: $relatedReportId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatSystemMessageMetaImpl &&
            (identical(other.actorUserId, actorUserId) ||
                other.actorUserId == actorUserId) &&
            (identical(other.relatedReportId, relatedReportId) ||
                other.relatedReportId == relatedReportId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, actorUserId, relatedReportId);

  /// Create a copy of ChatSystemMessageMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatSystemMessageMetaImplCopyWith<_$ChatSystemMessageMetaImpl>
  get copyWith =>
      __$$ChatSystemMessageMetaImplCopyWithImpl<_$ChatSystemMessageMetaImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatSystemMessageMetaImplToJson(this);
  }
}

abstract class _ChatSystemMessageMeta implements ChatSystemMessageMeta {
  const factory _ChatSystemMessageMeta({
    final int? actorUserId,
    final int? relatedReportId,
  }) = _$ChatSystemMessageMetaImpl;

  factory _ChatSystemMessageMeta.fromJson(Map<String, dynamic> json) =
      _$ChatSystemMessageMetaImpl.fromJson;

  @override
  int? get actorUserId;
  @override
  int? get relatedReportId;

  /// Create a copy of ChatSystemMessageMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatSystemMessageMetaImplCopyWith<_$ChatSystemMessageMetaImpl>
  get copyWith => throw _privateConstructorUsedError;
}

ChatMessageResponse _$ChatMessageResponseFromJson(Map<String, dynamic> json) {
  return _ChatMessageResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatMessageResponse {
  int get id => throw _privateConstructorUsedError;
  int get chatRoomId => throw _privateConstructorUsedError;
  int get senderId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  MessageType get messageType => throw _privateConstructorUsedError;
  DateTime get sentAt => throw _privateConstructorUsedError;
  ChatSystemMessageMeta? get systemMeta => throw _privateConstructorUsedError;
  String? get clientMessageId => throw _privateConstructorUsedError;

  /// Serializes this ChatMessageResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageResponseCopyWith<ChatMessageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageResponseCopyWith<$Res> {
  factory $ChatMessageResponseCopyWith(
    ChatMessageResponse value,
    $Res Function(ChatMessageResponse) then,
  ) = _$ChatMessageResponseCopyWithImpl<$Res, ChatMessageResponse>;
  @useResult
  $Res call({
    int id,
    int chatRoomId,
    int senderId,
    String content,
    MessageType messageType,
    DateTime sentAt,
    ChatSystemMessageMeta? systemMeta,
    String? clientMessageId,
  });

  $ChatSystemMessageMetaCopyWith<$Res>? get systemMeta;
}

/// @nodoc
class _$ChatMessageResponseCopyWithImpl<$Res, $Val extends ChatMessageResponse>
    implements $ChatMessageResponseCopyWith<$Res> {
  _$ChatMessageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatRoomId = null,
    Object? senderId = null,
    Object? content = null,
    Object? messageType = null,
    Object? sentAt = null,
    Object? systemMeta = freezed,
    Object? clientMessageId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            chatRoomId: null == chatRoomId
                ? _value.chatRoomId
                : chatRoomId // ignore: cast_nullable_to_non_nullable
                      as int,
            senderId: null == senderId
                ? _value.senderId
                : senderId // ignore: cast_nullable_to_non_nullable
                      as int,
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            messageType: null == messageType
                ? _value.messageType
                : messageType // ignore: cast_nullable_to_non_nullable
                      as MessageType,
            sentAt: null == sentAt
                ? _value.sentAt
                : sentAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            systemMeta: freezed == systemMeta
                ? _value.systemMeta
                : systemMeta // ignore: cast_nullable_to_non_nullable
                      as ChatSystemMessageMeta?,
            clientMessageId: freezed == clientMessageId
                ? _value.clientMessageId
                : clientMessageId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatSystemMessageMetaCopyWith<$Res>? get systemMeta {
    if (_value.systemMeta == null) {
      return null;
    }

    return $ChatSystemMessageMetaCopyWith<$Res>(_value.systemMeta!, (value) {
      return _then(_value.copyWith(systemMeta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatMessageResponseImplCopyWith<$Res>
    implements $ChatMessageResponseCopyWith<$Res> {
  factory _$$ChatMessageResponseImplCopyWith(
    _$ChatMessageResponseImpl value,
    $Res Function(_$ChatMessageResponseImpl) then,
  ) = __$$ChatMessageResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int chatRoomId,
    int senderId,
    String content,
    MessageType messageType,
    DateTime sentAt,
    ChatSystemMessageMeta? systemMeta,
    String? clientMessageId,
  });

  @override
  $ChatSystemMessageMetaCopyWith<$Res>? get systemMeta;
}

/// @nodoc
class __$$ChatMessageResponseImplCopyWithImpl<$Res>
    extends _$ChatMessageResponseCopyWithImpl<$Res, _$ChatMessageResponseImpl>
    implements _$$ChatMessageResponseImplCopyWith<$Res> {
  __$$ChatMessageResponseImplCopyWithImpl(
    _$ChatMessageResponseImpl _value,
    $Res Function(_$ChatMessageResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chatRoomId = null,
    Object? senderId = null,
    Object? content = null,
    Object? messageType = null,
    Object? sentAt = null,
    Object? systemMeta = freezed,
    Object? clientMessageId = freezed,
  }) {
    return _then(
      _$ChatMessageResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        chatRoomId: null == chatRoomId
            ? _value.chatRoomId
            : chatRoomId // ignore: cast_nullable_to_non_nullable
                  as int,
        senderId: null == senderId
            ? _value.senderId
            : senderId // ignore: cast_nullable_to_non_nullable
                  as int,
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        messageType: null == messageType
            ? _value.messageType
            : messageType // ignore: cast_nullable_to_non_nullable
                  as MessageType,
        sentAt: null == sentAt
            ? _value.sentAt
            : sentAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        systemMeta: freezed == systemMeta
            ? _value.systemMeta
            : systemMeta // ignore: cast_nullable_to_non_nullable
                  as ChatSystemMessageMeta?,
        clientMessageId: freezed == clientMessageId
            ? _value.clientMessageId
            : clientMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessageResponseImpl implements _ChatMessageResponse {
  const _$ChatMessageResponseImpl({
    required this.id,
    required this.chatRoomId,
    required this.senderId,
    required this.content,
    required this.messageType,
    required this.sentAt,
    this.systemMeta,
    this.clientMessageId,
  });

  factory _$ChatMessageResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int chatRoomId;
  @override
  final int senderId;
  @override
  final String content;
  @override
  final MessageType messageType;
  @override
  final DateTime sentAt;
  @override
  final ChatSystemMessageMeta? systemMeta;
  @override
  final String? clientMessageId;

  @override
  String toString() {
    return 'ChatMessageResponse(id: $id, chatRoomId: $chatRoomId, senderId: $senderId, content: $content, messageType: $messageType, sentAt: $sentAt, systemMeta: $systemMeta, clientMessageId: $clientMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.messageType, messageType) ||
                other.messageType == messageType) &&
            (identical(other.sentAt, sentAt) || other.sentAt == sentAt) &&
            (identical(other.systemMeta, systemMeta) ||
                other.systemMeta == systemMeta) &&
            (identical(other.clientMessageId, clientMessageId) ||
                other.clientMessageId == clientMessageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    chatRoomId,
    senderId,
    content,
    messageType,
    sentAt,
    systemMeta,
    clientMessageId,
  );

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageResponseImplCopyWith<_$ChatMessageResponseImpl> get copyWith =>
      __$$ChatMessageResponseImplCopyWithImpl<_$ChatMessageResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageResponseImplToJson(this);
  }
}

abstract class _ChatMessageResponse implements ChatMessageResponse {
  const factory _ChatMessageResponse({
    required final int id,
    required final int chatRoomId,
    required final int senderId,
    required final String content,
    required final MessageType messageType,
    required final DateTime sentAt,
    final ChatSystemMessageMeta? systemMeta,
    final String? clientMessageId,
  }) = _$ChatMessageResponseImpl;

  factory _ChatMessageResponse.fromJson(Map<String, dynamic> json) =
      _$ChatMessageResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get chatRoomId;
  @override
  int get senderId;
  @override
  String get content;
  @override
  MessageType get messageType;
  @override
  DateTime get sentAt;
  @override
  ChatSystemMessageMeta? get systemMeta;
  @override
  String? get clientMessageId;

  /// Create a copy of ChatMessageResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageResponseImplCopyWith<_$ChatMessageResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatMessagesPage _$ChatMessagesPageFromJson(Map<String, dynamic> json) {
  return _ChatMessagesPage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessagesPage {
  List<ChatMessageResponse> get items => throw _privateConstructorUsedError;
  String? get nextCursor => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Serializes this ChatMessagesPage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessagesPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessagesPageCopyWith<ChatMessagesPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesPageCopyWith<$Res> {
  factory $ChatMessagesPageCopyWith(
    ChatMessagesPage value,
    $Res Function(ChatMessagesPage) then,
  ) = _$ChatMessagesPageCopyWithImpl<$Res, ChatMessagesPage>;
  @useResult
  $Res call({
    List<ChatMessageResponse> items,
    String? nextCursor,
    bool hasMore,
  });
}

/// @nodoc
class _$ChatMessagesPageCopyWithImpl<$Res, $Val extends ChatMessagesPage>
    implements $ChatMessagesPageCopyWith<$Res> {
  _$ChatMessagesPageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessagesPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = freezed,
    Object? hasMore = null,
  }) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ChatMessageResponse>,
            nextCursor: freezed == nextCursor
                ? _value.nextCursor
                : nextCursor // ignore: cast_nullable_to_non_nullable
                      as String?,
            hasMore: null == hasMore
                ? _value.hasMore
                : hasMore // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChatMessagesPageImplCopyWith<$Res>
    implements $ChatMessagesPageCopyWith<$Res> {
  factory _$$ChatMessagesPageImplCopyWith(
    _$ChatMessagesPageImpl value,
    $Res Function(_$ChatMessagesPageImpl) then,
  ) = __$$ChatMessagesPageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    List<ChatMessageResponse> items,
    String? nextCursor,
    bool hasMore,
  });
}

/// @nodoc
class __$$ChatMessagesPageImplCopyWithImpl<$Res>
    extends _$ChatMessagesPageCopyWithImpl<$Res, _$ChatMessagesPageImpl>
    implements _$$ChatMessagesPageImplCopyWith<$Res> {
  __$$ChatMessagesPageImplCopyWithImpl(
    _$ChatMessagesPageImpl _value,
    $Res Function(_$ChatMessagesPageImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatMessagesPage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? nextCursor = freezed,
    Object? hasMore = null,
  }) {
    return _then(
      _$ChatMessagesPageImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ChatMessageResponse>,
        nextCursor: freezed == nextCursor
            ? _value.nextCursor
            : nextCursor // ignore: cast_nullable_to_non_nullable
                  as String?,
        hasMore: null == hasMore
            ? _value.hasMore
            : hasMore // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatMessagesPageImpl implements _ChatMessagesPage {
  const _$ChatMessagesPageImpl({
    final List<ChatMessageResponse> items = const <ChatMessageResponse>[],
    this.nextCursor,
    this.hasMore = false,
  }) : _items = items;

  factory _$ChatMessagesPageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessagesPageImplFromJson(json);

  final List<ChatMessageResponse> _items;
  @override
  @JsonKey()
  List<ChatMessageResponse> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final String? nextCursor;
  @override
  @JsonKey()
  final bool hasMore;

  @override
  String toString() {
    return 'ChatMessagesPage(items: $items, nextCursor: $nextCursor, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessagesPageImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.nextCursor, nextCursor) ||
                other.nextCursor == nextCursor) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_items),
    nextCursor,
    hasMore,
  );

  /// Create a copy of ChatMessagesPage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessagesPageImplCopyWith<_$ChatMessagesPageImpl> get copyWith =>
      __$$ChatMessagesPageImplCopyWithImpl<_$ChatMessagesPageImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessagesPageImplToJson(this);
  }
}

abstract class _ChatMessagesPage implements ChatMessagesPage {
  const factory _ChatMessagesPage({
    final List<ChatMessageResponse> items,
    final String? nextCursor,
    final bool hasMore,
  }) = _$ChatMessagesPageImpl;

  factory _ChatMessagesPage.fromJson(Map<String, dynamic> json) =
      _$ChatMessagesPageImpl.fromJson;

  @override
  List<ChatMessageResponse> get items;
  @override
  String? get nextCursor;
  @override
  bool get hasMore;

  /// Create a copy of ChatMessagesPage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessagesPageImplCopyWith<_$ChatMessagesPageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChatRoomResponse _$ChatRoomResponseFromJson(Map<String, dynamic> json) {
  return _ChatRoomResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatRoomResponse {
  int get id => throw _privateConstructorUsedError;
  int get matchId => throw _privateConstructorUsedError;
  ChatRoomStatus get status => throw _privateConstructorUsedError;
  ProfileCardResponse get partner => throw _privateConstructorUsedError;
  List<ProfileCardResponse> get participants =>
      throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get endedAt => throw _privateConstructorUsedError;
  int get unreadCount => throw _privateConstructorUsedError;
  ChatMessageResponse? get lastMessage => throw _privateConstructorUsedError;
  DateTime? get lastMessageAt => throw _privateConstructorUsedError;

  /// Serializes this ChatRoomResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatRoomResponseCopyWith<ChatRoomResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomResponseCopyWith<$Res> {
  factory $ChatRoomResponseCopyWith(
    ChatRoomResponse value,
    $Res Function(ChatRoomResponse) then,
  ) = _$ChatRoomResponseCopyWithImpl<$Res, ChatRoomResponse>;
  @useResult
  $Res call({
    int id,
    int matchId,
    ChatRoomStatus status,
    ProfileCardResponse partner,
    List<ProfileCardResponse> participants,
    DateTime createdAt,
    DateTime? endedAt,
    int unreadCount,
    ChatMessageResponse? lastMessage,
    DateTime? lastMessageAt,
  });

  $ProfileCardResponseCopyWith<$Res> get partner;
  $ChatMessageResponseCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class _$ChatRoomResponseCopyWithImpl<$Res, $Val extends ChatRoomResponse>
    implements $ChatRoomResponseCopyWith<$Res> {
  _$ChatRoomResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchId = null,
    Object? status = null,
    Object? partner = null,
    Object? participants = null,
    Object? createdAt = null,
    Object? endedAt = freezed,
    Object? unreadCount = null,
    Object? lastMessage = freezed,
    Object? lastMessageAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            matchId: null == matchId
                ? _value.matchId
                : matchId // ignore: cast_nullable_to_non_nullable
                      as int,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as ChatRoomStatus,
            partner: null == partner
                ? _value.partner
                : partner // ignore: cast_nullable_to_non_nullable
                      as ProfileCardResponse,
            participants: null == participants
                ? _value.participants
                : participants // ignore: cast_nullable_to_non_nullable
                      as List<ProfileCardResponse>,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endedAt: freezed == endedAt
                ? _value.endedAt
                : endedAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            unreadCount: null == unreadCount
                ? _value.unreadCount
                : unreadCount // ignore: cast_nullable_to_non_nullable
                      as int,
            lastMessage: freezed == lastMessage
                ? _value.lastMessage
                : lastMessage // ignore: cast_nullable_to_non_nullable
                      as ChatMessageResponse?,
            lastMessageAt: freezed == lastMessageAt
                ? _value.lastMessageAt
                : lastMessageAt // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProfileCardResponseCopyWith<$Res> get partner {
    return $ProfileCardResponseCopyWith<$Res>(_value.partner, (value) {
      return _then(_value.copyWith(partner: value) as $Val);
    });
  }

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageResponseCopyWith<$Res>? get lastMessage {
    if (_value.lastMessage == null) {
      return null;
    }

    return $ChatMessageResponseCopyWith<$Res>(_value.lastMessage!, (value) {
      return _then(_value.copyWith(lastMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChatRoomResponseImplCopyWith<$Res>
    implements $ChatRoomResponseCopyWith<$Res> {
  factory _$$ChatRoomResponseImplCopyWith(
    _$ChatRoomResponseImpl value,
    $Res Function(_$ChatRoomResponseImpl) then,
  ) = __$$ChatRoomResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int matchId,
    ChatRoomStatus status,
    ProfileCardResponse partner,
    List<ProfileCardResponse> participants,
    DateTime createdAt,
    DateTime? endedAt,
    int unreadCount,
    ChatMessageResponse? lastMessage,
    DateTime? lastMessageAt,
  });

  @override
  $ProfileCardResponseCopyWith<$Res> get partner;
  @override
  $ChatMessageResponseCopyWith<$Res>? get lastMessage;
}

/// @nodoc
class __$$ChatRoomResponseImplCopyWithImpl<$Res>
    extends _$ChatRoomResponseCopyWithImpl<$Res, _$ChatRoomResponseImpl>
    implements _$$ChatRoomResponseImplCopyWith<$Res> {
  __$$ChatRoomResponseImplCopyWithImpl(
    _$ChatRoomResponseImpl _value,
    $Res Function(_$ChatRoomResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? matchId = null,
    Object? status = null,
    Object? partner = null,
    Object? participants = null,
    Object? createdAt = null,
    Object? endedAt = freezed,
    Object? unreadCount = null,
    Object? lastMessage = freezed,
    Object? lastMessageAt = freezed,
  }) {
    return _then(
      _$ChatRoomResponseImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        matchId: null == matchId
            ? _value.matchId
            : matchId // ignore: cast_nullable_to_non_nullable
                  as int,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as ChatRoomStatus,
        partner: null == partner
            ? _value.partner
            : partner // ignore: cast_nullable_to_non_nullable
                  as ProfileCardResponse,
        participants: null == participants
            ? _value._participants
            : participants // ignore: cast_nullable_to_non_nullable
                  as List<ProfileCardResponse>,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endedAt: freezed == endedAt
            ? _value.endedAt
            : endedAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        unreadCount: null == unreadCount
            ? _value.unreadCount
            : unreadCount // ignore: cast_nullable_to_non_nullable
                  as int,
        lastMessage: freezed == lastMessage
            ? _value.lastMessage
            : lastMessage // ignore: cast_nullable_to_non_nullable
                  as ChatMessageResponse?,
        lastMessageAt: freezed == lastMessageAt
            ? _value.lastMessageAt
            : lastMessageAt // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChatRoomResponseImpl implements _ChatRoomResponse {
  const _$ChatRoomResponseImpl({
    required this.id,
    required this.matchId,
    required this.status,
    required this.partner,
    final List<ProfileCardResponse> participants =
        const <ProfileCardResponse>[],
    required this.createdAt,
    this.endedAt,
    this.unreadCount = 0,
    this.lastMessage,
    this.lastMessageAt,
  }) : _participants = participants;

  factory _$ChatRoomResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatRoomResponseImplFromJson(json);

  @override
  final int id;
  @override
  final int matchId;
  @override
  final ChatRoomStatus status;
  @override
  final ProfileCardResponse partner;
  final List<ProfileCardResponse> _participants;
  @override
  @JsonKey()
  List<ProfileCardResponse> get participants {
    if (_participants is EqualUnmodifiableListView) return _participants;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_participants);
  }

  @override
  final DateTime createdAt;
  @override
  final DateTime? endedAt;
  @override
  @JsonKey()
  final int unreadCount;
  @override
  final ChatMessageResponse? lastMessage;
  @override
  final DateTime? lastMessageAt;

  @override
  String toString() {
    return 'ChatRoomResponse(id: $id, matchId: $matchId, status: $status, partner: $partner, participants: $participants, createdAt: $createdAt, endedAt: $endedAt, unreadCount: $unreadCount, lastMessage: $lastMessage, lastMessageAt: $lastMessageAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatRoomResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.partner, partner) || other.partner == partner) &&
            const DeepCollectionEquality().equals(
              other._participants,
              _participants,
            ) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endedAt, endedAt) || other.endedAt == endedAt) &&
            (identical(other.unreadCount, unreadCount) ||
                other.unreadCount == unreadCount) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.lastMessageAt, lastMessageAt) ||
                other.lastMessageAt == lastMessageAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    matchId,
    status,
    partner,
    const DeepCollectionEquality().hash(_participants),
    createdAt,
    endedAt,
    unreadCount,
    lastMessage,
    lastMessageAt,
  );

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatRoomResponseImplCopyWith<_$ChatRoomResponseImpl> get copyWith =>
      __$$ChatRoomResponseImplCopyWithImpl<_$ChatRoomResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatRoomResponseImplToJson(this);
  }
}

abstract class _ChatRoomResponse implements ChatRoomResponse {
  const factory _ChatRoomResponse({
    required final int id,
    required final int matchId,
    required final ChatRoomStatus status,
    required final ProfileCardResponse partner,
    final List<ProfileCardResponse> participants,
    required final DateTime createdAt,
    final DateTime? endedAt,
    final int unreadCount,
    final ChatMessageResponse? lastMessage,
    final DateTime? lastMessageAt,
  }) = _$ChatRoomResponseImpl;

  factory _ChatRoomResponse.fromJson(Map<String, dynamic> json) =
      _$ChatRoomResponseImpl.fromJson;

  @override
  int get id;
  @override
  int get matchId;
  @override
  ChatRoomStatus get status;
  @override
  ProfileCardResponse get partner;
  @override
  List<ProfileCardResponse> get participants;
  @override
  DateTime get createdAt;
  @override
  DateTime? get endedAt;
  @override
  int get unreadCount;
  @override
  ChatMessageResponse? get lastMessage;
  @override
  DateTime? get lastMessageAt;

  /// Create a copy of ChatRoomResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatRoomResponseImplCopyWith<_$ChatRoomResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessageRequest _$SendMessageRequestFromJson(Map<String, dynamic> json) {
  return _SendMessageRequest.fromJson(json);
}

/// @nodoc
mixin _$SendMessageRequest {
  String get content => throw _privateConstructorUsedError;
  String? get clientMessageId => throw _privateConstructorUsedError;

  /// Serializes this SendMessageRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SendMessageRequestCopyWith<SendMessageRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageRequestCopyWith<$Res> {
  factory $SendMessageRequestCopyWith(
    SendMessageRequest value,
    $Res Function(SendMessageRequest) then,
  ) = _$SendMessageRequestCopyWithImpl<$Res, SendMessageRequest>;
  @useResult
  $Res call({String content, String? clientMessageId});
}

/// @nodoc
class _$SendMessageRequestCopyWithImpl<$Res, $Val extends SendMessageRequest>
    implements $SendMessageRequestCopyWith<$Res> {
  _$SendMessageRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null, Object? clientMessageId = freezed}) {
    return _then(
      _value.copyWith(
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String,
            clientMessageId: freezed == clientMessageId
                ? _value.clientMessageId
                : clientMessageId // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SendMessageRequestImplCopyWith<$Res>
    implements $SendMessageRequestCopyWith<$Res> {
  factory _$$SendMessageRequestImplCopyWith(
    _$SendMessageRequestImpl value,
    $Res Function(_$SendMessageRequestImpl) then,
  ) = __$$SendMessageRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String content, String? clientMessageId});
}

/// @nodoc
class __$$SendMessageRequestImplCopyWithImpl<$Res>
    extends _$SendMessageRequestCopyWithImpl<$Res, _$SendMessageRequestImpl>
    implements _$$SendMessageRequestImplCopyWith<$Res> {
  __$$SendMessageRequestImplCopyWithImpl(
    _$SendMessageRequestImpl _value,
    $Res Function(_$SendMessageRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? content = null, Object? clientMessageId = freezed}) {
    return _then(
      _$SendMessageRequestImpl(
        content: null == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String,
        clientMessageId: freezed == clientMessageId
            ? _value.clientMessageId
            : clientMessageId // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SendMessageRequestImpl implements _SendMessageRequest {
  const _$SendMessageRequestImpl({required this.content, this.clientMessageId});

  factory _$SendMessageRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$SendMessageRequestImplFromJson(json);

  @override
  final String content;
  @override
  final String? clientMessageId;

  @override
  String toString() {
    return 'SendMessageRequest(content: $content, clientMessageId: $clientMessageId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendMessageRequestImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.clientMessageId, clientMessageId) ||
                other.clientMessageId == clientMessageId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, content, clientMessageId);

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendMessageRequestImplCopyWith<_$SendMessageRequestImpl> get copyWith =>
      __$$SendMessageRequestImplCopyWithImpl<_$SendMessageRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$SendMessageRequestImplToJson(this);
  }
}

abstract class _SendMessageRequest implements SendMessageRequest {
  const factory _SendMessageRequest({
    required final String content,
    final String? clientMessageId,
  }) = _$SendMessageRequestImpl;

  factory _SendMessageRequest.fromJson(Map<String, dynamic> json) =
      _$SendMessageRequestImpl.fromJson;

  @override
  String get content;
  @override
  String? get clientMessageId;

  /// Create a copy of SendMessageRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendMessageRequestImplCopyWith<_$SendMessageRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MarkReadRequest _$MarkReadRequestFromJson(Map<String, dynamic> json) {
  return _MarkReadRequest.fromJson(json);
}

/// @nodoc
mixin _$MarkReadRequest {
  int? get upToMessageId => throw _privateConstructorUsedError;
  DateTime? get upToTimestamp => throw _privateConstructorUsedError;

  /// Serializes this MarkReadRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarkReadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarkReadRequestCopyWith<MarkReadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarkReadRequestCopyWith<$Res> {
  factory $MarkReadRequestCopyWith(
    MarkReadRequest value,
    $Res Function(MarkReadRequest) then,
  ) = _$MarkReadRequestCopyWithImpl<$Res, MarkReadRequest>;
  @useResult
  $Res call({int? upToMessageId, DateTime? upToTimestamp});
}

/// @nodoc
class _$MarkReadRequestCopyWithImpl<$Res, $Val extends MarkReadRequest>
    implements $MarkReadRequestCopyWith<$Res> {
  _$MarkReadRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarkReadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upToMessageId = freezed,
    Object? upToTimestamp = freezed,
  }) {
    return _then(
      _value.copyWith(
            upToMessageId: freezed == upToMessageId
                ? _value.upToMessageId
                : upToMessageId // ignore: cast_nullable_to_non_nullable
                      as int?,
            upToTimestamp: freezed == upToTimestamp
                ? _value.upToTimestamp
                : upToTimestamp // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MarkReadRequestImplCopyWith<$Res>
    implements $MarkReadRequestCopyWith<$Res> {
  factory _$$MarkReadRequestImplCopyWith(
    _$MarkReadRequestImpl value,
    $Res Function(_$MarkReadRequestImpl) then,
  ) = __$$MarkReadRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? upToMessageId, DateTime? upToTimestamp});
}

/// @nodoc
class __$$MarkReadRequestImplCopyWithImpl<$Res>
    extends _$MarkReadRequestCopyWithImpl<$Res, _$MarkReadRequestImpl>
    implements _$$MarkReadRequestImplCopyWith<$Res> {
  __$$MarkReadRequestImplCopyWithImpl(
    _$MarkReadRequestImpl _value,
    $Res Function(_$MarkReadRequestImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MarkReadRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? upToMessageId = freezed,
    Object? upToTimestamp = freezed,
  }) {
    return _then(
      _$MarkReadRequestImpl(
        upToMessageId: freezed == upToMessageId
            ? _value.upToMessageId
            : upToMessageId // ignore: cast_nullable_to_non_nullable
                  as int?,
        upToTimestamp: freezed == upToTimestamp
            ? _value.upToTimestamp
            : upToTimestamp // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MarkReadRequestImpl implements _MarkReadRequest {
  const _$MarkReadRequestImpl({this.upToMessageId, this.upToTimestamp});

  factory _$MarkReadRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarkReadRequestImplFromJson(json);

  @override
  final int? upToMessageId;
  @override
  final DateTime? upToTimestamp;

  @override
  String toString() {
    return 'MarkReadRequest(upToMessageId: $upToMessageId, upToTimestamp: $upToTimestamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkReadRequestImpl &&
            (identical(other.upToMessageId, upToMessageId) ||
                other.upToMessageId == upToMessageId) &&
            (identical(other.upToTimestamp, upToTimestamp) ||
                other.upToTimestamp == upToTimestamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, upToMessageId, upToTimestamp);

  /// Create a copy of MarkReadRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkReadRequestImplCopyWith<_$MarkReadRequestImpl> get copyWith =>
      __$$MarkReadRequestImplCopyWithImpl<_$MarkReadRequestImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$MarkReadRequestImplToJson(this);
  }
}

abstract class _MarkReadRequest implements MarkReadRequest {
  const factory _MarkReadRequest({
    final int? upToMessageId,
    final DateTime? upToTimestamp,
  }) = _$MarkReadRequestImpl;

  factory _MarkReadRequest.fromJson(Map<String, dynamic> json) =
      _$MarkReadRequestImpl.fromJson;

  @override
  int? get upToMessageId;
  @override
  DateTime? get upToTimestamp;

  /// Create a copy of MarkReadRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarkReadRequestImplCopyWith<_$MarkReadRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Icebreaker _$IcebreakerFromJson(Map<String, dynamic> json) {
  return _Icebreaker.fromJson(json);
}

/// @nodoc
mixin _$Icebreaker {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  /// Serializes this Icebreaker to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Icebreaker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IcebreakerCopyWith<Icebreaker> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IcebreakerCopyWith<$Res> {
  factory $IcebreakerCopyWith(
    Icebreaker value,
    $Res Function(Icebreaker) then,
  ) = _$IcebreakerCopyWithImpl<$Res, Icebreaker>;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$IcebreakerCopyWithImpl<$Res, $Val extends Icebreaker>
    implements $IcebreakerCopyWith<$Res> {
  _$IcebreakerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Icebreaker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? text = null}) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            text: null == text
                ? _value.text
                : text // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IcebreakerImplCopyWith<$Res>
    implements $IcebreakerCopyWith<$Res> {
  factory _$$IcebreakerImplCopyWith(
    _$IcebreakerImpl value,
    $Res Function(_$IcebreakerImpl) then,
  ) = __$$IcebreakerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$$IcebreakerImplCopyWithImpl<$Res>
    extends _$IcebreakerCopyWithImpl<$Res, _$IcebreakerImpl>
    implements _$$IcebreakerImplCopyWith<$Res> {
  __$$IcebreakerImplCopyWithImpl(
    _$IcebreakerImpl _value,
    $Res Function(_$IcebreakerImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Icebreaker
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? id = null, Object? text = null}) {
    return _then(
      _$IcebreakerImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        text: null == text
            ? _value.text
            : text // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IcebreakerImpl implements _Icebreaker {
  const _$IcebreakerImpl({required this.id, required this.text});

  factory _$IcebreakerImpl.fromJson(Map<String, dynamic> json) =>
      _$$IcebreakerImplFromJson(json);

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'Icebreaker(id: $id, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IcebreakerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  /// Create a copy of Icebreaker
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IcebreakerImplCopyWith<_$IcebreakerImpl> get copyWith =>
      __$$IcebreakerImplCopyWithImpl<_$IcebreakerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IcebreakerImplToJson(this);
  }
}

abstract class _Icebreaker implements Icebreaker {
  const factory _Icebreaker({
    required final String id,
    required final String text,
  }) = _$IcebreakerImpl;

  factory _Icebreaker.fromJson(Map<String, dynamic> json) =
      _$IcebreakerImpl.fromJson;

  @override
  String get id;
  @override
  String get text;

  /// Create a copy of Icebreaker
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IcebreakerImplCopyWith<_$IcebreakerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IcebreakerListResponse _$IcebreakerListResponseFromJson(
  Map<String, dynamic> json,
) {
  return _IcebreakerListResponse.fromJson(json);
}

/// @nodoc
mixin _$IcebreakerListResponse {
  List<Icebreaker> get items => throw _privateConstructorUsedError;

  /// Serializes this IcebreakerListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IcebreakerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IcebreakerListResponseCopyWith<IcebreakerListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IcebreakerListResponseCopyWith<$Res> {
  factory $IcebreakerListResponseCopyWith(
    IcebreakerListResponse value,
    $Res Function(IcebreakerListResponse) then,
  ) = _$IcebreakerListResponseCopyWithImpl<$Res, IcebreakerListResponse>;
  @useResult
  $Res call({List<Icebreaker> items});
}

/// @nodoc
class _$IcebreakerListResponseCopyWithImpl<
  $Res,
  $Val extends IcebreakerListResponse
>
    implements $IcebreakerListResponseCopyWith<$Res> {
  _$IcebreakerListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IcebreakerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _value.copyWith(
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<Icebreaker>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$IcebreakerListResponseImplCopyWith<$Res>
    implements $IcebreakerListResponseCopyWith<$Res> {
  factory _$$IcebreakerListResponseImplCopyWith(
    _$IcebreakerListResponseImpl value,
    $Res Function(_$IcebreakerListResponseImpl) then,
  ) = __$$IcebreakerListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Icebreaker> items});
}

/// @nodoc
class __$$IcebreakerListResponseImplCopyWithImpl<$Res>
    extends
        _$IcebreakerListResponseCopyWithImpl<$Res, _$IcebreakerListResponseImpl>
    implements _$$IcebreakerListResponseImplCopyWith<$Res> {
  __$$IcebreakerListResponseImplCopyWithImpl(
    _$IcebreakerListResponseImpl _value,
    $Res Function(_$IcebreakerListResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of IcebreakerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? items = null}) {
    return _then(
      _$IcebreakerListResponseImpl(
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<Icebreaker>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$IcebreakerListResponseImpl implements _IcebreakerListResponse {
  const _$IcebreakerListResponseImpl({
    final List<Icebreaker> items = const <Icebreaker>[],
  }) : _items = items;

  factory _$IcebreakerListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$IcebreakerListResponseImplFromJson(json);

  final List<Icebreaker> _items;
  @override
  @JsonKey()
  List<Icebreaker> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'IcebreakerListResponse(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IcebreakerListResponseImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of IcebreakerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IcebreakerListResponseImplCopyWith<_$IcebreakerListResponseImpl>
  get copyWith =>
      __$$IcebreakerListResponseImplCopyWithImpl<_$IcebreakerListResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$IcebreakerListResponseImplToJson(this);
  }
}

abstract class _IcebreakerListResponse implements IcebreakerListResponse {
  const factory _IcebreakerListResponse({final List<Icebreaker> items}) =
      _$IcebreakerListResponseImpl;

  factory _IcebreakerListResponse.fromJson(Map<String, dynamic> json) =
      _$IcebreakerListResponseImpl.fromJson;

  @override
  List<Icebreaker> get items;

  /// Create a copy of IcebreakerListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IcebreakerListResponseImplCopyWith<_$IcebreakerListResponseImpl>
  get copyWith => throw _privateConstructorUsedError;
}

WsChatMessageEnvelope _$WsChatMessageEnvelopeFromJson(
  Map<String, dynamic> json,
) {
  return _WsChatMessageEnvelope.fromJson(json);
}

/// @nodoc
mixin _$WsChatMessageEnvelope {
  WsEnvelopeType get type => throw _privateConstructorUsedError;
  ChatMessageResponse get payload => throw _privateConstructorUsedError;

  /// Serializes this WsChatMessageEnvelope to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WsChatMessageEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WsChatMessageEnvelopeCopyWith<WsChatMessageEnvelope> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WsChatMessageEnvelopeCopyWith<$Res> {
  factory $WsChatMessageEnvelopeCopyWith(
    WsChatMessageEnvelope value,
    $Res Function(WsChatMessageEnvelope) then,
  ) = _$WsChatMessageEnvelopeCopyWithImpl<$Res, WsChatMessageEnvelope>;
  @useResult
  $Res call({WsEnvelopeType type, ChatMessageResponse payload});

  $ChatMessageResponseCopyWith<$Res> get payload;
}

/// @nodoc
class _$WsChatMessageEnvelopeCopyWithImpl<
  $Res,
  $Val extends WsChatMessageEnvelope
>
    implements $WsChatMessageEnvelopeCopyWith<$Res> {
  _$WsChatMessageEnvelopeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WsChatMessageEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? payload = null}) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as WsEnvelopeType,
            payload: null == payload
                ? _value.payload
                : payload // ignore: cast_nullable_to_non_nullable
                      as ChatMessageResponse,
          )
          as $Val,
    );
  }

  /// Create a copy of WsChatMessageEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChatMessageResponseCopyWith<$Res> get payload {
    return $ChatMessageResponseCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WsChatMessageEnvelopeImplCopyWith<$Res>
    implements $WsChatMessageEnvelopeCopyWith<$Res> {
  factory _$$WsChatMessageEnvelopeImplCopyWith(
    _$WsChatMessageEnvelopeImpl value,
    $Res Function(_$WsChatMessageEnvelopeImpl) then,
  ) = __$$WsChatMessageEnvelopeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({WsEnvelopeType type, ChatMessageResponse payload});

  @override
  $ChatMessageResponseCopyWith<$Res> get payload;
}

/// @nodoc
class __$$WsChatMessageEnvelopeImplCopyWithImpl<$Res>
    extends
        _$WsChatMessageEnvelopeCopyWithImpl<$Res, _$WsChatMessageEnvelopeImpl>
    implements _$$WsChatMessageEnvelopeImplCopyWith<$Res> {
  __$$WsChatMessageEnvelopeImplCopyWithImpl(
    _$WsChatMessageEnvelopeImpl _value,
    $Res Function(_$WsChatMessageEnvelopeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of WsChatMessageEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? type = null, Object? payload = null}) {
    return _then(
      _$WsChatMessageEnvelopeImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as WsEnvelopeType,
        payload: null == payload
            ? _value.payload
            : payload // ignore: cast_nullable_to_non_nullable
                  as ChatMessageResponse,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$WsChatMessageEnvelopeImpl implements _WsChatMessageEnvelope {
  const _$WsChatMessageEnvelopeImpl({
    required this.type,
    required this.payload,
  });

  factory _$WsChatMessageEnvelopeImpl.fromJson(Map<String, dynamic> json) =>
      _$$WsChatMessageEnvelopeImplFromJson(json);

  @override
  final WsEnvelopeType type;
  @override
  final ChatMessageResponse payload;

  @override
  String toString() {
    return 'WsChatMessageEnvelope(type: $type, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WsChatMessageEnvelopeImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, payload);

  /// Create a copy of WsChatMessageEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WsChatMessageEnvelopeImplCopyWith<_$WsChatMessageEnvelopeImpl>
  get copyWith =>
      __$$WsChatMessageEnvelopeImplCopyWithImpl<_$WsChatMessageEnvelopeImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$WsChatMessageEnvelopeImplToJson(this);
  }
}

abstract class _WsChatMessageEnvelope implements WsChatMessageEnvelope {
  const factory _WsChatMessageEnvelope({
    required final WsEnvelopeType type,
    required final ChatMessageResponse payload,
  }) = _$WsChatMessageEnvelopeImpl;

  factory _WsChatMessageEnvelope.fromJson(Map<String, dynamic> json) =
      _$WsChatMessageEnvelopeImpl.fromJson;

  @override
  WsEnvelopeType get type;
  @override
  ChatMessageResponse get payload;

  /// Create a copy of WsChatMessageEnvelope
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WsChatMessageEnvelopeImplCopyWith<_$WsChatMessageEnvelopeImpl>
  get copyWith => throw _privateConstructorUsedError;
}
