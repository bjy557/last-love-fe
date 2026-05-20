// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoCardResponseImpl _$$PhotoCardResponseImplFromJson(
  Map<String, dynamic> json,
) => _$PhotoCardResponseImpl(
  id: (json['id'] as num).toInt(),
  url: json['url'] as String,
  orderIndex: (json['orderIndex'] as num).toInt(),
);

Map<String, dynamic> _$$PhotoCardResponseImplToJson(
  _$PhotoCardResponseImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'url': instance.url,
  'orderIndex': instance.orderIndex,
};

_$ProfileCardResponseImpl _$$ProfileCardResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProfileCardResponseImpl(
  userId: (json['userId'] as num).toInt(),
  displayName: json['displayName'] as String,
  age: (json['age'] as num).toInt(),
  gender: $enumDecode(_$GenderEnumMap, json['gender']),
  heightCm: (json['heightCm'] as num?)?.toInt(),
  occupation: json['occupation'] as String?,
  educationLevel: $enumDecodeNullable(
    _$EducationLevelEnumMap,
    json['educationLevel'],
  ),
  religion: $enumDecodeNullable(_$ReligionEnumMap, json['religion']),
  smokingStatus: $enumDecodeNullable(
    _$SmokingStatusEnumMap,
    json['smokingStatus'],
  ),
  drinkingStatus: $enumDecodeNullable(
    _$DrinkingStatusEnumMap,
    json['drinkingStatus'],
  ),
  maritalStatus: $enumDecodeNullable(
    _$MaritalStatusEnumMap,
    json['maritalStatus'],
  ),
  hasChildren: $enumDecodeNullable(_$HasChildrenEnumMap, json['hasChildren']),
  relationshipIntent: $enumDecode(
    _$RelationshipIntentEnumMap,
    json['relationshipIntent'],
  ),
  bio: json['bio'] as String?,
  locationCity: json['locationCity'] as String?,
  distanceLabel: json['distanceLabel'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)
          ?.map((e) => PhotoCardResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PhotoCardResponse>[],
  bioPlaceholder: json['bioPlaceholder'] as String?,
  completenessLevel: $enumDecode(
    _$ProfileCompletenessLevelEnumMap,
    json['completenessLevel'],
  ),
);

Map<String, dynamic> _$$ProfileCardResponseImplToJson(
  _$ProfileCardResponseImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'displayName': instance.displayName,
  'age': instance.age,
  'gender': _$GenderEnumMap[instance.gender]!,
  'heightCm': instance.heightCm,
  'occupation': instance.occupation,
  'educationLevel': _$EducationLevelEnumMap[instance.educationLevel],
  'religion': _$ReligionEnumMap[instance.religion],
  'smokingStatus': _$SmokingStatusEnumMap[instance.smokingStatus],
  'drinkingStatus': _$DrinkingStatusEnumMap[instance.drinkingStatus],
  'maritalStatus': _$MaritalStatusEnumMap[instance.maritalStatus],
  'hasChildren': _$HasChildrenEnumMap[instance.hasChildren],
  'relationshipIntent':
      _$RelationshipIntentEnumMap[instance.relationshipIntent]!,
  'bio': instance.bio,
  'locationCity': instance.locationCity,
  'distanceLabel': instance.distanceLabel,
  'photos': instance.photos,
  'bioPlaceholder': instance.bioPlaceholder,
  'completenessLevel':
      _$ProfileCompletenessLevelEnumMap[instance.completenessLevel]!,
};

const _$GenderEnumMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};

const _$EducationLevelEnumMap = {
  EducationLevel.highSchool: 'HIGH_SCHOOL',
  EducationLevel.college: 'COLLEGE',
  EducationLevel.bachelor: 'BACHELOR',
  EducationLevel.master: 'MASTER',
  EducationLevel.doctorate: 'DOCTORATE',
  EducationLevel.other: 'OTHER',
};

const _$ReligionEnumMap = {
  Religion.none: 'NONE',
  Religion.christian: 'CHRISTIAN',
  Religion.catholic: 'CATHOLIC',
  Religion.buddhist: 'BUDDHIST',
  Religion.other: 'OTHER',
  Religion.preferNotToSay: 'PREFER_NOT_TO_SAY',
};

const _$SmokingStatusEnumMap = {
  SmokingStatus.never: 'NEVER',
  SmokingStatus.occasional: 'OCCASIONAL',
  SmokingStatus.regular: 'REGULAR',
  SmokingStatus.quit: 'QUIT',
};

const _$DrinkingStatusEnumMap = {
  DrinkingStatus.never: 'NEVER',
  DrinkingStatus.occasional: 'OCCASIONAL',
  DrinkingStatus.social: 'SOCIAL',
  DrinkingStatus.regular: 'REGULAR',
};

const _$MaritalStatusEnumMap = {
  MaritalStatus.singleNeverMarried: 'SINGLE_NEVER_MARRIED',
  MaritalStatus.divorced: 'DIVORCED',
  MaritalStatus.widowed: 'WIDOWED',
  MaritalStatus.separated: 'SEPARATED',
};

const _$HasChildrenEnumMap = {
  HasChildren.none: 'NONE',
  HasChildren.livingWith: 'LIVING_WITH',
  HasChildren.notLivingWith: 'NOT_LIVING_WITH',
  HasChildren.preferNotToSay: 'PREFER_NOT_TO_SAY',
};

const _$RelationshipIntentEnumMap = {
  RelationshipIntent.seriousDating: 'SERIOUS_DATING',
  RelationshipIntent.remarriage: 'REMARRIAGE',
  RelationshipIntent.companionship: 'COMPANIONSHIP',
  RelationshipIntent.friendship: 'FRIENDSHIP',
};

const _$ProfileCompletenessLevelEnumMap = {
  ProfileCompletenessLevel.empty: 'EMPTY',
  ProfileCompletenessLevel.stage1Required: 'STAGE_1_REQUIRED',
  ProfileCompletenessLevel.stage2Recommended: 'STAGE_2_RECOMMENDED',
  ProfileCompletenessLevel.stage3Complete: 'STAGE_3_COMPLETE',
};
