import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/api/auth_interceptor.dart';
import '../domain/auth_models.dart';

part 'auth_api.g.dart';

/// Auth endpoints. Calls that should not carry a Bearer header use
/// `@Extra({AuthInterceptor.skipAuthKey: true})` to opt out.
@RestApi()
abstract class AuthApi {
  factory AuthApi(Dio dio, {String? baseUrl}) = _AuthApi;

  @POST('/api/v1/auth/phone-verifications')
  @Extra({AuthInterceptor.skipAuthKey: true})
  Future<PhoneVerificationResponse> requestPhoneVerification(
    @Body() RequestPhoneVerificationRequest body,
  );

  @POST('/api/v1/auth/phone-verifications/{id}/confirm')
  @Extra({AuthInterceptor.skipAuthKey: true})
  Future<PhoneVerificationConfirmResponse> confirmPhoneVerification(
    @Path('id') String verificationId,
    @Body() ConfirmPhoneVerificationRequest body,
  );

  @POST('/api/v1/auth/signup')
  @Extra({AuthInterceptor.skipAuthKey: true})
  Future<AuthSession> signup(@Body() SignupRequest body);

  @POST('/api/v1/auth/login')
  @Extra({AuthInterceptor.skipAuthKey: true})
  Future<AuthSession> login(@Body() LoginRequest body);

  @POST('/api/v1/auth/tokens/refresh')
  @Extra({AuthInterceptor.skipAuthKey: true})
  Future<AuthTokens> refresh(@Body() RefreshTokenRequest body);

  @POST('/api/v1/auth/logout')
  Future<void> logout();

  @GET('/api/v1/users/me')
  Future<UserResponse> me();
}
