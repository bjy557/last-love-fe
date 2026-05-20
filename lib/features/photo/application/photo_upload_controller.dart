import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../../auth/domain/auth_enums.dart';
import '../data/photo_api.dart';
import '../domain/photo_models.dart';

part 'photo_upload_controller.g.dart';

enum PhotoUploadStage {
  idle,
  requestingUrl,
  uploading,
  confirming,
  approved,
  pending,
  rejected,
  failed,
}

class PhotoUploadState {
  const PhotoUploadState({
    this.stage = PhotoUploadStage.idle,
    this.photo,
    this.errorMessage,
  });

  final PhotoUploadStage stage;
  final PhotoResponse? photo;
  final String? errorMessage;

  PhotoUploadState copyWith({
    PhotoUploadStage? stage,
    PhotoResponse? photo,
    String? errorMessage,
    bool clearError = false,
  }) =>
      PhotoUploadState(
        stage: stage ?? this.stage,
        photo: photo ?? this.photo,
        errorMessage: clearError ? null : (errorMessage ?? this.errorMessage),
      );
}

@Riverpod(keepAlive: false)
class PhotoUploadController extends _$PhotoUploadController {
  @override
  PhotoUploadState build() => const PhotoUploadState();

  Future<PhotoResponse?> uploadCropped(File file) async {
    final bytes = await file.readAsBytes();
    return uploadBytes(bytes, path: file.path);
  }

  Future<PhotoResponse?> uploadBytes(Uint8List bytes, {required String path}) async {
    final api = PhotoApi(ref.read(apiDioProvider));
    final s3 = ref.read(s3DioProvider);
    final contentType = PhotoContentTypeMime.fromPath(path);
    state = const PhotoUploadState(stage: PhotoUploadStage.requestingUrl);
    try {
      final ticket = await api.requestUploadUrl(RequestPhotoUploadRequest(
        contentType: contentType,
        sizeBytes: bytes.length,
        filename: path.split('/').last,
      ));

      state = state.copyWith(stage: PhotoUploadStage.uploading);
      await s3.put<void>(
        ticket.presignedUrl,
        data: Stream.fromIterable([bytes]),
        options: Options(
          headers: <String, dynamic>{
            ...ticket.requiredHeaders,
            Headers.contentLengthHeader: bytes.length,
          },
          contentType: contentType.mime,
        ),
      );

      state = state.copyWith(stage: PhotoUploadStage.confirming);
      final photo = await api.confirm(ticket.photoId);

      final stage = switch (photo.reviewStatus) {
        PhotoReviewStatus.approved => PhotoUploadStage.approved,
        PhotoReviewStatus.pending => PhotoUploadStage.pending,
        PhotoReviewStatus.rejected => PhotoUploadStage.rejected,
      };
      state = state.copyWith(stage: stage, photo: photo);
      return photo;
    } on Object catch (e) {
      state = state.copyWith(
        stage: PhotoUploadStage.failed,
        errorMessage: e.toString(),
      );
      return null;
    }
  }

  void reset() {
    state = const PhotoUploadState();
  }
}
