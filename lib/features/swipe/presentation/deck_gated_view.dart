import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';

/// Maps BE gating errors to friendly screens (strategist 7.1).
/// Inline branching - we deliberately avoid router guards (race + deep
/// link issues).
class DeckGatedView extends ConsumerWidget {
  const DeckGatedView({super.key, required this.error});

  final ApiError error;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final config = _configFor(error.code);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Icon(config.icon, size: 80, color: AppColors.primaryLight),
            const SizedBox(height: AppSpacing.l),
            Text(config.title,
                style: AppTextStyles.h1, textAlign: TextAlign.center),
            const SizedBox(height: AppSpacing.m),
            Text(config.body,
                style: AppTextStyles.bodyMuted, textAlign: TextAlign.center),
            const SizedBox(height: AppSpacing.xl),
            if (config.primaryRoute != null)
              PrimaryButton(
                label: config.primaryLabel,
                onPressed: () => context.go(config.primaryRoute!),
              ),
          ],
        ),
      ),
    );
  }

  _GateConfig _configFor(String code) {
    switch (code) {
      case 'PROFILE_INCOMPLETE_FOR_SWIPE':
        return const _GateConfig(
          icon: Icons.edit_note_rounded,
          title: '프로필을 마저 작성해 주세요',
          body: '먼저 정해두면 좋은 5가지를 채우면\n인연 만나기를 시작할 수 있어요.',
          primaryLabel: '프로필 마저 작성하기',
          primaryRoute: '/profile-setup/step1',
        );
      case 'NO_APPROVED_PHOTOS':
        return const _GateConfig(
          icon: Icons.photo_camera_outlined,
          title: '사진을 1장 이상 올려주세요',
          body: '사진 검수가 끝나면\n인연 만나기를 시작할 수 있어요.',
          primaryLabel: '사진 올리기',
          primaryRoute: '/profile-setup/photo',
        );
      case 'ACCOUNT_SUSPENDED':
        return const _GateConfig(
          icon: Icons.lock_outline_rounded,
          title: '이용이 일시 제한되었어요',
          body: '자세한 안내가 필요하면\n고객센터로 문의해 주세요.',
        );
      default:
        return _GateConfig(
          icon: Icons.error_outline,
          title: '잠시 문제가 생겼어요',
          body: error.message,
        );
    }
  }
}

class _GateConfig {
  const _GateConfig({
    required this.icon,
    required this.title,
    required this.body,
    this.primaryLabel = '확인',
    this.primaryRoute,
  });

  final IconData icon;
  final String title;
  final String body;
  final String primaryLabel;
  final String? primaryRoute;
}
