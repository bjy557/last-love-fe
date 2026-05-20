import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

/// Result of [showChatActionsSheet]. `null` if the user dismissed.
enum ChatActionsResult {
  report,
  block,
  endMatch,
}

/// BottomSheet with the three "safety" actions + cancel. Buttons are 56dp.
Future<ChatActionsResult?> showChatActionsSheet(BuildContext context) {
  return showModalBottomSheet<ChatActionsResult>(
    context: context,
    showDragHandle: true,
    builder: (sheetCtx) {
      return SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _ActionRow(
              icon: Icons.flag_outlined,
              label: '신고하기',
              onTap: () =>
                  Navigator.of(sheetCtx).pop(ChatActionsResult.report),
            ),
            _ActionRow(
              icon: Icons.visibility_off_outlined,
              label: '이 분 보지 않기',
              onTap: () =>
                  Navigator.of(sheetCtx).pop(ChatActionsResult.block),
            ),
            _ActionRow(
              icon: Icons.close_rounded,
              label: '이 인연 종료하기',
              onTap: () =>
                  Navigator.of(sheetCtx).pop(ChatActionsResult.endMatch),
            ),
            const Divider(height: 1, color: AppColors.outline),
            _ActionRow(
              icon: Icons.arrow_back,
              label: '닫기',
              muted: true,
              onTap: () => Navigator.of(sheetCtx).pop(),
            ),
            const SizedBox(height: 8),
          ],
        ),
      );
    },
  );
}

class _ActionRow extends StatelessWidget {
  const _ActionRow({
    required this.icon,
    required this.label,
    required this.onTap,
    this.muted = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool muted;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minHeight: 56),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: Row(
          children: [
            Icon(icon,
                size: 24,
                color: muted
                    ? AppColors.textSecondary
                    : AppColors.textPrimary),
            const SizedBox(width: 16),
            Text(
              label,
              style: AppTextStyles.body.copyWith(
                fontSize: 16,
                color: muted
                    ? AppColors.textSecondary
                    : AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
