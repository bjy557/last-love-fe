import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/api/api_providers.dart';
import '../data/blocks_api.dart';
import '../domain/safety_models.dart';

part 'block_controller.g.dart';

@riverpod
class BlockController extends _$BlockController {
  @override
  AsyncValue<BlockResponse?> build() => const AsyncValue.data(null);

  Future<BlockResponse?> block(int userId) async {
    state = const AsyncValue.loading();
    final api = BlocksApi(ref.read(apiDioProvider));
    try {
      final res = await api.create(BlockUserRequest(blockedUserId: userId));
      state = AsyncValue.data(res);
      return res;
    } on Object catch (e, s) {
      state = AsyncValue.error(e, s);
      rethrow;
    }
  }
}

@riverpod
class BlockListController extends _$BlockListController {
  @override
  Future<BlockListResponse> build() async {
    final api = BlocksApi(ref.read(apiDioProvider));
    return api.list();
  }

  Future<void> refresh() async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() async {
      final api = BlocksApi(ref.read(apiDioProvider));
      return api.list();
    });
  }
}
