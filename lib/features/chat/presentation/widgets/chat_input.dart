import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';

/// Bottom message composer. multiline 1-4 lines + circular send button.
///
/// We don't enforce 1000 chars on the client beyond what the server returns —
/// we surface a soft counter starting at 900 (strategist 2.6) and let the BE
/// reject anything over.
class ChatInput extends StatefulWidget {
  const ChatInput({
    super.key,
    required this.controller,
    required this.enabled,
    required this.onSend,
    this.placeholder = '마음을 담아 메시지를 보내요',
  });

  final TextEditingController controller;
  final bool enabled;
  final Future<bool> Function(String content) onSend;
  final String placeholder;

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput> {
  bool _submitting = false;

  void _onSubmit() async {
    if (_submitting) return;
    final text = widget.controller.text.trim();
    if (text.isEmpty) return;
    setState(() => _submitting = true);
    try {
      final ok = await widget.onSend(text);
      if (ok && mounted) {
        widget.controller.clear();
      }
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.surface,
      elevation: 0,
      child: SafeArea(
        top: false,
        minimum: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: ValueListenableBuilder<TextEditingValue>(
          valueListenable: widget.controller,
          builder: (context, value, _) {
            final length = value.text.length;
            final showCounter = length >= 900;
            final canSend =
                widget.enabled && !_submitting && value.text.trim().isNotEmpty;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Container(
                        constraints: const BoxConstraints(minHeight: 48),
                        decoration: BoxDecoration(
                          color: AppColors.surfaceVariant,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 4),
                        child: TextField(
                          controller: widget.controller,
                          enabled: widget.enabled,
                          minLines: 1,
                          maxLines: 4,
                          maxLength: 1000,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1000),
                          ],
                          textInputAction: TextInputAction.newline,
                          style: AppTextStyles.body.copyWith(fontSize: 16),
                          decoration: InputDecoration.collapsed(
                            hintText: widget.placeholder,
                            hintStyle: AppTextStyles.body.copyWith(
                              color: AppColors.textHint,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    _SendButton(
                      enabled: canSend,
                      loading: _submitting,
                      onTap: _onSubmit,
                    ),
                  ],
                ),
                if (showCounter)
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 8),
                    child: Text(
                      '$length/1000',
                      style: const TextStyle(
                        fontSize: 12,
                        color: AppColors.textHint,
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class _SendButton extends StatelessWidget {
  const _SendButton({
    required this.enabled,
    required this.loading,
    required this.onTap,
  });

  final bool enabled;
  final bool loading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: enabled ? 1.0 : 0.5,
      child: Material(
        color: AppColors.primary,
        shape: const CircleBorder(),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: enabled ? onTap : null,
          child: SizedBox(
            width: 48,
            height: 48,
            child: Center(
              child: loading
                  ? const SizedBox(
                      width: 18,
                      height: 18,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor:
                            AlwaysStoppedAnimation(Colors.white),
                      ),
                    )
                  : const Icon(Icons.send_rounded,
                      size: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
