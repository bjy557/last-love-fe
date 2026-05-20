import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../../auth/application/auth_controller.dart';

class ProfileSetupIntroScreen extends ConsumerWidget {
  const ProfileSetupIntroScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authControllerProvider).user;
    final name = user == null ? '회원' : '회원 #${user.id}';
    return LLScaffold(
      title: '프로필 만들기',
      stepLabel: '단계 4 / 5',
      showBack: false,
      bottom: Column(
        children: [
          PrimaryButton(
            label: '시작할게요',
            onPressed: () => context.go('/profile-setup/step1'),
          ),
          const SizedBox(height: AppSpacing.s),
          TextButton(
            onPressed: () => context.go('/home'),
            child: const Text('나중에 작성할게요'),
          ),
        ],
      ),
      child: Column(
        children: [
          const Spacer(),
          Container(
            padding: const EdgeInsets.all(AppSpacing.l),
            decoration: BoxDecoration(
              color: AppColors.surfaceVariant,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Text('환영해요, $name님', style: AppTextStyles.h2),
                const SizedBox(height: AppSpacing.m),
                const Text(
                  '이제 당신을 어떻게 소개할지 함께 정해볼까요.\n'
                  '먼저 정해두면 좋은 4가지부터 시작해요.\n'
                  '3분이면 충분해요.',
                  style: AppTextStyles.body,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
