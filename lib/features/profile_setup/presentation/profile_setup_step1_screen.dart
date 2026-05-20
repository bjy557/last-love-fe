import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/inline_error.dart';
import '../../../core/widgets/ll_scaffold.dart';
import '../../../core/widgets/primary_button.dart';
import '../../auth/domain/auth_enums.dart';
import '../application/profile_setup_controller.dart';

class ProfileSetupStep1Screen extends ConsumerStatefulWidget {
  const ProfileSetupStep1Screen({super.key});

  @override
  ConsumerState<ProfileSetupStep1Screen> createState() =>
      _ProfileSetupStep1ScreenState();
}

class _ProfileSetupStep1ScreenState
    extends ConsumerState<ProfileSetupStep1Screen> {
  final _pageController = PageController();
  int _page = 0;
  final _bioController = TextEditingController();
  String? _error;
  bool _submitting = false;

  @override
  void dispose() {
    _pageController.dispose();
    _bioController.dispose();
    super.dispose();
  }

  void _next() {
    if (_page < 3) {
      setState(() => _page++);
      _pageController.animateToPage(
        _page,
        duration: const Duration(milliseconds: 280),
        curve: Curves.easeInOut,
      );
    } else {
      _submit();
    }
  }

  void _back() {
    if (_page == 0) return;
    setState(() => _page--);
    _pageController.animateToPage(
      _page,
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeInOut,
    );
  }

  Future<void> _submit() async {
    setState(() {
      _submitting = true;
      _error = null;
    });
    try {
      await ref.read(profileSetupControllerProvider.notifier).submitStage1();
      if (mounted) context.go('/profile-setup/photo');
    } on Object catch (e) {
      setState(() => _error = ErrorMessages.resolve(_extractApiError(e)));
    } finally {
      if (mounted) setState(() => _submitting = false);
    }
  }

  bool _canProceed(ProfileSetupDraft draft) {
    switch (_page) {
      case 0:
        return draft.maritalStatus != null;
      case 1:
        return draft.hasChildren != null;
      case 2:
        return draft.relationshipIntent != null;
      case 3:
        return _bioController.text.trim().length >= 30;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final draft = ref.watch(profileSetupControllerProvider);
    final canNext = _canProceed(draft);
    return LLScaffold(
      title: '프로필',
      stepLabel: '단계 4 / 5 · 서브 ${_page + 1} / 4',
      showBack: _page > 0,
      onBack: _back,
      bottom: Column(
        children: [
          if (_error != null) InlineError(message: _error!),
          PrimaryButton(
            label: _page == 3 ? '저장하고 다음으로' : '다음',
            loading: _submitting,
            onPressed: canNext ? _next : null,
          ),
        ],
      ),
      child: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _maritalPage(draft),
          _childrenPage(draft),
          _intentPage(draft),
          _bioPage(),
        ],
      ),
    );
  }

  Widget _maritalPage(ProfileSetupDraft draft) {
    return ListView(
      children: [
        const SizedBox(height: AppSpacing.m),
        const Text('지금의 관계 상태를 알려주세요', style: AppTextStyles.h2),
        const SizedBox(height: AppSpacing.l),
        ...MaritalStatus.values.map((v) => _radio<MaritalStatus>(
              value: v,
              group: draft.maritalStatus,
              label: _maritalLabel(v),
              onChanged: (val) => ref
                  .read(profileSetupControllerProvider.notifier)
                  .setMarital(val),
            )),
      ],
    );
  }

  Widget _childrenPage(ProfileSetupDraft draft) {
    return ListView(
      children: [
        const SizedBox(height: AppSpacing.m),
        const Text('자녀가 있으신가요', style: AppTextStyles.h2),
        const SizedBox(height: AppSpacing.l),
        ...HasChildren.values.map((v) => _radio<HasChildren>(
              value: v,
              group: draft.hasChildren,
              label: _childrenLabel(v),
              onChanged: (val) => ref
                  .read(profileSetupControllerProvider.notifier)
                  .setChildren(val),
            )),
      ],
    );
  }

  Widget _intentPage(ProfileSetupDraft draft) {
    return ListView(
      children: [
        const SizedBox(height: AppSpacing.m),
        const Text('어떤 인연을 찾으세요', style: AppTextStyles.h2),
        const SizedBox(height: AppSpacing.l),
        ...RelationshipIntent.values.map((v) => _radio<RelationshipIntent>(
              value: v,
              group: draft.relationshipIntent,
              label: _intentLabel(v),
              onChanged: (val) => ref
                  .read(profileSetupControllerProvider.notifier)
                  .setIntent(val),
            )),
      ],
    );
  }

  Widget _bioPage() {
    final length = _bioController.text.trim().length;
    return ListView(
      children: [
        const SizedBox(height: AppSpacing.m),
        const Text('자신을 소개해 주세요', style: AppTextStyles.h2),
        const SizedBox(height: AppSpacing.l),
        TextField(
          controller: _bioController,
          maxLines: 8,
          minLines: 6,
          maxLength: 500,
          style: AppTextStyles.body,
          decoration: const InputDecoration(
            hintText: '어떤 일을 하며 어떤 시간을 보내는지, 어떤 분을 만나고 싶은지 편하게 적어주세요. (30자 이상)',
          ),
          onChanged: (v) {
            ref.read(profileSetupControllerProvider.notifier).setBio(v);
            setState(() {});
          },
        ),
        Text(
          length < 30 ? '$length / 30  조금만 더 알려주세요' : '$length 자',
          style: AppTextStyles.captionMuted,
        ),
      ],
    );
  }

  Widget _radio<T>({
    required T value,
    required T? group,
    required String label,
    required ValueChanged<T> onChanged,
  }) {
    return InkWell(
      onTap: () => onChanged(value),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        constraints: const BoxConstraints(minHeight: 56),
        child: Row(
          children: [
            // ignore: deprecated_member_use
            Radio<T>(
              value: value,
              // ignore: deprecated_member_use
              groupValue: group,
              // ignore: deprecated_member_use
              onChanged: (v) {
                if (v != null) onChanged(v);
              },
            ),
            const SizedBox(width: 8),
            Expanded(child: Text(label, style: AppTextStyles.body)),
          ],
        ),
      ),
    );
  }

  String _maritalLabel(MaritalStatus s) => switch (s) {
        MaritalStatus.singleNeverMarried => '미혼',
        MaritalStatus.divorced => '이혼',
        MaritalStatus.widowed => '사별',
        MaritalStatus.separated => '별거',
      };

  String _childrenLabel(HasChildren c) => switch (c) {
        HasChildren.none => '자녀 없음',
        HasChildren.livingWith => '함께 거주',
        HasChildren.notLivingWith => '따로 거주',
        HasChildren.preferNotToSay => '답변하지 않음',
      };

  String _intentLabel(RelationshipIntent i) => switch (i) {
        RelationshipIntent.seriousDating => '진지한 만남',
        RelationshipIntent.remarriage => '재혼을 전제로',
        RelationshipIntent.companionship => '동반자 관계',
        RelationshipIntent.friendship => '친구 관계',
      };
}

ApiError _extractApiError(Object e) {
  if (e is ApiError) return e;
  final dynamic d = e;
  try {
    final inner = d.error;
    if (inner is ApiError) return inner;
  } catch (_) {}
  return ApiError(code: 'UNKNOWN_ERROR', message: e.toString());
}
