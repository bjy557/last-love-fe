import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/profile_models.dart';

part 'profile_api.g.dart';

@RestApi()
abstract class ProfileApi {
  factory ProfileApi(Dio dio, {String? baseUrl}) = _ProfileApi;

  @GET('/api/v1/users/me/profile')
  Future<ProfileResponse> me();

  /// Use [UpdateProfileRequest.toSparseJson] to build the body so null
  /// fields are omitted (avoids the BE's PATCH-null=delete semantics).
  @PATCH('/api/v1/users/me/profile')
  Future<ProfileResponse> update(@Body() Map<String, dynamic> body);

  @PUT('/api/v1/users/me/profile/location')
  Future<void> updateLocation(@Body() UpdateLocationRequest body);

  @DELETE('/api/v1/users/me/profile/location')
  Future<void> clearLocation();
}
