import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../domain/chat_models.dart';

/// Empty-state card grid that appears when the chat has zero TEXT messages.
/// Tapping a card hands the text to the input via [onPick].
class IcebreakerCards extends StatelessWidget {
  const IcebreakerCards({
    super.key,
    required this.items,
    required this.partnerName,
    required this.partnerPhotoUrl,
    required this.onPick,
  });

  final List<Icebreaker> items;
  final String partnerName;
  final String? partnerPhotoUrl;
  final void Function(Icebreaker) onPick;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
      children: [
        const SizedBox(height: 32),
        Center(
          child: CircleAvatar(
            radius: 48,
            backgroundColor: AppColors.surfaceVariant,
            backgroundImage: partnerPhotoUrl != null
                ? NetworkImage(partnerPhotoUrl!)
                : null,
            child: partnerPhotoUrl == null
                ? const Icon(Icons.person,
                    size: 48, color: AppColors.outlineStrong)
                : null,
          ),
        ),
        const SizedBox(height: AppSpacing.l),
        const Text(
          '이제 첫 인사를 건네보세요',
          textAlign: TextAlign.center,
          style: AppTextStyles.h2,
        ),
        const SizedBox(height: AppSpacing.s),
        Text(
          '$partnerName님과의 인연이 시작됐어요.\n서두르지 않아도 괜찮아요.',
          textAlign: TextAlign.center,
          style: AppTextStyles.bodyMuted.copyWith(fontSize: 16),
        ),
        const SizedBox(height: AppSpacing.xl),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Text(
            '이런 이야기를 시작해보세요',
            style: AppTextStyles.h3,
          ),
        ),
        const SizedBox(height: AppSpacing.m),
        for (final ice in items) ...[
          _IcebreakerCard(text: ice.text, onTap: () => onPick(ice)),
          const SizedBox(height: AppSpacing.s),
        ],
        const SizedBox(height: AppSpacing.l),
      ],
    );
  }
}

class _IcebreakerCard extends StatelessWidget {
  const _IcebreakerCard({required this.text, required this.onTap});

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surfaceCard,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: onTap,
        child: Container(
          constraints: const BoxConstraints(minHeight: 64),
          padding: const EdgeInsets.all(AppSpacing.m),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: AppColors.outline),
          ),
          child: Text(
            text,
            style: AppTextStyles.body.copyWith(fontSize: 15, height: 1.4),
          ),
        ),
      ),
    );
  }
}
