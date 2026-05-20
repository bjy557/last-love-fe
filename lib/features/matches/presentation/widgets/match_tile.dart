import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../domain/match_models.dart';

const String _emptyPreviewLabel = '아직 첫 인사가 없어요';

/// One cell in the match grid. Photo on top, name+age below, ••• menu in
/// the corner.
class MatchTile extends StatelessWidget {
  const MatchTile({
    super.key,
    required this.match,
    required this.onTap,
    required this.onMenu,
  });

  final MatchResponse match;
  final VoidCallback onTap;
  final VoidCallback onMenu;

  @override
  Widget build(BuildContext context) {
    final partner = match.matchedUser;
    final url = partner.photos.isNotEmpty ? partner.photos.first.url : null;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: url == null
                          ? Container(color: AppColors.surfaceVariant)
                          : Image.network(
                              url,
                              fit: BoxFit.cover,
                              errorBuilder: (_, _, _) =>
                                  Container(color: AppColors.surfaceVariant),
                            ),
                    ),
                  ),
                  Positioned(
                    top: 4,
                    right: 4,
                    child: Material(
                      color: Colors.black54,
                      shape: const CircleBorder(),
                      child: InkWell(
                        customBorder: const CircleBorder(),
                        onTap: onMenu,
                        child: const SizedBox(
                          width: 32,
                          height: 32,
                          child: Icon(Icons.more_horiz,
                              size: 20, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Row(
              children: [
                Flexible(
                  child: Text(
                    partner.displayName,
                    style: AppTextStyles.body.copyWith(fontSize: 16),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (match.unreadCount > 0) ...[
                  const SizedBox(width: 6),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: AppColors.primary,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ],
            ),
            Text(
              match.lastMessagePreview ?? _emptyPreviewLabel,
              style: match.lastMessagePreview == null
                  ? AppTextStyles.captionMuted
                  : AppTextStyles.caption.copyWith(fontSize: 14),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
