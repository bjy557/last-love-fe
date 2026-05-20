import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';

/// Top-of-card photo indicator (●○○). Each dot has a 24dp hit-test area
/// even though the visual is smaller.
class PhotoDots extends StatelessWidget {
  const PhotoDots({
    super.key,
    required this.count,
    required this.activeIndex,
  });

  final int count;
  final int activeIndex;

  @override
  Widget build(BuildContext context) {
    if (count <= 1) return const SizedBox.shrink();
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(count, (i) {
        final active = i == activeIndex;
        return Container(
          width: 24,
          height: 24,
          alignment: Alignment.center,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 180),
            width: active ? 10 : 8,
            height: active ? 10 : 8,
            decoration: BoxDecoration(
              color: active ? Colors.white : Colors.white.withValues(alpha: 0.5),
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.textPrimary.withValues(alpha: 0.2),
                width: 0.5,
              ),
            ),
          ),
        );
      }),
    );
  }
}
