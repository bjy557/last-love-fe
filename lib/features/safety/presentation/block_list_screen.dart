import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../application/block_controller.dart';
import '../domain/safety_models.dart';

class BlockListScreen extends ConsumerWidget {
  const BlockListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(blockListControllerProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('차단 목록')),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () =>
              ref.read(blockListControllerProvider.notifier).refresh(),
          child: async.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (e, _) => ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              children: [
                const SizedBox(height: 96),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.l),
                  child: Text(
                    e is ApiError
                        ? ErrorMessages.resolve(e)
                        : '목록을 불러오지 못했어요.',
                    style: AppTextStyles.body,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            data: (data) => _buildList(context, data),
          ),
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, BlockListResponse data) {
    if (data.items.isEmpty) {
      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: const [
          SizedBox(height: 96),
          Center(
            child: Icon(Icons.shield_outlined,
                size: 56, color: AppColors.outlineStrong),
          ),
          SizedBox(height: AppSpacing.m),
          Center(
            child: Text(
              '차단한 분이 없어요',
              style: AppTextStyles.body,
            ),
          ),
        ],
      );
    }
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.s),
      itemCount: data.items.length + 1,
      separatorBuilder: (_, __) =>
          const Divider(height: 1, color: AppColors.outline),
      itemBuilder: (context, i) {
        if (i == data.items.length) {
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.l, vertical: AppSpacing.l),
            child: Text(
              '차단은 해제할 수 없어요. 신중하게 차단해 주세요.',
              style: AppTextStyles.bodyMuted.copyWith(fontSize: 14),
            ),
          );
        }
        final block = data.items[i];
        final name = block.blockedUserDisplayName ?? '익명';
        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: AppSpacing.l),
          leading: const CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.surfaceVariant,
            child: Icon(Icons.person,
                color: AppColors.outlineStrong),
          ),
          title: Text(
            name,
            style: AppTextStyles.body.copyWith(fontSize: 16),
          ),
          subtitle: const Text(
            '차단됨',
            style: TextStyle(
              fontSize: 14,
              color: AppColors.textHint,
            ),
          ),
        );
      },
    );
  }
}
