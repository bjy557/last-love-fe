import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_spacing.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../auth/domain/auth_enums.dart';
import '../../domain/profile_card.dart';
import 'photo_dots.dart';

/// 5-line card per strategist 1.2:
///  1. photo (1:1, dots overlay)
///  2. displayName · age  (22sp bold)
///  3. maritalStatus · hasChildren  (16sp)
///  4. relationshipIntent  (16sp)
///  5. distance label  (16sp, location pin)
/// + bio 2-line preview + "프로필 자세히 보기" link.
class SwipeCard extends StatefulWidget {
  const SwipeCard({
    super.key,
    required this.card,
    this.onOpenDetail,
  });

  final ProfileCardResponse card;
  final VoidCallback? onOpenDetail;

  @override
  State<SwipeCard> createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  int _photoIndex = 0;

  void _nextPhoto() {
    if (_photoIndex < widget.card.photos.length - 1) {
      setState(() => _photoIndex += 1);
    }
  }

  void _prevPhoto() {
    if (_photoIndex > 0) {
      setState(() => _photoIndex -= 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    final card = widget.card;
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.surfaceCard,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColors.outline),
          boxShadow: const [
            BoxShadow(
              blurRadius: 12,
              color: Color(0x14000000),
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _PhotoArea(
              card: card,
              activeIndex: _photoIndex,
              onTapLeft: _prevPhoto,
              onTapRight: _nextPhoto,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.l,
                AppSpacing.m,
                AppSpacing.l,
                AppSpacing.m,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '${card.displayName} · ${card.age}',
                    style: AppTextStyles.h2.copyWith(fontSize: 22),
                  ),
                  if (_metaLine(card) != null) ...[
                    const SizedBox(height: 6),
                    Text(_metaLine(card)!, style: AppTextStyles.caption.copyWith(fontSize: 16)),
                  ],
                  const SizedBox(height: 6),
                  Text(
                    _intentLabel(card.relationshipIntent),
                    style: AppTextStyles.caption.copyWith(fontSize: 16),
                  ),
                  if (card.distanceLabel != null) ...[
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          size: 18,
                          color: AppColors.textSecondary,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          card.distanceLabel!,
                          style: AppTextStyles.caption.copyWith(fontSize: 16),
                        ),
                      ],
                    ),
                  ],
                  const SizedBox(height: AppSpacing.s),
                  Text(
                    card.bio ?? card.bioPlaceholder ?? '',
                    style: AppTextStyles.body.copyWith(fontSize: 16),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (widget.onOpenDetail != null) ...[
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: widget.onOpenDetail,
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: const Size(48, 32),
                        ),
                        child: const Text('프로필 자세히 보기'),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String? _metaLine(ProfileCardResponse card) {
    final marital = _maritalLabel(card.maritalStatus);
    final children = _hasChildrenLabel(card.hasChildren);
    final parts = <String>[
      ?marital,
      ?children,
    ];
    if (parts.isEmpty) return null;
    return parts.join(' · ');
  }
}

String? _maritalLabel(MaritalStatus? value) {
  switch (value) {
    case null:
      return null;
    case MaritalStatus.singleNeverMarried:
      return '미혼';
    case MaritalStatus.divorced:
      return '이혼';
    case MaritalStatus.widowed:
      return '사별';
    case MaritalStatus.separated:
      return '별거';
  }
}

String? _hasChildrenLabel(HasChildren? value) {
  switch (value) {
    case null:
      return null;
    case HasChildren.none:
      return '자녀 없음';
    case HasChildren.livingWith:
      return '자녀 함께 거주';
    case HasChildren.notLivingWith:
      return '자녀 따로 거주';
    case HasChildren.preferNotToSay:
      return null;
  }
}

String _intentLabel(RelationshipIntent value) {
  switch (value) {
    case RelationshipIntent.seriousDating:
      return '진지한 만남';
    case RelationshipIntent.remarriage:
      return '재혼을 전제로';
    case RelationshipIntent.companionship:
      return '동반자 관계';
    case RelationshipIntent.friendship:
      return '친구 관계';
  }
}

class _PhotoArea extends StatelessWidget {
  const _PhotoArea({
    required this.card,
    required this.activeIndex,
    required this.onTapLeft,
    required this.onTapRight,
  });

  final ProfileCardResponse card;
  final int activeIndex;
  final VoidCallback onTapLeft;
  final VoidCallback onTapRight;

  @override
  Widget build(BuildContext context) {
    final photos = card.photos;
    final showPlaceholder = photos.isEmpty;
    final url = showPlaceholder ? null : photos[activeIndex].url;
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (showPlaceholder)
            Container(color: AppColors.surfaceVariant)
          else
            Image.network(
              url!,
              fit: BoxFit.cover,
              errorBuilder: (_, _, _) =>
                  Container(color: AppColors.surfaceVariant),
            ),
          // Tap zones (50/50). Swipes still propagate up to the deck.
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: onTapLeft,
                ),
              ),
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  onTap: onTapRight,
                ),
              ),
            ],
          ),
          Positioned(
            top: 12,
            left: 0,
            right: 0,
            child: PhotoDots(
              count: photos.length,
              activeIndex: activeIndex,
            ),
          ),
        ],
      ),
    );
  }
}
