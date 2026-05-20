import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../app/env.dart';
import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/inline_error.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../application/phone_verification_controller.dart';
import '../application/signup_controller.dart';
import '../application/signup_flow_controller.dart';

class OtpInputScreen extends ConsumerStatefulWidget {
  const OtpInputScreen({super.key});

  @override
  ConsumerState<OtpInputScreen> createState() => _OtpInputScreenState();
}

class _OtpInputScreenState extends ConsumerState<OtpInputScreen> {
  final _controller = TextEditingController();
  Timer? _ticker;
  Duration _remaining = const Duration(minutes: 5);
  Duration _resendCooldown = const Duration(seconds: 60);
  String? _error;
  bool _confirming = false;

  @override
  void initState() {
    super.initState();
    if (Env.devMode) {
      _controller.text = '123456';
    }
    _startTicker();
  }

  @override
  void dispose() {
    _ticker?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startTicker() {
    _ticker?.cancel();
    _ticker = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (_remaining.inSeconds > 0) {
          _remaining -= const Duration(seconds: 1);
        }
        if (_resendCooldown.inSeconds > 0) {
          _resendCooldown -= const Duration(seconds: 1);
        }
      });
    });
  }

  Future<void> _confirm(String code) async {
    if (code.length != 6) return;
    setState(() {
      _confirming = true;
      _error = null;
    });
    try {
      final resp = await ref
          .read(phoneVerificationControllerProvider.notifier)
          .confirmCode(code);
      if (resp.userExists) {
        await ref.read(signupControllerProvider.notifier).login();
        if (mounted) context.go('/home');
      } else {
        if (mounted) context.go('/signup');
      }
    } on Object catch (e) {
      final apiError = _extractApiError(e);
      setState(() => _error = ErrorMessages.resolve(apiError));
    } finally {
      if (mounted) setState(() => _confirming = false);
    }
  }

  Future<void> _resend() async {
    final flow = ref.read(signupFlowControllerProvider);
    final phone = flow.phoneNumber;
    if (phone == null) {
      context.go('/phone');
      return;
    }
    try {
      await ref
          .read(phoneVerificationControllerProvider.notifier)
          .sendCode(phone);
      setState(() {
        _remaining = const Duration(minutes: 5);
        _resendCooldown = const Duration(seconds: 60);
        _error = null;
      });
    } on Object catch (e) {
      setState(() => _error = ErrorMessages.resolve(_extractApiError(e)));
    }
  }

  String _format(Duration d) {
    final m = d.inMinutes;
    final s = d.inSeconds % 60;
    return '$m분 ${s.toString().padLeft(2, '0')}초';
  }

  @override
  Widget build(BuildContext context) {
    final flow = ref.watch(signupFlowControllerProvider);
    final tail = flow.phoneNumber == null
        ? '****-****'
        : '${flow.phoneNumber!.substring(0, 3)}-****-${flow.phoneNumber!.substring(flow.phoneNumber!.length - 4)}';
    final resendEnabled = _resendCooldown.inSeconds <= 0;

    return LLScaffold(
      title: '인증',
      stepLabel: '단계 2 / 5',
      bottom: PrimaryButton(
        label: '확인하기',
        loading: _confirming,
        onPressed:
            _controller.text.length == 6 ? () => _confirm(_controller.text) : null,
      ),
      child: ListView(
        children: [
          const SizedBox(height: AppSpacing.m),
          const Text('받으신 6자리 숫자를 입력해 주세요', style: AppTextStyles.h2),
          const SizedBox(height: AppSpacing.s),
          Text('$tail으로 보냈어요', style: AppTextStyles.caption),
          const SizedBox(height: AppSpacing.l),
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            autofillHints: const [AutofillHints.oneTimeCode],
            inputFormatters: [
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(6),
            ],
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 32,
              letterSpacing: 12,
              fontWeight: FontWeight.w600,
            ),
            decoration: const InputDecoration(
              hintText: '------',
            ),
            onChanged: (v) {
              setState(() {});
              if (v.length == 6) _confirm(v);
            },
          ),
          if (_error != null) InlineError(message: _error!),
          const SizedBox(height: AppSpacing.m),
          Text(
            _remaining.inSeconds > 0
                ? '${_format(_remaining)} 남음'
                : '인증 시간이 지났어요. 다시 받아 주세요.',
            style: AppTextStyles.caption.copyWith(
              color: _remaining.inSeconds < 60
                  ? AppColors.warning
                  : AppColors.textSecondary,
            ),
          ),
          const SizedBox(height: AppSpacing.s),
          Align(
            alignment: Alignment.centerLeft,
            child: TextButton(
              onPressed: resendEnabled ? _resend : null,
              child: Text(resendEnabled
                  ? '다시 받기'
                  : '${_resendCooldown.inSeconds}초 후 다시 받을 수 있어요'),
            ),
          ),
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
