import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:permission_handler/permission_handler.dart' as ph;

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../../profile_setup/application/profile_setup_controller.dart';
import '../application/location_permission_controller.dart';

class LocationPermissionScreen extends ConsumerStatefulWidget {
  const LocationPermissionScreen({super.key});

  @override
  ConsumerState<LocationPermissionScreen> createState() =>
      _LocationPermissionScreenState();
}

class _LocationPermissionScreenState
    extends ConsumerState<LocationPermissionScreen> {
  bool _busy = false;

  Future<void> _allow() async {
    setState(() => _busy = true);
    final granted = await ref
        .read(locationPermissionControllerProvider.notifier)
        .requestAndFetch();
    final fix = ref.read(locationPermissionControllerProvider);
    if (granted && fix.hasFix) {
      try {
        await ref.read(profileSetupControllerProvider.notifier).submitLocation(
              fix.latitude!,
              fix.longitude!,
            );
        if (mounted) context.go('/home');
        return;
      } on Object {
        // fall through to error UI; user can skip.
      }
    }
    if (mounted) setState(() => _busy = false);
    if (fix.stage == LocationConsentStage.deniedForever) {
      _showSettingsDialog();
    }
  }

  Future<void> _skip() async {
    await ref.read(profileSetupControllerProvider.notifier).skipLocation();
    if (mounted) context.go('/home');
  }

  void _showSettingsDialog() {
    showDialog<void>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('위치를 사용하려면 설정에서 허용이 필요해요'),
        content: const Text('설정에서 위치 권한을 허용한 뒤 다시 시도해 주세요.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(ctx).pop();
              _skip();
            },
            child: const Text('그대로 진행'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.of(ctx).pop();
              await ph.openAppSettings();
            },
            child: const Text('설정 열기'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LLScaffold(
      title: '위치',
      stepLabel: '단계 5 / 5',
      showBack: false,
      bottom: Column(
        children: [
          PrimaryButton(
            label: '위치 사용에 동의해요',
            loading: _busy,
            onPressed: _busy ? null : _allow,
          ),
          const SizedBox(height: AppSpacing.s),
          TextButton(
            onPressed: _busy ? null : _skip,
            child: const Text('지금은 건너뛸게요'),
          ),
        ],
      ),
      child: ListView(
        children: [
          const SizedBox(height: AppSpacing.l),
          const Icon(Icons.location_on,
              size: 64, color: AppColors.primaryLight),
          const SizedBox(height: AppSpacing.l),
          const Text('주변 인연을 보여드릴게요',
              style: AppTextStyles.h2, textAlign: TextAlign.center),
          const SizedBox(height: AppSpacing.m),
          const Text(
            '거리 기반으로 가까운 분을 보여드려요.\n'
            '정확한 위치는 절대 다른 분에게 보이지 않아요.\n'
            "'서울 강서구' 같은 구 단위 위치와 대략적인 거리만 알려드려요.",
            style: AppTextStyles.body,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// Ensure unused import gets a use. Future: tighten when geolocator settings
// expand.
// ignore_for_file: unused_element
LocationPermission _unused() => LocationPermission.always;
