import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:stomp_dart_client/stomp_dart_client.dart';

import '../../../app/env.dart';

/// Signature used by stomp_dart_client's subscribe callback. Mirrors the
/// `StompUnsubscribe` typedef from the package so we can store it in a map.
typedef _Unsubscribe = void Function({Map<String, String>? unsubscribeHeaders});

/// Connection state of the global STOMP client.
enum WsConnectionState {
  /// Initial / disconnected by request.
  idle,

  /// TCP/handshake in progress or waiting for backoff.
  connecting,

  /// STOMP CONNECTED frame received.
  connected,

  /// Connection lost; will retry unless explicitly stopped.
  disconnected,
}

/// Resolves the STOMP endpoint for the current platform.
///
/// Uses the same host as the REST base URL (Env.baseUrl), swapping the scheme
/// to ws/wss. The BE registers the endpoint at `/api/v1/ws-chat`.
String _resolveWsUrl() {
  final base = Env.baseUrl;
  if (base.startsWith('https://')) {
    return '${base.replaceFirst('https://', 'wss://')}/api/v1/ws-chat';
  }
  if (base.startsWith('http://')) {
    return '${base.replaceFirst('http://', 'ws://')}/api/v1/ws-chat';
  }
  return 'ws://localhost:8080/api/v1/ws-chat';
}

/// Thin wrapper around [StompClient] that exposes:
/// - lifecycle methods ([connect], [disconnect])
/// - a connection-state stream
/// - subscription helpers that hide the unsubscribe-callback dance
///
/// Backoff: 1s -> 2s -> 4s -> 8s -> 16s -> 30s cap. Reconnect attempts only
/// fire while [_keepAlive] is true (i.e. the user is still authenticated).
class StompService {
  StompService();

  StompClient? _client;
  String? _token;
  bool _keepAlive = false;
  Timer? _reconnectTimer;
  int _retryAttempt = 0;

  final _stateController =
      StreamController<WsConnectionState>.broadcast(sync: true);
  WsConnectionState _state = WsConnectionState.idle;

  /// Pending subscription requests keyed by destination. When the client
  /// reconnects we re-subscribe everything in this map. Each entry stores the
  /// payload handler.
  final Map<String, _Subscription> _subs = <String, _Subscription>{};

  /// Active unsubscribe callbacks returned by [StompClient]. Resets on
  /// reconnect.
  final Map<String, _Unsubscribe> _activeUnsub = {};

  Stream<WsConnectionState> get stateStream => _stateController.stream;
  WsConnectionState get state => _state;
  bool get isConnected => _state == WsConnectionState.connected;

  void _setState(WsConnectionState next) {
    if (next == _state) return;
    _state = next;
    if (!_stateController.isClosed) {
      _stateController.add(next);
    }
  }

  /// Establishes (or replaces) the STOMP connection. Safe to call multiple
  /// times - if a connection is already open with the same token nothing
  /// happens.
  void connect({required String accessToken}) {
    if (_client != null && _token == accessToken && isConnected) {
      return;
    }
    _keepAlive = true;
    _token = accessToken;

    // Replace existing client (token rotation).
    _client?.deactivate();
    _client = null;
    _activeUnsub.clear();
    _retryAttempt = 0;

    _spinUp();
  }

  /// Tears down the connection and prevents further auto-reconnects.
  void disconnect() {
    _keepAlive = false;
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    _activeUnsub.clear();
    _subs.clear();
    _client?.deactivate();
    _client = null;
    _setState(WsConnectionState.idle);
  }

  /// Triggers an immediate reconnect using the current token. Used after a
  /// foreground resume or a manual "try again" tap.
  void reconnect() {
    if (_token == null) return;
    _reconnectTimer?.cancel();
    _retryAttempt = 0;
    _client?.deactivate();
    _client = null;
    _spinUp();
  }

