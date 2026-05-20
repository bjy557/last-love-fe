import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';

/// 64dp circular PASS / LIKE buttons with always-visible text labels.
/// Strategist 1.4 / 6.2 - large touch target + label so 40+ users never
/// confuse the icon.
class SwipeActionButtons extends StatelessWidget {
  const SwipeActionButtons({
    super.key,
    required this.onPass,
    required this.onLike,
    this.enabled = true,
  });

  final VoidCallback onPass;
  final VoidCallback onLike;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _ActionButton(
          icon: Icons.close_rounded,
          label: '이번엔 다음에',
          backgroundColor: Colors.white,
          foregroundColor: AppColors.textSecondary,
          borderColor: AppColors.outlineStrong,
          onPressed: enabled ? onPass : null,
        ),
        _ActionButton(
          icon: Icons.favorite_rounded,
          label: '마음 전하기',
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          borderColor: AppColors.primary,
          onPressed: enabled ? onLike : null,
        ),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.borderColor,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color borderColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final disabled = onPressed == null;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: disabled ? AppColors.disabledBackground : backgroundColor,
          shape: CircleBorder(
            side: BorderSide(
              color: disabled ? AppColors.outline : borderColor,
              width: 1.5,
            ),
          ),
          elevation: 0,
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: onPressed,
            child: SizedBox(
              width: 64,
              height: 64,
              child: Icon(
                icon,
                size: 28,
                color: disabled ? AppColors.disabledForeground : foregroundColor,
              ),
            ),
          ),
        ),
        const SizedBox(height: AppSpacing.xs),
        Text(
          label,
          style: AppTextStyles.captionMuted.copyWith(
            color: disabled
                ? AppColors.disabledForeground
                : AppColors.textSecondary,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
