import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';
import '../application/match_list_controller.dart';
import '../domain/match_models.dart';
import 'widgets/match_tile.dart';

class MatchListScreen extends ConsumerStatefulWidget {
  const MatchListScreen({super.key});

  @override
  ConsumerState<MatchListScreen> createState() => _MatchListScreenState();
}

class _MatchListScreenState extends ConsumerState<MatchListScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(matchListControllerProvider.notifier).load();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(matchListControllerProvider);
    final controller = ref.read(matchListControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('나의 인연')),
      body: RefreshIndicator(
        onRefresh: controller.refresh,
        child: _buildBody(context, state, controller),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
    MatchListState state,
    MatchListController controller,
  ) {
    if (state.loading && state.items.isEmpty) {
      return const Center(child: CircularProgressIndicator());
    }
    if (state.items.isEmpty) {
      return ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
            child: Column(
              children: [
                const Icon(Icons.spa_outlined, size: 80,
                    color: AppColors.primaryLight),
                const SizedBox(height: AppSpacing.l),
                const Text('아직 인연이 닿은 분은 없어요',
                    style: AppTextStyles.h1, textAlign: TextAlign.center),
                const SizedBox(height: AppSpacing.m),
                const Text(
                  '마음을 전해보세요.\n천천히 한 명씩 만나요.',
                  style: AppTextStyles.bodyMuted,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.xl),
                PrimaryButton(
                  label: '오늘의 인연 보러 가기',
                  onPressed: () => context.go('/swipe'),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final crossAxisCount = width >= 600 ? 4 : (width <= 360 ? 2 : 3);
        return CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.fromLTRB(
                AppSpacing.l,
                AppSpacing.m,
                AppSpacing.l,
                AppSpacing.s,
              ),
              sliver: SliverToBoxAdapter(
                child: Text(
                  '인연이 닿은 분들 (${state.items.length})',
                  style: AppTextStyles.h2,
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
              sliver: SliverGrid(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  mainAxisSpacing: AppSpacing.m,
                  crossAxisSpacing: AppSpacing.m,
                  childAspectRatio: 0.75,
                ),
                delegate: SliverChildBuilderDelegate(
                  (context, i) {
                    final match = state.items[i];
                    return MatchTile(
                      match: match,
                      onTap: () {
                        // Chat round will replace with /chat/{matchId}.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('대화 기능은 곧 시작돼요.'),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                      },
                      onMenu: () => _showMenu(context, controller, match),
                    );
                  },
                  childCount: state.items.length,
                ),
              ),
            ),
            if (state.nextCursor != null && !state.endReached)
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(AppSpacing.l),
                  child: OutlinedButton(
                    onPressed: state.loading ? null : controller.loadMore,
                    child: Text(state.loading ? '불러오는 중…' : '더 보기'),
                  ),
                ),
              ),
            const SliverToBoxAdapter(child: SizedBox(height: AppSpacing.xl)),
          ],
        );
      },
    );
  }

  void _showMenu(
    BuildContext context,
    MatchListController controller,
    MatchResponse match,
  ) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: const Icon(Icons.close_rounded,
                    color: AppColors.warning),
                title: const Text('인연 정리하기'),
                onTap: () {
                  Navigator.of(context).pop();
                  _confirmEnd(context, controller, match);
                },
              ),
              const ListTile(
                leading: Icon(Icons.flag_outlined),
                title: Text('신고하기'),
                subtitle: Text('곧 제공될 예정이에요'),
                enabled: false,
              ),
              const ListTile(
                leading: Icon(Icons.visibility_off_outlined),
                title: Text('이 분 보지 않기'),
                subtitle: Text('곧 제공될 예정이에요'),
                enabled: false,
              ),
              const SizedBox(height: AppSpacing.s),
            ],
          ),
        );
      },
    );
  }

  void _confirmEnd(
    BuildContext context,
    MatchListController controller,
    MatchResponse match,
  ) {
    showDialog<void>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        title: const Text('이 인연을 정리할까요?'),
        content: const Text(
          '정리하면 더 이상 서로의 프로필이 보이지 않아요.\n'
          '취소할 수 없으니 신중히 결정해 주세요.',
          style: AppTextStyles.body,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogCtx).pop(),
            child: const Text('그만두기'),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: AppColors.warning),
            onPressed: () async {
              final messenger = ScaffoldMessenger.of(context);
              Navigator.of(dialogCtx).pop();
              try {
                await controller.end(match.id);
                messenger.showSnackBar(
                  const SnackBar(
                    content: Text('인연을 정리했어요.'),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              } on ApiError catch (e) {
                messenger.showSnackBar(
                  SnackBar(
                    content: Text(ErrorMessages.resolve(e)),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              }
            },
            child: const Text('네, 정리할게요'),
          ),
        ],
      ),
    );
  }
}
