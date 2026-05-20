import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/match_models.dart';

part 'matches_api.g.dart';

@RestApi()
abstract class MatchesApi {
  factory MatchesApi(Dio dio, {String? baseUrl}) = _MatchesApi;

  @GET('/api/v1/matches')
  Future<MatchesPage> list({
    @Query('cursor') String? cursor,
    @Query('limit') int? limit,
  });

  @GET('/api/v1/matches/{matchId}')
  Future<MatchResponse> get(@Path('matchId') int matchId);

  @DELETE('/api/v1/matches/{matchId}')
  Future<void> end(@Path('matchId') int matchId);
}
