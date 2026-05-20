import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../data/stomp_client.dart';

/// Thin banner shown under the header when the WS link is reconnecting or
/// down. Yellow-grey (not red — strategist 2.2).
class ConnectionBanner extends StatelessWidget {
  const ConnectionBanner({super.key, required this.state, this.onRetry});

  final WsConnectionState state;
  final VoidCallback? onRetry;

  @override
  Widget build(BuildContext context) {
    if (state == WsConnectionState.connected ||
        state == WsConnectionState.idle) {
      return const SizedBox.shrink();
    }
    final disconnected = state == WsConnectionState.disconnected;
    return Container(
      width: double.infinity,
      height: 32,
      color: const Color(0xFFFFF6E0),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(Icons.wifi_protected_setup,
              size: 16, color: AppColors.warning),
          const SizedBox(width: 8),
          const Expanded(
            child: Text(
              '잠시 연결을 확인하고 있어요',
              style: TextStyle(
                fontSize: 13,
                color: AppColors.textPrimary,
                height: 1.2,
              ),
            ),
          ),
          if (disconnected && onRetry != null)
            TextButton(
              onPressed: onRetry,
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                padding: const EdgeInsets.symmetric(horizontal: 8),
                visualDensity: VisualDensity.compact,
              ),
              child: const Text('다시 시도', style: TextStyle(fontSize: 13)),
            ),
        ],
      ),
    );
  }
}