  void _spinUp() {
    if (!_keepAlive) return;
    final token = _token;
    if (token == null) return;

    _setState(WsConnectionState.connecting);
    final url = _resolveWsUrl();

    final client = StompClient(
      config: StompConfig(
        url: url,
        stompConnectHeaders: {
          'Authorization': 'Bearer $token',
        },
        // Disable the stomp_dart_client built-in auto-reconnect; we control
        // backoff ourselves so token rotation can hook into it.
        reconnectDelay: Duration.zero,
        heartbeatIncoming: const Duration(seconds: 20),
        heartbeatOutgoing: const Duration(seconds: 20),
        onConnect: _onConnected,
        onDisconnect: (_) => _onDisconnected(reason: 'disconnect'),
        onWebSocketDone: () => _onDisconnected(reason: 'ws-done'),
        onStompError: (frame) {
          if (kDebugMode) {
            debugPrint('[stomp] error frame: ${frame.headers} ${frame.body}');
          }
        },
        onWebSocketError: (e) {
          if (kDebugMode) debugPrint('[stomp] ws error: $e');
        },
      ),
    );

    _client = client;
    client.activate();
  }

  void _onConnected(StompFrame _) {
    _retryAttempt = 0;
    _setState(WsConnectionState.connected);

    // Re-establish subscriptions.
    for (final entry in _subs.entries) {
      _attachSubscription(entry.key, entry.value);
    }
  }

  void _onDisconnected({required String reason}) {
    _activeUnsub.clear();
    if (!_keepAlive) {
      _setState(WsConnectionState.idle);
      return;
    }
    _setState(WsConnectionState.disconnected);
    _scheduleReconnect();
  }

  void _scheduleReconnect() {
    _reconnectTimer?.cancel();
    final delay = _backoffDelay(_retryAttempt);
    _retryAttempt = (_retryAttempt + 1).clamp(0, 10);
    _reconnectTimer = Timer(delay, () {
      if (!_keepAlive) return;
      _spinUp();
    });
  }

  static Duration _backoffDelay(int attempt) {
    const max = 30;
    final secs = (1 << attempt).clamp(1, max);
    return Duration(seconds: secs);
  }

  /// Subscribe to [destination]. The [onPayload] callback receives the parsed
  /// JSON map of the STOMP body. Re-subscribing to the same destination
  /// replaces the previous handler.
  void subscribe(
    String destination, {
    required void Function(Map<String, dynamic> payload) onPayload,
  }) {
    final sub = _Subscription(destination: destination, onPayload: onPayload);
    _subs[destination] = sub;
    if (isConnected) {
      _attachSubscription(destination, sub);
    }
  }

  void _attachSubscription(String destination, _Subscription sub) {
    final client = _client;
    if (client == null || !client.connected) return;
    final unsubscribe = client.subscribe(
      destination: destination,
      callback: (frame) {
        final body = frame.body;
        if (body == null || body.isEmpty) return;
        try {
          final decoded = jsonDecode(body);
          if (decoded is Map<String, dynamic>) {
            sub.onPayload(decoded);
          }
        } on FormatException catch (e) {
          if (kDebugMode) debugPrint('[stomp] bad json on $destination: $e');
        }
      },
    );
    _activeUnsub[destination] = unsubscribe;
  }

  /// Removes a subscription created by [subscribe].
  void unsubscribe(String destination) {
    _subs.remove(destination);
    final unsub = _activeUnsub.remove(destination);
    if (unsub != null) {
      try {
        unsub();
      } on Object catch (e) {
        if (kDebugMode) debugPrint('[stomp] unsubscribe error: $e');
      }
    }
  }

  /// SEND a JSON payload to [destination]. Throws [StateError] when not
  /// connected so the caller can decide whether to fall back to REST.
  void send({
    required String destination,
    required Map<String, dynamic> body,
  }) {
    final client = _client;
    if (client == null || !client.connected) {
      throw StateError('stomp_not_connected');
    }
    client.send(
      destination: destination,
      body: jsonEncode(body),
    );
  }

  Future<void> dispose() async {
    disconnect();
    await _stateController.close();
  }
}

class _Subscription {
  _Subscription({required this.destination, required this.onPayload});

  final String destination;
  final void Function(Map<String, dynamic> payload) onPayload;
}
