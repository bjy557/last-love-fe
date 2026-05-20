import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../domain/chat_models.dart';

part 'chat_api.g.dart';

@RestApi()
abstract class ChatApi {
  factory ChatApi(Dio dio, {String? baseUrl}) = _ChatApi;

  @GET('/api/v1/matches/{matchId}/chat-room')
  Future<ChatRoomResponse> getRoomByMatch(@Path('matchId') int matchId);

  @GET('/api/v1/chat-rooms/{roomId}/messages')
  Future<ChatMessagesPage> messages(
    @Path('roomId') int roomId, {
    @Query('cursor') String? cursor,
    @Query('limit') int? limit,
  });

  @POST('/api/v1/chat-rooms/{roomId}/messages')
  Future<ChatMessageResponse> sendMessage(
    @Path('roomId') int roomId,
    @Body() SendMessageRequest body,
  );

  @POST('/api/v1/chat-rooms/{roomId}/read')
  Future<void> markRead(
    @Path('roomId') int roomId,
    @Body() MarkReadRequest body,
  );

  @GET('/api/v1/icebreakers')
  Future<IcebreakerListResponse> icebreakers();
}
