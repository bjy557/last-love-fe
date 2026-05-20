import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/inline_error.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../application/signup_controller.dart';
import '../domain/auth_enums.dart';

class SignupFormScreen extends ConsumerStatefulWidget {
  const SignupFormScreen({super.key});

  @override
  ConsumerState<SignupFormScreen> createState() => _SignupFormScreenState();
}

class _SignupFormScreenState extends ConsumerState<SignupFormScreen> {
  final _name = TextEditingController();
  DateTime? _birthDate;
  Gender? _gender;
  String? _error;
  bool _submitting = false;

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }

  bool get _canSubmit =>
      _name.text.trim().isNotEmpty &&
      _birthDate != null &&
      _gender != null &&
      !_submitting;

  Future<void> _pickBirthDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: DateTime(1980, 1, 1),
      firstDate: DateTime(1900),
      lastDate: DateTime(1985, 12, 31),
      helpText: '생년월일',
    );
    if (picked != null) setState(() => _birthDate = picked);
  }

  Future<void> _submit() async {
    setState(() {
      _submitting = true;
      _error = null;
    });
    try {
      await ref.read(signupControllerProvider.notifier).submit(
            displayName: _name.text.trim(),
            birthDate: _birthDate!,
            gender: _gender!,
          );
      if (mounted) context.go('/profile-setup/intro');
    } on Object catch (e) {
      final apiError = _extractApiError(e);
      if (apiError.code == 'SIGNUP_UNDERAGE') {
        if (mounted) context.go('/signup/age-not-eligible');
        return;
      }
      setState(() => _error = ErrorMessages.resolve(apiError));
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LLScaffold(
      title: '회원가입',
      stepLabel: '단계 3 / 5',
      showBack: false,
      bottom: PrimaryButton(
        label: '가입 완료',
        loading: _submitting,
        onPressed: _canSubmit ? _submit : null,
      ),
      child: ListView(
        children: [
          const SizedBox(height: AppSpacing.m),
          const Text('Last Love에서 어떻게 불러드릴까요', style: AppTextStyles.h2),
          const SizedBox(height: AppSpacing.l),
          TextField(
            controller: _name,
            autofillHints: const [AutofillHints.nickname],
            style: AppTextStyles.input,
            decoration: const InputDecoration(
              labelText: '닉네임 또는 이름의 일부',
              hintText: '예: 지영, 민호 (실명 X 권장)',
            ),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: AppSpacing.l),
          InkWell(
            onTap: _pickBirthDate,
            borderRadius: BorderRadius.circular(12),
            child: InputDecorator(
              decoration: const InputDecoration(labelText: '생년월일'),
              child: Text(
                _birthDate == null
                    ? '생년월일 선택'
                    : DateFormat('yyyy년 M월 d일').format(_birthDate!),
                style: AppTextStyles.input,
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.l),
          const Text('성별', style: AppTextStyles.caption),
          const SizedBox(height: AppSpacing.s),
          // ignore: deprecated_member_use
          RadioListTile<Gender>(
            value: Gender.male,
            // ignore: deprecated_member_use
            groupValue: _gender,
            title: const Text('남성', style: AppTextStyles.body),
            // ignore: deprecated_member_use
            onChanged: (v) => setState(() => _gender = v),
          ),
          // ignore: deprecated_member_use
          RadioListTile<Gender>(
            value: Gender.female,
            // ignore: deprecated_member_use
            groupValue: _gender,
            title: const Text('여성', style: AppTextStyles.body),
            // ignore: deprecated_member_use
            onChanged: (v) => setState(() => _gender = v),
          ),
          const SizedBox(height: AppSpacing.s),
          const Text(
            '현재 두 가지만 선택 가능해요. 점차 확대할 예정이에요.',
            style: AppTextStyles.captionMuted,
          ),
          if (_error != null) InlineError(message: _error!),
        ],
      ),
    );
  }
}

ApiError _extractApiError(Object e) {
  if (e is ApiError) return e;
  final dynamic d = e;
  try {
    final inner = d.error;
    if (inner is ApiError) return inner;
  } catch (_) {}
  return ApiError(code: 'UNKNOWN_ERROR', message: e.toString());
}
