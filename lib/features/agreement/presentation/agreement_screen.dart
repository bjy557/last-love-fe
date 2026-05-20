import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../../auth/application/signup_flow_controller.dart';
import '../../auth/domain/agreement_set.dart';

const String kTermsVersion = '2026-05-12';

class AgreementScreen extends ConsumerStatefulWidget {
  const AgreementScreen({super.key});

  @override
  ConsumerState<AgreementScreen> createState() => _AgreementScreenState();
}

class _AgreementScreenState extends ConsumerState<AgreementScreen> {
  bool _terms = false;
  bool _privacy = false;
  bool _privacyOptional = false;
  bool _location = false;
  bool _ageConfirmed = false;
  bool _marketing = false;
  bool _marketingSms = false;
  bool _marketingEmail = false;
  bool _marketingPush = false;

  bool get _allRequiredOk =>
      _terms && _privacy && _location && _ageConfirmed;

  bool get _allChecked =>
      _terms &&
      _privacy &&
      _privacyOptional &&
      _location &&
      _ageConfirmed &&
      _marketing;

  void _toggleAll(bool value) {
    setState(() {
      _terms = value;
      _privacy = value;
      _privacyOptional = value;
      _location = value;
      _ageConfirmed = value;
      _marketing = value;
      if (!value) {
        _marketingSms = false;
        _marketingEmail = false;
        _marketingPush = false;
      }
    });
  }

  void _proceed() {
    if (!_allRequiredOk) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('필수 항목에 모두 동의해 주세요.')),
      );
      return;
    }
    final agreements = AgreementSet(
      terms: _terms,
      privacy: _privacy,
      privacyOptional: _privacyOptional,
      location: _location,
      ageConfirmed: _ageConfirmed,
      marketing: _marketing,
      marketingChannels: _marketing
          ? MarketingChannels(
              sms: _marketingSms,
              email: _marketingEmail,
              push: _marketingPush,
            )
          : null,
      termsVersion: kTermsVersion,
    );
    ref.read(signupFlowControllerProvider.notifier).setAgreements(agreements);
    context.go('/phone');
  }

  @override
  Widget build(BuildContext context) {
    return LLScaffold(
      title: '약관 동의',
      stepLabel: '단계 1 / 5',
      bottom: PrimaryButton(
        label: '동의하고 시작하기',
        onPressed: _allRequiredOk ? _proceed : null,
      ),
      child: ListView(
        padding: const EdgeInsets.only(bottom: AppSpacing.l),
        children: [
          const Text('약관에 동의해 주세요', style: AppTextStyles.h2),
          const SizedBox(height: AppSpacing.s),
          const Text(
            '함께 만드는 안전한 만남을 위한 약속이에요',
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: AppSpacing.l),
          _AgreementTile(
            label: '모두 동의',
            checked: _allChecked,
            onChanged: _toggleAll,
            emphasised: false,
          ),
          const Divider(height: AppSpacing.l),
          _AgreementTile(
            label: '서비스 이용약관',
            required: true,
            checked: _terms,
            onChanged: (v) => setState(() => _terms = v),
            onViewMore: () => _showStubModal('서비스 이용약관'),
          ),
          _AgreementTile(
            label: '개인정보 수집·이용 (필수)',
            required: true,
            checked: _privacy,
            onChanged: (v) => setState(() => _privacy = v),
            onViewMore: () => _showStubModal('개인정보 수집·이용 (필수)'),
          ),
          _AgreementTile(
            label: '개인정보 수집·이용 (선택)',
            required: false,
            checked: _privacyOptional,
            onChanged: (v) => setState(() => _privacyOptional = v),
          ),
          _AgreementTile(
            label: '위치정보 이용약관',
            required: true,
            checked: _location,
            onChanged: (v) => setState(() => _location = v),
            onViewMore: () => _showStubModal('위치정보 이용약관'),
          ),
          _AgreementTile(
            label: '만 40세 이상이에요',
            required: true,
            checked: _ageConfirmed,
            onChanged: (v) => setState(() => _ageConfirmed = v),
          ),
          _AgreementTile(
            label: '마케팅 정보 받기',
            required: false,
            checked: _marketing,
            onChanged: (v) {
              setState(() {
                _marketing = v;
                if (!v) {
                  _marketingSms = false;
                  _marketingEmail = false;
                  _marketingPush = false;
                }
              });
            },
          ),
          if (_marketing)
            Padding(
              padding: const EdgeInsets.only(left: 48, top: 8),
              child: Wrap(
                spacing: 8,
                children: [
                  FilterChip(
                    label: const Text('SMS'),
                    selected: _marketingSms,
                    onSelected: (v) => setState(() => _marketingSms = v),
                  ),
                  FilterChip(
                    label: const Text('이메일'),
                    selected: _marketingEmail,
                    onSelected: (v) => setState(() => _marketingEmail = v),
                  ),
                  FilterChip(
                    label: const Text('PUSH'),
                    selected: _marketingPush,
                    onSelected: (v) => setState(() => _marketingPush = v),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  void _showStubModal(String title) {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(title),
        content: const Text('전문은 곧 제공될 예정이에요. (placeholder)'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('닫기'),
          ),
        ],
      ),
    );
  }
}

class _AgreementTile extends StatelessWidget {
  const _AgreementTile({
    required this.label,
    required this.checked,
    required this.onChanged,
    this.required = false,
    this.emphasised = false,
    this.onViewMore,
  });

  final String label;
  final bool checked;
  final ValueChanged<bool> onChanged;
  final bool required;
  final bool emphasised;
  final VoidCallback? onViewMore;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onChanged(!checked),
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            children: [
              SizedBox(
                width: 32,
                child: Checkbox(
                  value: checked,
                  onChanged: (v) => onChanged(v ?? false),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    style: AppTextStyles.body,
                    children: [
                      TextSpan(
                        text: required ? '[필수] ' : (emphasised ? '' : '[선택] '),
                        style: AppTextStyles.body.copyWith(
                          color: required
                              ? AppColors.primary
                              : AppColors.textSecondary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(text: label),
                    ],
                  ),
                ),
              ),
              if (onViewMore != null)
                TextButton(
                  onPressed: onViewMore,
                  child: const Text('보기'),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
