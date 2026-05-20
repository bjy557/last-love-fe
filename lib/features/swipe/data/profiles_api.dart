import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/profile_card.dart';

part 'profiles_api.g.dart';

/// `GET /profiles/{userId}` - censored card for the detail screen.
@RestApi()
abstract class ProfilesApi {
  factory ProfilesApi(Dio dio, {String? baseUrl}) = _ProfilesApi;

  @GET('/api/v1/profiles/{userId}')
  Future<ProfileCardResponse> get(@Path('userId') int userId);
}
