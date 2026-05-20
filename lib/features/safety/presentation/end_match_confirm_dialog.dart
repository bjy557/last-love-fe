import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

/// Confirmation dialog for "end this match" (delete /matches/{id}).
/// Distinguishes itself from block by noting that recommendation can
/// re-surface this person (strategist 7).
Future<bool> showEndMatchConfirmDialog(BuildContext context) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (dialogCtx) => AlertDialog(
      title: const Text('이 인연을 종료할까요?', style: AppTextStyles.h3),
      content: const Text(
        '더 이상 메시지를 주고받지 않아요. '
        '추천에서 다시 만날 수도 있어요.',
        style: AppTextStyles.body,
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(dialogCtx).pop(false),
          child: const Text('취소'),
        ),
        TextButton(
          style:
              TextButton.styleFrom(foregroundColor: AppColors.primary),
          onPressed: () => Navigator.of(dialogCtx).pop(true),
          child: const Text('종료하기'),
        ),
      ],
    ),
  );
  return result ?? false;
}
