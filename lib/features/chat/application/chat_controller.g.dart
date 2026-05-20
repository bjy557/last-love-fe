// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$chatControllerHash() => r'd99c23866ec34e5debaebe07684a1523e931962c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ChatController
    extends BuildlessAutoDisposeNotifier<ChatScreenState> {
  late final int matchId;

  ChatScreenState build(int matchId);
}

/// Controller for a single chat screen, keyed by `matchId`. Owns:
/// - room fetch + message pagination
/// - STOMP subscription lifecycle
/// - optimistic send with REST fallback
/// - read-marker debounce
///
/// Copied from [ChatController].
@ProviderFor(ChatController)
const chatControllerProvider = ChatControllerFamily();

/// Controller for a single chat screen, keyed by `matchId`. Owns:
/// - room fetch + message pagination
/// - STOMP subscription lifecycle
/// - optimistic send with REST fallback
/// - read-marker debounce
///
/// Copied from [ChatController].
class ChatControllerFamily extends Family<ChatScreenState> {
  /// Controller for a single chat screen, keyed by `matchId`. Owns:
  /// - room fetch + message pagination
  /// - STOMP subscription lifecycle
  /// - optimistic send with REST fallback
  /// - read-marker debounce
  ///
  /// Copied from [ChatController].
  const ChatControllerFamily();

  /// Controller for a single chat screen, keyed by `matchId`. Owns:
  /// - room fetch + message pagination
  /// - STOMP subscription lifecycle
  /// - optimistic send with REST fallback
  /// - read-marker debounce
  ///
  /// Copied from [ChatController].
  ChatControllerProvider call(int matchId) {
    return ChatControllerProvider(matchId);
  }

  @override
  ChatControllerProvider getProviderOverride(
    covariant ChatControllerProvider provider,
  ) {
    return call(provider.matchId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'chatControllerProvider';
}

/// Controller for a single chat screen, keyed by `matchId`. Owns:
/// - room fetch + message pagination
/// - STOMP subscription lifecycle
/// - optimistic send with REST fallback
/// - read-marker debounce
///
/// Copied from [ChatController].
class ChatControllerProvider
    extends AutoDisposeNotifierProviderImpl<ChatController, ChatScreenState> {
  /// Controller for a single chat screen, keyed by `matchId`. Owns:
  /// - room fetch + message pagination
  /// - STOMP subscription lifecycle
  /// - optimistic send with REST fallback
  /// - read-marker debounce
  ///
  /// Copied from [ChatController].
  ChatControllerProvider(int matchId)
    : this._internal(
        () => ChatController()..matchId = matchId,
        from: chatControllerProvider,
        name: r'chatControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$chatControllerHash,
        dependencies: ChatControllerFamily._dependencies,
        allTransitiveDependencies:
            ChatControllerFamily._allTransitiveDependencies,
        matchId: matchId,
      );

  ChatControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.matchId,
  }) : super.internal();

  final int matchId;

  @override
  ChatScreenState runNotifierBuild(covariant ChatController notifier) {
    return notifier.build(matchId);
  }

  @override
  Override overrideWith(ChatController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ChatControllerProvider._internal(
        () => create()..matchId = matchId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        matchId: matchId,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<ChatController, ChatScreenState>
  createElement() {
    return _ChatControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ChatControllerProvider && other.matchId == matchId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, matchId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ChatControllerRef on AutoDisposeNotifierProviderRef<ChatScreenState> {
  /// The parameter `matchId` of this provider.
  int get matchId;
}

class _ChatControllerProviderElement
    extends AutoDisposeNotifierProviderElement<ChatController, ChatScreenState>
    with ChatControllerRef {
  _ChatControllerProviderElement(super.provider);

  @override
  int get matchId => (origin as ChatControllerProvider).matchId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
