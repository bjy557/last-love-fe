// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swipe_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SwipeRequestImpl _$$SwipeRequestImplFromJson(Map<String, dynamic> json) =>
    _$SwipeRequestImpl(
      action: $enumDecode(_$SwipeActionEnumMap, json['action']),
      deckId: json['deckId'] as String?,
    );

Map<String, dynamic> _$$SwipeRequestImplToJson(_$SwipeRequestImpl instance) =>
    <String, dynamic>{
      'action': _$SwipeActionEnumMap[instance.action]!,
      'deckId': instance.deckId,
    };

const _$SwipeActionEnumMap = {
  SwipeAction.like: 'LIKE',
  SwipeAction.pass: 'PASS',
};

_$SwipeResultResponseImpl _$$SwipeResultResponseImplFromJson(
  Map<String, dynamic> json,
) => _$SwipeResultResponseImpl(
  outcome: $enumDecode(_$SwipeOutcomeEnumMap, json['outcome']),
  matchId: (json['matchId'] as num?)?.toInt(),
  matchedUser: json['matchedUser'] == null
      ? null
      : ProfileCardResponse.fromJson(
          json['matchedUser'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$SwipeResultResponseImplToJson(
  _$SwipeResultResponseImpl instance,
) => <String, dynamic>{
  'outcome': _$SwipeOutcomeEnumMap[instance.outcome]!,
  'matchId': instance.matchId,
  'matchedUser': instance.matchedUser,
};

const _$SwipeOutcomeEnumMap = {
  SwipeOutcome.noMatch: 'NO_MATCH',
  SwipeOutcome.matched: 'MATCHED',
};

_$DailySwipeCardsResponseImpl _$$DailySwipeCardsResponseImplFromJson(
  Map<String, dynamic> json,
) => _$DailySwipeCardsResponseImpl(
  deckId: json['deckId'] as String,
  generatedAt: DateTime.parse(json['generatedAt'] as String),
  expiresAt: DateTime.parse(json['expiresAt'] as String),
  totalCount: (json['totalCount'] as num).toInt(),
  remainingCount: (json['remainingCount'] as num).toInt(),
  allViewed: json['allViewed'] as bool,
  cards:
      (json['cards'] as List<dynamic>?)
          ?.map((e) => ProfileCardResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ProfileCardResponse>[],
);

Map<String, dynamic> _$$DailySwipeCardsResponseImplToJson(
  _$DailySwipeCardsResponseImpl instance,
) => <String, dynamic>{
  'deckId': instance.deckId,
  'generatedAt': instance.generatedAt.toIso8601String(),
  'expiresAt': instance.expiresAt.toIso8601String(),
  'totalCount': instance.totalCount,
  'remainingCount': instance.remainingCount,
  'allViewed': instance.allViewed,
  'cards': instance.cards,
};

_$UndoSwipeResultResponseImpl _$$UndoSwipeResultResponseImplFromJson(
  Map<String, dynamic> json,
) => _$UndoSwipeResultResponseImpl(
  undoneTargetUserId: (json['undoneTargetUserId'] as num).toInt(),
  restoredAction: $enumDecode(_$SwipeActionEnumMap, json['restoredAction']),
  undoneAt: DateTime.parse(json['undoneAt'] as String),
  matchDissolved: json['matchDissolved'] as bool? ?? false,
  restoredCard: json['restoredCard'] == null
      ? null
      : ProfileCardResponse.fromJson(
          json['restoredCard'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$UndoSwipeResultResponseImplToJson(
  _$UndoSwipeResultResponseImpl instance,
) => <String, dynamic>{
  'undoneTargetUserId': instance.undoneTargetUserId,
  'restoredAction': _$SwipeActionEnumMap[instance.restoredAction]!,
  'undoneAt': instance.undoneAt.toIso8601String(),
  'matchDissolved': instance.matchDissolved,
  'restoredCard': instance.restoredCard,
};

_$SwipePreferencesImpl _$$SwipePreferencesImplFromJson(
  Map<String, dynamic> json,
) => _$SwipePreferencesImpl(
  ageMin: (json['ageMin'] as num).toInt(),
  ageMax: (json['ageMax'] as num).toInt(),
  distanceKm: (json['distanceKm'] as num).toInt(),
  genders: (json['genders'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$GenderEnumMap, e))
      .toList(),
  maritalStatuses: (json['maritalStatuses'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$MaritalStatusEnumMap, e))
      .toList(),
  relationshipIntents: (json['relationshipIntents'] as List<dynamic>?)
      ?.map((e) => $enumDecode(_$RelationshipIntentEnumMap, e))
      .toList(),
);

Map<String, dynamic> _$$SwipePreferencesImplToJson(
  _$SwipePreferencesImpl instance,
) => <String, dynamic>{
  'ageMin': instance.ageMin,
  'ageMax': instance.ageMax,
  'distanceKm': instance.distanceKm,
  'genders': instance.genders?.map((e) => _$GenderEnumMap[e]!).toList(),
  'maritalStatuses': instance.maritalStatuses
      ?.map((e) => _$MaritalStatusEnumMap[e]!)
      .toList(),
  'relationshipIntents': instance.relationshipIntents
      ?.map((e) => _$RelationshipIntentEnumMap[e]!)
      .toList(),
};

const _$GenderEnumMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};

const _$MaritalStatusEnumMap = {
  MaritalStatus.singleNeverMarried: 'SINGLE_NEVER_MARRIED',
  MaritalStatus.divorced: 'DIVORCED',
  MaritalStatus.widowed: 'WIDOWED',
  MaritalStatus.separated: 'SEPARATED',
};

const _$RelationshipIntentEnumMap = {
  RelationshipIntent.seriousDating: 'SERIOUS_DATING',
  RelationshipIntent.remarriage: 'REMARRIAGE',
  RelationshipIntent.companionship: 'COMPANIONSHIP',
  RelationshipIntent.friendship: 'FRIENDSHIP',
};

_$UpdateSwipePreferencesRequestImpl
_$$UpdateSwipePreferencesRequestImplFromJson(Map<String, dynamic> json) =>
    _$UpdateSwipePreferencesRequestImpl(
      ageMin: (json['ageMin'] as num).toInt(),
      ageMax: (json['ageMax'] as num).toInt(),
      distanceKm: (json['distanceKm'] as num).toInt(),
      genders: (json['genders'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$GenderEnumMap, e))
          .toList(),
      maritalStatuses: (json['maritalStatuses'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$MaritalStatusEnumMap, e))
          .toList(),
      relationshipIntents: (json['relationshipIntents'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$RelationshipIntentEnumMap, e))
          .toList(),
    );

Map<String, dynamic> _$$UpdateSwipePreferencesRequestImplToJson(
  _$UpdateSwipePreferencesRequestImpl instance,
) => <String, dynamic>{
  'ageMin': instance.ageMin,
  'ageMax': instance.ageMax,
  'distanceKm': instance.distanceKm,
  'genders': instance.genders?.map((e) => _$GenderEnumMap[e]!).toList(),
  'maritalStatuses': instance.maritalStatuses
      ?.map((e) => _$MaritalStatusEnumMap[e]!)
      .toList(),
  'relationshipIntents': instance.relationshipIntents
      ?.map((e) => _$RelationshipIntentEnumMap[e]!)
      .toList(),
};
