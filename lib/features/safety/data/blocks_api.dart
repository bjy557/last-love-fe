import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/safety_models.dart';

part 'blocks_api.g.dart';

@RestApi()
abstract class BlocksApi {
  factory BlocksApi(Dio dio, {String? baseUrl}) = _BlocksApi;

  @GET('/api/v1/blocks')
  Future<BlockListResponse> list();

  @POST('/api/v1/blocks')
  Future<BlockResponse> create(@Body() BlockUserRequest body);

  /// MVP returns 501. Wired for forward compatibility.
  @DELETE('/api/v1/blocks/{blockId}')
  Future<void> remove(@Path('blockId') int blockId);
}
