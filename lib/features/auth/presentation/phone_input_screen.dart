import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/inline_error.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../application/phone_verification_controller.dart';

class PhoneInputScreen extends ConsumerStatefulWidget {
  const PhoneInputScreen({super.key});

  @override
  ConsumerState<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends ConsumerState<PhoneInputScreen> {
  final _controller = TextEditingController();
  String? _error;
  bool _sending = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _normalise(String raw) {
    final digits = raw.replaceAll(RegExp(r'[^0-9]'), '');
    if (digits.startsWith('010') && digits.length == 11) {
      return '+82${digits.substring(1)}';
    }
    if (digits.startsWith('82')) {
      return '+$digits';
    }
    return digits;
  }

  bool _isValid(String raw) {
    final digits = raw.replaceAll(RegExp(r'[^0-9]'), '');
    return digits.length == 11 && digits.startsWith('010');
  }

  Future<void> _submit() async {
    if (!_isValid(_controller.text)) {
      setState(() => _error = '전화번호를 다시 확인해 주세요');
      return;
    }
    setState(() {
      _error = null;
      _sending = true;
    });
    try {
      final phone = _normalise(_controller.text);
      await ref
          .read(phoneVerificationControllerProvider.notifier)
          .sendCode(phone);
      if (mounted) {
        context.go('/otp');
      }
    } on Object catch (e) {
      final apiError = _extractApiError(e);
      setState(() => _error = ErrorMessages.resolve(apiError));
    } finally {
      if (mounted) setState(() => _sending = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LLScaffold(
      title: '인증',
      stepLabel: '단계 2 / 5',
      bottom: PrimaryButton(
        label: '인증 문자 받기',
        loading: _sending,
        onPressed: _isValid(_controller.text) ? _submit : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: AppSpacing.m),
          const Text('전화번호를 알려주세요', style: AppTextStyles.h2),
          const SizedBox(height: AppSpacing.s),
          const Text(
            '본인 확인용으로만 사용하고, 다른 분께는 절대 보이지 않아요',
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: AppSpacing.l),
          TextField(
            controller: _controller,
            keyboardType: TextInputType.phone,
            autofillHints: const [AutofillHints.telephoneNumber],
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(11),
              _PhoneNumberFormatter(),
            ],
            style: AppTextStyles.input,
            decoration: const InputDecoration(
              labelText: '휴대전화번호',
              hintText: '010-1234-5678',
              prefixText: '+82 ',
            ),
            onChanged: (_) => setState(() {}),
          ),
          if (_error != null) InlineError(message: _error!),
          const SizedBox(height: AppSpacing.s),
          const Text(
            '인증 문자가 발송돼요. 통신사 요금은 따로 들지 않아요.',
            style: AppTextStyles.captionMuted,
          ),
        ],
      ),
    );
  }
}

ApiError _extractApiError(Object e) {
  if (e is ApiError) return e;
  // dio re-wraps in DioException whose `error` is our ApiError.
  final dynamic d = e;
  try {
    final inner = d.error;
    if (inner is ApiError) return inner;
  } catch (_) {}
  return ApiError(code: 'UNKNOWN_ERROR', message: e.toString());
}

/// Inserts `-` separators while typing: 010-1234-5678.
class _PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final digits = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    final buffer = StringBuffer();
    for (int i = 0; i < digits.length && i < 11; i++) {
      if (i == 3 || i == 7) buffer.write('-');
      buffer.write(digits[i]);
    }
    final formatted = buffer.toString();
    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
