import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../swipe/domain/profile_card.dart';

/// 56dp chat header. Back · partner avatar+name · overflow menu.
///
/// Tapping the centre area pushes the partner profile route (read-only).
class ChatHeader extends StatelessWidget implements PreferredSizeWidget {
  const ChatHeader({
    super.key,
    required this.partner,
    required this.onMenu,
  });

  final ProfileCardResponse partner;
  final VoidCallback onMenu;

  @override
  Size get preferredSize => const Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final photo = partner.photos.isNotEmpty ? partner.photos.first.url : null;
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        tooltip: '뒤로',
        onPressed: () => Navigator.of(context).maybePop(),
      ),
      titleSpacing: 0,
      title: InkWell(
        onTap: () => context.push('/swipe/card/${partner.userId}'),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          child: Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.surfaceVariant,
                backgroundImage:
                    photo == null ? null : NetworkImage(photo),
                child: photo == null
                    ? const Icon(Icons.person,
                        size: 20, color: AppColors.outlineStrong)
                    : null,
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  partner.displayName,
                  style: AppTextStyles.h3.copyWith(fontSize: 18),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_horiz),
          tooltip: '더보기',
          onPressed: onMenu,
        ),
      ],
    );
  }
}
