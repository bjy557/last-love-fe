import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';
import '../../auth/application/auth_controller.dart';

/// Placeholder home/swipe screen. Real implementation lands in Round 6.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Last Love'),
        actions: [
          IconButton(
            tooltip: '로그아웃',
            icon: const Icon(Icons.logout, size: 26),
            onPressed: () =>
                ref.read(authControllerProvider.notifier).signOut(),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              const Text('인연을 찾아드릴게요',
                  style: AppTextStyles.h1, textAlign: TextAlign.center),
              const SizedBox(height: AppSpacing.m),
              const Text(
                '스와이프 데크는 다음 업데이트에 준비할게요.',
                style: AppTextStyles.bodyMuted,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              PrimaryButton(label: '잠깐 둘러보기', onPressed: () {}),
              const SizedBox(height: AppSpacing.l),
            ],
          ),
        ),
      ),
    );
  }
}
