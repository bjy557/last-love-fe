import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';
import '../../chat/application/chat_controller.dart';
import '../application/report_controller.dart';
import '../domain/safety_enums.dart';

/// Reason picker for reporting the chat partner.
class ReportReasonScreen extends ConsumerStatefulWidget {
  const ReportReasonScreen({super.key, required this.matchId});

  final int matchId;

  @override
  ConsumerState<ReportReasonScreen> createState() =>
      _ReportReasonScreenState();
}

class _ReportReasonScreenState extends ConsumerState<ReportReasonScreen> {
  ReportReason? _selected;
  final _descCtrl = TextEditingController();
  bool _submitting = false;

  @override
  void dispose() {
    _descCtrl.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final reason = _selected;
    if (reason == null || _submitting) return;
    final chat = ref.read(chatControllerProvider(widget.matchId));
    final partner = chat.room?.partner;
    if (partner == null) return;

    setState(() => _submitting = true);
    final messenger = ScaffoldMessenger.of(context);
    final router = GoRouter.of(context);
    try {
      await ref.read(reportControllerProvider.notifier).submit(
            reportedUserId: partner.userId,
            reason: reason,
            description: _descCtrl.text,
          );
      messenger.showSnackBar(
        const SnackBar(
          content: Text('신고가 접수되었어요. 며칠 내에 안전하게 검토할게요.'),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 4),
        ),
      );
      router.go('/matches');
    } on ApiError catch (e) {
      messenger.showSnackBar(SnackBar(
        content: Text(ErrorMessages.resolve(e)),
        behavior: SnackBarBehavior.floating,
      ));
    } on Object {
      messenger.showSnackBar(const SnackBar(
        content: Text('잠시 후 다시 시도해 주세요.'),
        behavior: SnackBarBehavior.floating,
      ));
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final canSubmit = _selected != null && !_submitting;
    return Scaffold(
      appBar: AppBar(title: const Text('신고하기')),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.l, vertical: AppSpacing.m),
                children: [
                  const Text(
                    '어떤 점이 불편하셨나요?',
                    style: AppTextStyles.h2,
                  ),
                  const SizedBox(height: AppSpacing.s),
                  const Text(
                    '익명으로 접수돼요. 상대에겐 알려지지 않아요.',
                    style: AppTextStyles.bodyMuted,
                  ),
                  const SizedBox(height: AppSpacing.l),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      for (final r in ReportReasonLabel.order)
                        _ReasonChip(
                          reason: r,
                          selected: _selected == r,
                          onSelected: () => setState(() => _selected = r),
                        ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.xl),
                  TextField(
                    controller: _descCtrl,
                    minLines: 3,
                    maxLines: 6,
                    maxLength: 500,
                    style: AppTextStyles.body.copyWith(fontSize: 16),
                    decoration: const InputDecoration(
                      labelText: '조금 더 알려주시면 검토에 도움이 돼요 (선택)',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.m),
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.m),
                    decoration: BoxDecoration(
                      color: AppColors.surfaceVariant,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.info_outline,
                            size: 18, color: AppColors.textSecondary),
                        SizedBox(width: AppSpacing.s),
                        Expanded(
                          child: Text(
                            '신고하시면 이 분은 자동으로 차단되어 더 이상 보이지 않아요.',
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.textSecondary,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.l),
              child: PrimaryButton(
                label: '신고 접수하기',
                loading: _submitting,
                onPressed: canSubmit ? _submit : null,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ReasonChip extends StatelessWidget {
  const _ReasonChip({
    required this.reason,
    required this.selected,
    required this.onSelected,
  });

  final ReportReason reason;
  final bool selected;
  final VoidCallback onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(ReportReasonLabel.of(reason)),
      selected: selected,
      onSelected: (_) => onSelected(),
      labelStyle: AppTextStyles.body.copyWith(
        fontSize: 16,
        color: selected ? Colors.white : AppColors.textPrimary,
      ),
      selectedColor: AppColors.primary,
      backgroundColor: AppColors.surfaceVariant,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
        side: BorderSide(
            color: selected ? AppColors.primary : AppColors.outline),
      ),
    );
  }
}
