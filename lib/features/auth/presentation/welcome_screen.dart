import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';

class WelcomeScreen extends ConsumerWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.l,
            vertical: AppSpacing.xl,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppSpacing.xl),
              const Text('Last Love', style: AppTextStyles.h1),
              const SizedBox(height: 4),
              const Text('끝사랑', style: AppTextStyles.bodyMuted),
              const Spacer(),
              Container(
                height: 220,
                decoration: BoxDecoration(
                  color: AppColors.surfaceVariant,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Center(
                  child: Icon(Icons.favorite,
                      size: 80, color: AppColors.primaryLight),
                ),
              ),
              const SizedBox(height: AppSpacing.xl),
              const Text(
                '인생의 다음 챕터를 함께',
                style: AppTextStyles.h1,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSpacing.s),
              const Text(
                '이혼·사별·싱글, 마흔이 넘은 진지한 인연을 위한 곳이에요',
                style: AppTextStyles.bodyMuted,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              PrimaryButton(
                label: '시작하기',
                onPressed: () => context.go('/agreement'),
              ),
              const SizedBox(height: AppSpacing.m),
              TextButton(
                onPressed: () => context.go('/phone'),
                child: const Text('이미 가입했어요'),
              ),
              const SizedBox(height: AppSpacing.s),
            ],
          ),
        ),
      ),
    );
  }
}
