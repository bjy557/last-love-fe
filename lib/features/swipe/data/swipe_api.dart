import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/swipe_models.dart';

part 'swipe_api.g.dart';

@RestApi()
abstract class SwipeApi {
  factory SwipeApi(Dio dio, {String? baseUrl}) = _SwipeApi;

  @GET('/api/v1/swipe-cards/daily')
  Future<DailySwipeCardsResponse> dailyCards();

  @POST('/api/v1/swipe-cards/{targetUserId}/swipe')
  Future<SwipeResultResponse> swipe(
    @Path('targetUserId') int targetUserId,
    @Body() SwipeRequest body,
  );

  /// Body is intentionally empty. The BE decides the most recent swipe.
  @POST('/api/v1/swipe-cards/undo')
  Future<UndoSwipeResultResponse> undo();

  @GET('/api/v1/swipe-cards/preferences')
  Future<SwipePreferences> getPreferences();

  @PUT('/api/v1/swipe-cards/preferences')
  Future<SwipePreferences> updatePreferences(
    @Body() UpdateSwipePreferencesRequest body,
  );
}
