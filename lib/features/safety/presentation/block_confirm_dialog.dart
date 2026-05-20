import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';

/// Confirmation dialog for "block this person". Resolves to true if the user
/// confirmed. Strategist 6 copy — emphasises that the block cannot be undone.
Future<bool> showBlockConfirmDialog(BuildContext context) async {
  final result = await showDialog<bool>(
    context: context,
    builder: (dialogCtx) => AlertDialog(
      title: const Text('이 분과 더 이상 만나지 않게 됩니다',
          style: AppTextStyles.h3),
      content: const Text(
        '차단하면 서로의 추천에서도, 채팅에서도 보이지 않아요. '
        '차단은 해제할 수 없어요.',
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
          child: const Text('차단하기'),
        ),
      ],
    ),
  );
  return result ?? false;
}
