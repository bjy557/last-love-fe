import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';

class AgeNotEligibleScreen extends StatelessWidget {
  const AgeNotEligibleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const Icon(Icons.hourglass_bottom,
                  size: 80, color: AppColors.primaryLight),
              const SizedBox(height: AppSpacing.l),
              const Text(
                '지금은 만나뵙기 어려워요',
                style: AppTextStyles.h1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.m),
              const Text(
                'Last Love는 만 40세 이상부터 이용할 수 있어요.\n'
                '인생의 다음 챕터를 함께 준비하는 분들을 위해 만들었어요.\n'
                '충분한 시간이 지난 뒤 다시 만나뵙길 바랍니다.',
                style: AppTextStyles.body,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              PrimaryButton(
                label: '처음으로',
                onPressed: () => context.go('/welcome'),
              ),
              const SizedBox(height: AppSpacing.l),
            ],
          ),
        ),
      ),
    );
  }
}
