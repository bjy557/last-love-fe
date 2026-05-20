import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/inline_error.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../application/photo_upload_controller.dart';

class PhotoUploadScreen extends ConsumerStatefulWidget {
  const PhotoUploadScreen({super.key});

  @override
  ConsumerState<PhotoUploadScreen> createState() => _PhotoUploadScreenState();
}

class _PhotoUploadScreenState extends ConsumerState<PhotoUploadScreen> {
  final _picker = ImagePicker();

  Future<void> _pick(ImageSource source) async {
    final picked = await _picker.pickImage(
      source: source,
      maxWidth: 2048,
      maxHeight: 2048,
      imageQuality: 90,
    );
    if (picked == null) return;
    final cropped = await ImageCropper().cropImage(
      sourcePath: picked.path,
      aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
      compressQuality: 90,
      uiSettings: [
        AndroidUiSettings(
          toolbarTitle: '얼굴이 잘 보이도록 자리를 잡아 주세요',
          lockAspectRatio: true,
          hideBottomControls: false,
        ),
        IOSUiSettings(
          title: '사진 자르기',
          aspectRatioLockEnabled: true,
        ),
      ],
    );
    if (cropped == null) return;
    await ref
        .read(photoUploadControllerProvider.notifier)
        .uploadCropped(File(cropped.path));
  }

  void _showPickerSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (ctx) => SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.photo_library, size: 28),
              title: const Text('앨범에서 고르기', style: AppTextStyles.body),
              onTap: () {
                Navigator.of(ctx).pop();
                _pick(ImageSource.gallery);
              },
            ),
            ListTile(
              leading: const Icon(Icons.camera_alt, size: 28),
              title: const Text('지금 찍기', style: AppTextStyles.body),
              onTap: () {
                Navigator.of(ctx).pop();
                _pick(ImageSource.camera);
              },
            ),
            const SizedBox(height: AppSpacing.m),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final upload = ref.watch(photoUploadControllerProvider);
    final canProceed = upload.stage == PhotoUploadStage.approved ||
        upload.stage == PhotoUploadStage.pending;
    return LLScaffold(
      title: '사진',
      stepLabel: '단계 4 / 5',
      showBack: false,
      bottom: Column(
        children: [
          if (upload.stage == PhotoUploadStage.rejected ||
              upload.stage == PhotoUploadStage.failed)
            InlineError(message: upload.errorMessage ?? '사진을 보내는 중에 문제가 생겼어요.'),
          PrimaryButton(
            label: canProceed ? '다음으로' : '사진 선택하기',
            loading: upload.stage == PhotoUploadStage.uploading ||
                upload.stage == PhotoUploadStage.requestingUrl ||
                upload.stage == PhotoUploadStage.confirming,
            onPressed: canProceed
                ? () => context.go('/profile-setup/location')
                : _showPickerSheet,
          ),
        ],
      ),
      child: ListView(
        children: [
          const SizedBox(height: AppSpacing.m),
          const Text('본인이 잘 나온 사진을 1장 올려주세요', style: AppTextStyles.h2),
          const SizedBox(height: AppSpacing.s),
          const Text('첫 번째 사진은 얼굴이 잘 보이는 것을 추천해요.',
              style: AppTextStyles.caption),
          const SizedBox(height: AppSpacing.l),
          Container(
            height: 240,
            decoration: BoxDecoration(
              color: AppColors.surfaceVariant,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Center(child: _statusContent(upload)),
          ),
        ],
      ),
    );
  }

  Widget _statusContent(PhotoUploadState s) {
    switch (s.stage) {
      case PhotoUploadStage.idle:
        return const Icon(Icons.add_a_photo,
            size: 64, color: AppColors.outlineStrong);
      case PhotoUploadStage.requestingUrl:
        return const _StatusText('사진을 준비하고 있어요');
      case PhotoUploadStage.uploading:
        return const _StatusText('사진을 올리고 있어요');
      case PhotoUploadStage.confirming:
        return const _StatusText('거의 다 됐어요');
      case PhotoUploadStage.approved:
        return const _StatusText('사진이 등록됐어요', success: true);
      case PhotoUploadStage.pending:
        return const _StatusText('사진을 확인하고 있어요');
      case PhotoUploadStage.rejected:
        return const _StatusText('이 사진은 가이드라인에 맞지 않아요. 다른 사진을 골라 주세요.',
            error: true);
      case PhotoUploadStage.failed:
        return const _StatusText('사진을 보내는 중에 문제가 생겼어요.', error: true);
    }
  }
}

class _StatusText extends StatelessWidget {
  const _StatusText(this.text, {this.success = false, this.error = false});
  final String text;
  final bool success;
  final bool error;

  @override
  Widget build(BuildContext context) {
    final color = error
        ? AppColors.error
        : success
            ? AppColors.success
            : AppColors.textPrimary;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!error && !success)
            const SizedBox(
              width: 32,
              height: 32,
              child: CircularProgressIndicator(strokeWidth: 2.5),
            ),
          if (!error && !success) const SizedBox(height: AppSpacing.m),
          Text(text,
              textAlign: TextAlign.center,
              style: AppTextStyles.body.copyWith(color: color)),
        ],
      ),
    );
  }
}
