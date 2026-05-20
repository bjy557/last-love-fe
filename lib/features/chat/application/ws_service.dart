import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../../auth/application/auth_controller.dart';
import '../../auth/application/auth_state.dart';
import '../data/stomp_client.dart';

part 'ws_service.g.dart';

/// App-global STOMP service. Connects when the user becomes authenticated
/// and disconnects on sign-out / token loss. Other features subscribe to
/// topics via [StompService.subscribe].
///
/// We listen to [authControllerProvider] so token rotation and logout flow
/// naturally trigger reconnection or shutdown without per-screen wiring.
@Riverpod(keepAlive: true)
class WsService extends _$WsService {
  StompService? _client;

  @override
  StompService build() {
    final client = StompService();
    _client = client;

    // React to auth state.
    ref.listen<AuthState>(authControllerProvider, (prev, next) {
      _syncAuth(next);
    }, fireImmediately: true);

    ref.onDispose(() async {
      await client.dispose();
    });

    return client;
  }

  Future<void> _syncAuth(AuthState auth) async {
    final client = _client;
    if (client == null) return;
    if (auth.status != AuthStatus.authenticated) {
      client.disconnect();
      return;
    }
    final storage = ref.read(secureTokenStorageProvider);
    final token = await storage.readAccessToken();
    if (token == null || token.isEmpty) {
      client.disconnect();
      return;
    }
    client.connect(accessToken: token);
    // Global personal queue for match/system notifications. Idempotent—
    // subscribing again with the same destination replaces the handler.
    client.subscribe(
      '/user/queue/notifications',
      onPayload: (json) {
        if (kDebugMode) {
          debugPrint('[ws] notification: $json');
        }
        // Per-feature listeners react via WsNotificationEnvelope.fromJson
        // once a notifications stream provider is wired (next round).
      },
    );
  }

  /// Force a fresh connect using the current access token (e.g. after a
  /// foreground resume).
  Future<void> kickReconnect() async {
    final storage = ref.read(secureTokenStorageProvider);
    final token = await storage.readAccessToken();
    if (token == null || token.isEmpty) return;
    _client?.connect(accessToken: token);
    _client?.reconnect();
  }
}

/// Sugar provider that streams the WS connection state. The chat screen
/// watches this to render the "잠시 연결을 확인하고 있어요" banner.
@riverpod
Stream<WsConnectionState> wsConnectionState(Ref ref) async* {
  final client = ref.watch(wsServiceProvider);
  yield client.state;
  yield* client.stateStream;
}
