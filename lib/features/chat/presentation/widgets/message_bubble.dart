import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../application/chat_controller.dart';
import '../../domain/chat_enums.dart';

/// One bubble in the chat list. Renders four variants:
///  - mine (right, primaryContainer)
///  - theirs (left, surfaceVariant)
///  - system (centered, outline)
///  - failed (right, with retry tap)
class MessageBubble extends StatelessWidget {
  const MessageBubble({
    super.key,
    required this.item,
    required this.isMine,
    required this.showTimestamp,
    this.partnerName,
    this.onRetry,
  });

  final ChatMessageItem item;
  final bool isMine;
  final bool showTimestamp;
  final String? partnerName;
  final VoidCallback? onRetry;

  static final _timeFmt = DateFormat('HH:mm');

  @override
  Widget build(BuildContext context) {
    final type = item.message.messageType;
    if (type.isSystem) {
      return _SystemMessage(content: item.message.content);
    }

    final bubbleColor = isMine
        ? const Color(0xFFF6E1D2) // warm primaryContainer
        : AppColors.surfaceVariant;
    final textColor = AppColors.textPrimary;

    final semanticLabel = isMine
        ? '내가 보낸 메시지'
        : '${partnerName ?? '상대방'}이 보낸 메시지';

    final bubble = Container(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.72,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: bubbleColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        item.message.content,
        style: AppTextStyles.body.copyWith(
          fontSize: 16,
          color: textColor,
          height: 1.4,
        ),
      ),
    );

    final time = showTimestamp
        ? Padding(
            padding: EdgeInsets.only(
              top: 2,
              left: isMine ? 0 : 8,
              right: isMine ? 8 : 0,
            ),
            child: Text(
              _timeFmt.format(item.message.sentAt.toLocal()),
              style: const TextStyle(
                fontSize: 11,
                color: AppColors.outlineStrong,
              ),
            ),
          )
        : null;

    final failedBadge = item.status == ChatMessageSendStatus.failed
        ? InkWell(
            onTap: onRetry,
            customBorder: const CircleBorder(),
            child: const Padding(
              padding: EdgeInsets.all(6),
              child: Icon(
                Icons.error_outline,
                size: 20,
                color: AppColors.error,
                semanticLabel: '메시지를 보내지 못했어요. 탭하여 다시 보내기.',
              ),
            ),
          )
        : null;

    final sendingDot = item.status == ChatMessageSendStatus.sending
        ? const Padding(
            padding: EdgeInsets.only(right: 4),
            child: SizedBox(
              width: 12,
              height: 12,
              child: CircularProgressIndicator(
                strokeWidth: 1.5,
                color: AppColors.outlineStrong,
              ),
            ),
          )
        : null;

    return Semantics(
      label: semanticLabel,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: Column(
          crossAxisAlignment:
              isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment:
                  isMine ? MainAxisAlignment.end : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: isMine
                  ? [
                      if (failedBadge != null) failedBadge,
                      if (sendingDot != null) sendingDot,
                      bubble,
                    ]
                  : [
                      bubble,
                    ],
            ),
            if (time != null) time,
          ],
        ),
      ),
    );
  }
}

class _SystemMessage extends StatelessWidget {
  const _SystemMessage({required this.content});

  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: AppColors.surfaceVariant.withValues(alpha: 0.6),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.textSecondary,
              height: 1.4,
            ),
          ),
        ),
      ),
    );
  }
}
