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

/// Calm match celebration. Renders as a dedicated route (not a dialog) so
/// the modal survives backgrounding (strategist 3.1).
class NewMatchScreen extends ConsumerWidget {
  const NewMatchScreen({super.key, required this.matchId});

  final int matchId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(matchDetailProvider(matchId));
    return Scaffold(
      body: SafeArea(
        child: async.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (e, _) => Padding(
            padding: const EdgeInsets.all(AppSpacing.l),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  e is ApiError
                      ? ErrorMessages.resolve(e)
                      : '인연 정보를 불러오지 못했어요.',
                  style: AppTextStyles.body,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSpacing.l),
                OutlinedButton(
                  onPressed: () => context.pop(),
                  child: const Text('데크로 돌아가기'),
                ),
              ],
            ),
          ),
          data: (match) => _Body(match: match),
        ),
      ),
    );
  }
}

class _Body extends StatefulWidget {
  const _Body({required this.match});

  final MatchResponse match;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final partner = widget.match.matchedUser;
    final partnerPhoto = partner.photos.isNotEmpty
        ? partner.photos.first.url
        : null;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.l),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Spacer(),
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller,
              curve: const Interval(0, 0.4, curve: Curves.easeOut),
            ),
            child: const Text(
              '인연이 닿았어요',
              style: AppTextStyles.h1,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: AppSpacing.l),
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller,
              curve: const Interval(0.2, 0.7, curve: Curves.easeOut),
            ),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -0.2),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: const Interval(0.2, 0.7, curve: Curves.easeOut),
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _AvatarBubble(
                      url: null,
                      label: '나'),
                  Transform.translate(
                    offset: const Offset(-16, 0),
                    child: _AvatarBubble(url: partnerPhoto,
                        label: partner.displayName),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: AppSpacing.l),
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller,
              curve: const Interval(0.4, 0.85, curve: Curves.easeOut),
            ),
            child: Text(
              '${partner.displayName}님과 서로 마음을 전했어요.\n천천히 인사를 건네보세요.',
              style: AppTextStyles.bodyMuted,
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          FadeTransition(
            opacity: CurvedAnimation(
              parent: _controller,
              curve: const Interval(0.6, 1.0, curve: Curves.easeOut),
            ),
            child: Column(
              children: [
                PrimaryButton(
                  label: '대화 시작하기',
                  onPressed: () =>
                      context.go('/chat/${widget.match.id}'),
                ),
                const SizedBox(height: AppSpacing.m),
                OutlinedButton(
                  onPressed: () => context.go('/matches'),
                  child: const Text('잠시 후에 인사할게요'),
                ),
              ],
            ),
          ),
          const SizedBox(height: AppSpacing.l),
        ],
      ),
    );
  }
}

class _AvatarBubble extends StatelessWidget {
  const _AvatarBubble({required this.url, required this.label});

  final String? url;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.surfaceVariant,
            border: Border.all(color: Colors.white, width: 4),
            boxShadow: const [
              BoxShadow(
                blurRadius: 12,
                color: Color(0x1F000000),
                offset: Offset(0, 4),
              ),
            ],
            image: url == null
                ? null
                : DecorationImage(
                    image: NetworkImage(url!),
                    fit: BoxFit.cover,
                  ),
          ),
          child: url == null
              ? const Icon(Icons.person, size: 56, color: AppColors.outlineStrong)
              : null,
        ),
        const SizedBox(height: AppSpacing.s),
        Text(label, style: AppTextStyles.caption),
      ],
    );
  }
}
