import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text_styles.dart';

/// Common scaffold for onboarding screens.
/// - 단계 N/5 라벨 (no progress bar to avoid pressure).
/// - 16-24 horizontal padding.
class LLScaffold extends StatelessWidget {
  const LLScaffold({
    super.key,
    required this.child,
    this.title,
    this.stepLabel,
    this.showBack = true,
    this.bottom,
    this.onBack,
  });

  final Widget child;
  final String? title;
  final String? stepLabel;
  final bool showBack;
  final Widget? bottom;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: showBack
            ? IconButton(
                icon: const Icon(Icons.arrow_back, size: 28),
                tooltip: '뒤로',
                onPressed: onBack ?? () => Navigator.of(context).maybePop(),
              )
            : null,
        title: title == null ? null : Text(title!),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.l,
            vertical: AppSpacing.m,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              if (stepLabel != null) ...[
                _StepBadge(label: stepLabel!),
                const SizedBox(height: AppSpacing.m),
              ],
              Expanded(child: child),
              if (bottom != null) ...[
                const SizedBox(height: AppSpacing.m),
                bottom!,
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _StepBadge extends StatelessWidget {
  const _StepBadge({required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: AppColors.surfaceVariant,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(label, style: AppTextStyles.captionMuted),
      ),
    );
  }
}
