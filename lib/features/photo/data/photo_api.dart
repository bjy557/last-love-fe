import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/photo_models.dart';

part 'photo_api.g.dart';

@RestApi()
abstract class PhotoApi {
  factory PhotoApi(Dio dio, {String? baseUrl}) = _PhotoApi;

  @POST('/api/v1/users/me/photos/upload-urls')
  Future<PhotoUploadTicket> requestUploadUrl(
    @Body() RequestPhotoUploadRequest body,
  );

  @POST('/api/v1/users/me/photos/{photoId}/confirm')
  Future<PhotoResponse> confirm(@Path('photoId') int photoId);

  @DELETE('/api/v1/users/me/photos/{photoId}')
  Future<void> delete(@Path('photoId') int photoId);
}
