// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ws_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wsConnectionStateHash() => r'ae67de5616c1a97e6835c83a0e8926c417da0454';

/// Sugar provider that streams the WS connection state. The chat screen
/// watches this to render the "잠시 연결을 확인하고 있어요" banner.
///
/// Copied from [wsConnectionState].
@ProviderFor(wsConnectionState)
final wsConnectionStateProvider =
    AutoDisposeStreamProvider<WsConnectionState>.internal(
      wsConnectionState,
      name: r'wsConnectionStateProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$wsConnectionStateHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WsConnectionStateRef = AutoDisposeStreamProviderRef<WsConnectionState>;
String _$wsServiceHash() => r'1f1ec525d3c076321ff3b2293b4a015941bfb6f2';

/// App-global STOMP service. Connects when the user becomes authenticated
/// and disconnects on sign-out / token loss. Other features subscribe to
/// topics via [StompService.subscribe].
///
/// We listen to [authControllerProvider] so token rotation and logout flow
/// naturally trigger reconnection or shutdown without per-screen wiring.
///
/// Copied from [WsService].
@ProviderFor(WsService)
final wsServiceProvider = NotifierProvider<WsService, StompService>.internal(
  WsService.new,
  name: r'wsServiceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$wsServiceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$WsService = Notifier<StompService>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
