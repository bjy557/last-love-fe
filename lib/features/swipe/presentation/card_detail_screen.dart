import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/api/api_error.dart';
import '../../../core/api/api_providers.dart';
import '../../../core/api/error_mapper.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../auth/domain/auth_enums.dart';
import '../data/profiles_api.dart';
import '../domain/profile_card.dart';
import 'widgets/photo_dots.dart';

final _cardProvider =
    FutureProvider.family.autoDispose<ProfileCardResponse, int>((ref, id) {
  final api = ProfilesApi(ref.read(apiDioProvider));
  return api.get(id);
});

/// Full-screen profile card with photo carousel and all public fields the
/// owner allowed via PrivacySettings. Action buttons (LIKE/PASS) intentionally
/// live only on the deck screen - the detail view is read-only this round.
class CardDetailScreen extends ConsumerStatefulWidget {
  const CardDetailScreen({super.key, required this.userId});

  final int userId;

  @override
  ConsumerState<CardDetailScreen> createState() => _CardDetailScreenState();
}

class _CardDetailScreenState extends ConsumerState<CardDetailScreen> {
  final PageController _pageController = PageController();
  int _index = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final async = ref.watch(_cardProvider(widget.userId));
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () => Navigator.of(context).maybePop(),
        ),
        actions: [
          IconButton(
            tooltip: '더보기',
            icon: const Icon(Icons.more_horiz),
            onPressed: () => _showMoreSheet(context),
          ),
        ],
      ),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) {
          final message = e is ApiError
              ? ErrorMessages.resolve(e)
              : '카드를 불러오지 못했어요.';
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.l),
              child: Text(message,
                  style: AppTextStyles.body, textAlign: TextAlign.center),
            ),
          );
        },
        data: (card) => _buildBody(card),
      ),
    );
  }

  Widget _buildBody(ProfileCardResponse card) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Stack(
              fit: StackFit.expand,
              children: [
                PageView.builder(
                  controller: _pageController,
                  itemCount: card.photos.isEmpty ? 1 : card.photos.length,
                  onPageChanged: (i) => setState(() => _index = i),
                  itemBuilder: (_, i) {
                    if (card.photos.isEmpty) {
                      return Container(color: AppColors.surfaceVariant);
                    }
                    return Image.network(
                      card.photos[i].url,
                      fit: BoxFit.cover,
                      errorBuilder: (_, _, _) =>
                          Container(color: AppColors.surfaceVariant),
                    );
                  },
                ),
                Positioned(
                  top: 12,
                  left: 0,
                  right: 0,
                  child: PhotoDots(
                    count: card.photos.length,
                    activeIndex: _index,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.l),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${card.displayName} · ${card.age}',
                    style: AppTextStyles.h1),
                if (card.distanceLabel != null) ...[
                  const SizedBox(height: AppSpacing.s),
                  Row(
                    children: [
                      const Icon(Icons.place_outlined,
                          size: 18, color: AppColors.textSecondary),
                      const SizedBox(width: 4),
                      Text(card.distanceLabel!, style: AppTextStyles.caption),
                    ],
                  ),
                ],
                const SizedBox(height: AppSpacing.l),
                ..._buildFacts(card),
                if (card.bio != null) ...[
                  const SizedBox(height: AppSpacing.l),
                  const Text('자기소개', style: AppTextStyles.h3),
                  const SizedBox(height: AppSpacing.s),
                  Text(card.bio!, style: AppTextStyles.body),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildFacts(ProfileCardResponse card) {
    final rows = <Widget>[];
    void addRow(String key, String? value) {
      if (value == null) return;
      rows.add(_FactRow(label: key, value: value));
    }

    addRow('관계 상태', _maritalLabel(card.maritalStatus));
    addRow('자녀', _hasChildrenLabel(card.hasChildren));
    addRow('가입 의도', _intentLabel(card.relationshipIntent));
    addRow('거주지', card.locationCity);
    addRow('직업', card.occupation);
    addRow('학력', _educationLabel(card.educationLevel));
    addRow('종교', _religionLabel(card.religion));
    addRow('흡연', _smokingLabel(card.smokingStatus));
    addRow('음주', _drinkingLabel(card.drinkingStatus));
    if (card.heightCm != null) {
      addRow('키', '${card.heightCm}cm');
    }
    return rows;
  }

  void _showMoreSheet(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      builder: (_) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              ListTile(
                leading: Icon(Icons.flag_outlined),
                title: Text('이 프로필 신고하기'),
                subtitle: Text('곧 제공될 예정이에요'),
                enabled: false,
              ),
              ListTile(
                leading: Icon(Icons.visibility_off_outlined),
                title: Text('이 분 보지 않기'),
                subtitle: Text('곧 제공될 예정이에요'),
                enabled: false,
              ),
              SizedBox(height: AppSpacing.s),
            ],
          ),
        );
      },
    );
  }
}

class _FactRow extends StatelessWidget {
  const _FactRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 88,
            child: Text(label, style: AppTextStyles.caption),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(value, style: AppTextStyles.body)),
        ],
      ),
    );
  }
}

String? _maritalLabel(MaritalStatus? value) {
  switch (value) {
    case null:
      return null;
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

String? _hasChildrenLabel(HasChildren? value) {
  switch (value) {
    case null:
      return null;
    case HasChildren.none:
      return '자녀 없음';
    case HasChildren.livingWith:
      return '함께 거주';
    case HasChildren.notLivingWith:
      return '따로 거주';
    case HasChildren.preferNotToSay:
      return null;
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

String? _educationLabel(EducationLevel? value) {
  switch (value) {
    case null:
      return null;
    case EducationLevel.highSchool:
      return '고등학교';
    case EducationLevel.college:
      return '전문대';
    case EducationLevel.bachelor:
      return '대학교';
    case EducationLevel.master:
      return '석사';
    case EducationLevel.doctorate:
      return '박사';
    case EducationLevel.other:
      return '기타';
  }
}

String? _religionLabel(Religion? value) {
  switch (value) {
    case null:
      return null;
    case Religion.none:
      return '없음';
    case Religion.christian:
      return '개신교';
    case Religion.catholic:
      return '천주교';
    case Religion.buddhist:
      return '불교';
    case Religion.other:
      return '기타';
    case Religion.preferNotToSay:
      return null;
  }
}

String? _smokingLabel(SmokingStatus? value) {
  switch (value) {
    case null:
      return null;
    case SmokingStatus.never:
      return '비흡연';
    case SmokingStatus.occasional:
      return '가끔';
    case SmokingStatus.regular:
      return '자주';
    case SmokingStatus.quit:
      return '끊었음';
  }
}

String? _drinkingLabel(DrinkingStatus? value) {
  switch (value) {
    case null:
      return null;
    case DrinkingStatus.never:
      return '안 함';
    case DrinkingStatus.occasional:
      return '가끔';
    case DrinkingStatus.social:
      return '사교적으로';
    case DrinkingStatus.regular:
      return '자주';
  }
}
