// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PrivacySettingsImpl _$$PrivacySettingsImplFromJson(
  Map<String, dynamic> json,
) => _$PrivacySettingsImpl(
  showHeight: json['showHeight'] as bool? ?? true,
  showOccupation: json['showOccupation'] as bool? ?? true,
  showReligion: json['showReligion'] as bool? ?? true,
  showHasChildren: json['showHasChildren'] as bool? ?? true,
  showSmokingDrinking: json['showSmokingDrinking'] as bool? ?? true,
  showMaritalStatus: json['showMaritalStatus'] as bool? ?? true,
);

Map<String, dynamic> _$$PrivacySettingsImplToJson(
  _$PrivacySettingsImpl instance,
) => <String, dynamic>{
  'showHeight': instance.showHeight,
  'showOccupation': instance.showOccupation,
  'showReligion': instance.showReligion,
  'showHasChildren': instance.showHasChildren,
  'showSmokingDrinking': instance.showSmokingDrinking,
  'showMaritalStatus': instance.showMaritalStatus,
};

_$UpdateProfileRequestImpl _$$UpdateProfileRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateProfileRequestImpl(
  maritalStatus: $enumDecodeNullable(
    _$MaritalStatusEnumMap,
    json['maritalStatus'],
  ),
  hasChildren: $enumDecodeNullable(_$HasChildrenEnumMap, json['hasChildren']),
  relationshipIntent: $enumDecodeNullable(
    _$RelationshipIntentEnumMap,
    json['relationshipIntent'],
  ),
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
  bio: json['bio'] as String?,
  locationCity: json['locationCity'] as String?,
);

Map<String, dynamic> _$$UpdateProfileRequestImplToJson(
  _$UpdateProfileRequestImpl instance,
) => <String, dynamic>{
  'maritalStatus': _$MaritalStatusEnumMap[instance.maritalStatus],
  'hasChildren': _$HasChildrenEnumMap[instance.hasChildren],
  'relationshipIntent':
      _$RelationshipIntentEnumMap[instance.relationshipIntent],
  'heightCm': instance.heightCm,
  'occupation': instance.occupation,
  'educationLevel': _$EducationLevelEnumMap[instance.educationLevel],
  'religion': _$ReligionEnumMap[instance.religion],
  'smokingStatus': _$SmokingStatusEnumMap[instance.smokingStatus],
  'drinkingStatus': _$DrinkingStatusEnumMap[instance.drinkingStatus],
  'bio': instance.bio,
  'locationCity': instance.locationCity,
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

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ProfileResponseImpl(
  userId: (json['userId'] as num).toInt(),
  displayName: json['displayName'] as String,
  birthDate: const LocalDateConverter().fromJson(json['birthDate'] as String),
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
  relationshipIntent: $enumDecodeNullable(
    _$RelationshipIntentEnumMap,
    json['relationshipIntent'],
  ),
  bio: json['bio'] as String?,
  locationCity: json['locationCity'] as String?,
  photos:
      (json['photos'] as List<dynamic>?)
          ?.map((e) => PhotoResponse.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <PhotoResponse>[],
  privacySettings: PrivacySettings.fromJson(
    json['privacySettings'] as Map<String, dynamic>,
  ),
  completenessLevel: $enumDecode(
    _$ProfileCompletenessLevelEnumMap,
    json['completenessLevel'],
  ),
  missingRequiredFields:
      (json['missingRequiredFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  nextRecommendedFields:
      (json['nextRecommendedFields'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const <String>[],
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$ProfileResponseImplToJson(
  _$ProfileResponseImpl instance,
) => <String, dynamic>{
  'userId': instance.userId,
  'displayName': instance.displayName,
  'birthDate': const LocalDateConverter().toJson(instance.birthDate),
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
      _$RelationshipIntentEnumMap[instance.relationshipIntent],
  'bio': instance.bio,
  'locationCity': instance.locationCity,
  'photos': instance.photos,
  'privacySettings': instance.privacySettings,
  'completenessLevel':
      _$ProfileCompletenessLevelEnumMap[instance.completenessLevel]!,
  'missingRequiredFields': instance.missingRequiredFields,
  'nextRecommendedFields': instance.nextRecommendedFields,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

const _$GenderEnumMap = {Gender.male: 'MALE', Gender.female: 'FEMALE'};

const _$ProfileCompletenessLevelEnumMap = {
  ProfileCompletenessLevel.empty: 'EMPTY',
  ProfileCompletenessLevel.stage1Required: 'STAGE_1_REQUIRED',
  ProfileCompletenessLevel.stage2Recommended: 'STAGE_2_RECOMMENDED',
  ProfileCompletenessLevel.stage3Complete: 'STAGE_3_COMPLETE',
};

_$UpdateLocationRequestImpl _$$UpdateLocationRequestImplFromJson(
  Map<String, dynamic> json,
) => _$UpdateLocationRequestImpl(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
);

Map<String, dynamic> _$$UpdateLocationRequestImplToJson(
  _$UpdateLocationRequestImpl instance,
) => <String, dynamic>{
  'latitude': instance.latitude,
  'longitude': instance.longitude,
};
