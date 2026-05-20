import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';

/// Shown when the BE returns `allViewed: true` or the deck is locally
/// exhausted. Strategist 1.7 - calm copy, no "refresh for more" dark
/// patterns.
class DeckEmptyView extends ConsumerWidget {
  const DeckEmptyView({super.key, this.resetsAt});

  /// Optional KST midnight when the next deck appears.
  final DateTime? resetsAt;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Icon(
              Icons.wb_twilight,
              size: 96,
              color: AppColors.primaryLight,
            ),
            const SizedBox(height: AppSpacing.l),
            const Text(
              '오늘의 인연을 모두 만나보셨어요',
              style: AppTextStyles.h1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.m),
            const Text(
              '내일 새로 준비해서 소개해 드릴게요.\n매일 한 번씩, 천천히 만나요.',
              style: AppTextStyles.bodyMuted,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppSpacing.xl),
            PrimaryButton(
              label: '인연이 닿은 분 보기',
              onPressed: () => context.push('/matches'),
            ),
            const SizedBox(height: AppSpacing.m),
            OutlinedButton(
              onPressed: () => context.push('/preferences'),
              child: const Text('어떤 분을 만날지 다시 정하기'),
            ),
          ],
        ),
      ),
    );
  }
}
