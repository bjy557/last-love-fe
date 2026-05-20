import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/primary_button.dart';
import '../../auth/domain/auth_enums.dart';
import '../application/preferences_controller.dart';
import '../domain/swipe_models.dart';

class PreferencesScreen extends ConsumerStatefulWidget {
  const PreferencesScreen({super.key});

  @override
  ConsumerState<PreferencesScreen> createState() => _PreferencesScreenState();
}

class _PreferencesScreenState extends ConsumerState<PreferencesScreen> {
  RangeValues _ageRange = const RangeValues(45, 60);
  int _distanceKm = 30;
  Set<Gender> _genders = <Gender>{};
  Set<MaritalStatus> _marital = <MaritalStatus>{};
  Set<RelationshipIntent> _intents = <RelationshipIntent>{};
  bool _saving = false;

  static const List<int> _distanceSteps = [5, 10, 20, 50, 100, 999];

  void _hydrate(SwipePreferences p) {
    _ageRange = RangeValues(p.ageMin.toDouble(), p.ageMax.toDouble());
    _distanceKm = p.distanceKm;
    _genders = p.genders?.toSet() ?? <Gender>{};
    _marital = p.maritalStatuses?.toSet() ?? <MaritalStatus>{};
    _intents = p.relationshipIntents?.toSet() ?? <RelationshipIntent>{};
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    final messenger = ScaffoldMessenger.of(context);
    final navigator = Navigator.of(context);
    final body = UpdateSwipePreferencesRequest(
      ageMin: _ageRange.start.round(),
      ageMax: _ageRange.end.round(),
      distanceKm: _distanceKm,
      genders: _genders.isEmpty ? null : _genders.toList(),
      maritalStatuses: _marital.isEmpty ? null : _marital.toList(),
      relationshipIntents: _intents.isEmpty ? null : _intents.toList(),
    );
    try {
      await ref.read(preferencesControllerProvider.notifier).save(body);
      messenger.showSnackBar(
        const SnackBar(
          content: Text('저장됐어요. 내일부터 새로운 인연을 소개해 드려요.'),
          behavior: SnackBarBehavior.floating,
        ),
      );
      navigator.maybePop();
    } on ApiError catch (e) {
      messenger.showSnackBar(SnackBar(
        content: Text(ErrorMessages.resolve(e)),
        behavior: SnackBarBehavior.floating,
      ));
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(swipePreferencesProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('어떤 분을 만나고 싶으세요')),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Padding(
          padding: const EdgeInsets.all(AppSpacing.l),
          child: Center(
            child: Text(
              e is ApiError ? ErrorMessages.resolve(e) : '설정을 불러오지 못했어요.',
              style: AppTextStyles.body,
            ),
          ),
        ),
        data: (prefs) {
          _hydrate(prefs);
          return _buildForm(context);
        },
      ),
    );
  }

  Widget _buildForm(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(AppSpacing.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('나이 범위', style: AppTextStyles.h3),
            const SizedBox(height: AppSpacing.s),
            Text(
              '${_ageRange.start.round()}세 ~ ${_ageRange.end.round()}세',
              style: AppTextStyles.body,
            ),
            RangeSlider(
              min: 40,
              max: 80,
              divisions: 40,
              values: _ageRange,
              labels: RangeLabels(
                '${_ageRange.start.round()}',
                '${_ageRange.end.round()}',
              ),
              onChanged: (v) => setState(() => _ageRange = v),
            ),
            const Divider(height: AppSpacing.xl),
            const Text('거리', style: AppTextStyles.h3),
            const SizedBox(height: AppSpacing.s),
            Text(
              _distanceKm == 999 ? '전국' : '$_distanceKm km 이내',
              style: AppTextStyles.body,
            ),
            const SizedBox(height: AppSpacing.s),
            Wrap(
              spacing: AppSpacing.s,
              children: _distanceSteps.map((km) {
                final selected = km == _distanceKm;
                return ChoiceChip(
                  label: Text(km == 999 ? '전국' : '${km}km'),
                  selected: selected,
                  onSelected: (_) => setState(() => _distanceKm = km),
                );
              }).toList(),
            ),
            const Divider(height: AppSpacing.xl),
            const Text('성별', style: AppTextStyles.h3),
            const SizedBox(height: AppSpacing.s),
            Wrap(
              spacing: AppSpacing.s,
              children: Gender.values.map((g) {
                return FilterChip(
                  label: Text(g == Gender.male ? '남성' : '여성'),
                  selected: _genders.contains(g),
                  onSelected: (sel) => setState(() {
                    if (sel) {
                      _genders.add(g);
                    } else {
                      _genders.remove(g);
                    }
                  }),
                );
              }).toList(),
            ),
            const Divider(height: AppSpacing.xl),
            const Text('관계 상태', style: AppTextStyles.h3),
            const SizedBox(height: 4),
            const Text(
              '관심 있는 상태를 모두 선택해 주세요',
              style: AppTextStyles.captionMuted,
            ),
            const SizedBox(height: AppSpacing.s),
            Wrap(
              spacing: AppSpacing.s,
              children: MaritalStatus.values.map((m) {
                return FilterChip(
                  label: Text(_maritalLabel(m)),
                  selected: _marital.contains(m),
                  onSelected: (sel) => setState(() {
                    if (sel) {
                      _marital.add(m);
                    } else {
                      _marital.remove(m);
                    }
                  }),
                );
              }).toList(),
            ),
            const Divider(height: AppSpacing.xl),
            const Text('가입 의도', style: AppTextStyles.h3),
            const SizedBox(height: AppSpacing.s),
            Wrap(
              spacing: AppSpacing.s,
              children: RelationshipIntent.values.map((r) {
                return FilterChip(
                  label: Text(_intentLabel(r)),
                  selected: _intents.contains(r),
                  onSelected: (sel) => setState(() {
                    if (sel) {
                      _intents.add(r);
                    } else {
                      _intents.remove(r);
                    }
                  }),
                );
              }).toList(),
            ),
            const SizedBox(height: AppSpacing.xl),
            PrimaryButton(
              label: '이대로 만나보기',
              loading: _saving,
              onPressed: _saving ? null : _save,
            ),
            const SizedBox(height: AppSpacing.m),
            TextButton(
              onPressed: _saving ? null : () => context.pop(),
              child: const Text('그만두기'),
            ),
          ],
        ),
      ),
    );
  }
}

String _maritalLabel(MaritalStatus value) {
  switch (value) {
    case MaritalStatus.singleNeverMarried:
      return '미혼';
    case MaritalStatus.divorced:
      return '이혼';
    case MaritalStatus.widowed:
      return '사별';
    case MaritalStatus.separated:
      return '별거';
  }
}

String _intentLabel(RelationshipIntent value) {
  switch (value) {
    case RelationshipIntent.seriousDating:
      return '진지한 만남';
    case RelationshipIntent.remarriage:
      return '재혼을 전제로';
    case RelationshipIntent.companionship:
      return '동반자 관계';
    case RelationshipIntent.friendship:
      return '친구 관계';
  }
}
