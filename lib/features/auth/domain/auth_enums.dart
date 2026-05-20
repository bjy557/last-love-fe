import 'package:json_annotation/json_annotation.dart';

/// Domain enums shared by auth + profile setup.
///
/// Every value carries an explicit `@JsonValue` so the BE contract is locked
/// regardless of `field_rename` defaults.
enum Gender {
  @JsonValue('MALE')
  male,
  @JsonValue('FEMALE')
  female,
}

enum PhoneVerificationPurpose {
  @JsonValue('SIGNUP')
  signup,
  @JsonValue('LOGIN')
  login,
}

enum MaritalStatus {
  @JsonValue('SINGLE_NEVER_MARRIED')
  singleNeverMarried,
  @JsonValue('DIVORCED')
  divorced,
  @JsonValue('WIDOWED')
  widowed,
  @JsonValue('SEPARATED')
  separated,
}

enum HasChildren {
  @JsonValue('NONE')
  none,
  @JsonValue('LIVING_WITH')
  livingWith,
  @JsonValue('NOT_LIVING_WITH')
  notLivingWith,
  @JsonValue('PREFER_NOT_TO_SAY')
  preferNotToSay,
}

enum RelationshipIntent {
  @JsonValue('SERIOUS_DATING')
  seriousDating,
  @JsonValue('REMARRIAGE')
  remarriage,
  @JsonValue('COMPANIONSHIP')
  companionship,
  @JsonValue('FRIENDSHIP')
  friendship,
}

enum EducationLevel {
  @JsonValue('HIGH_SCHOOL')
  highSchool,
  @JsonValue('COLLEGE')
  college,
  @JsonValue('BACHELOR')
  bachelor,
  @JsonValue('MASTER')
  master,
  @JsonValue('DOCTORATE')
  doctorate,
  @JsonValue('OTHER')
  other,
}

enum Religion {
  @JsonValue('NONE')
  none,
  @JsonValue('CHRISTIAN')
  christian,
  @JsonValue('CATHOLIC')
  catholic,
  @JsonValue('BUDDHIST')
  buddhist,
  @JsonValue('OTHER')
  other,
  @JsonValue('PREFER_NOT_TO_SAY')
  preferNotToSay,
}

enum SmokingStatus {
  @JsonValue('NEVER')
  never,
  @JsonValue('OCCASIONAL')
  occasional,
  @JsonValue('REGULAR')
  regular,
  @JsonValue('QUIT')
  quit,
}

enum DrinkingStatus {
  @JsonValue('NEVER')
  never,
  @JsonValue('OCCASIONAL')
  occasional,
  @JsonValue('SOCIAL')
  social,
  @JsonValue('REGULAR')
  regular,
}

enum UserAccountStatus {
  @JsonValue('ACTIVE')
  active,
  @JsonValue('SUSPENDED')
  suspended,
  @JsonValue('DEACTIVATED')
  deactivated,
  @JsonValue('DELETED')
  deleted,
}

enum PhotoReviewStatus {
  @JsonValue('PENDING')
  pending,
  @JsonValue('APPROVED')
  approved,
  @JsonValue('REJECTED')
  rejected,
}

enum ProfileCompletenessLevel {
  @JsonValue('EMPTY')
  empty,
  @JsonValue('STAGE_1_REQUIRED')
  stage1Required,
  @JsonValue('STAGE_2_RECOMMENDED')
  stage2Recommended,
  @JsonValue('STAGE_3_COMPLETE')
  stage3Complete,
}

enum PhotoContentType {
  @JsonValue('image/jpeg')
  jpeg,
  @JsonValue('image/png')
  png,
  @JsonValue('image/heic')
  heic,
}

extension PhotoContentTypeMime on PhotoContentType {
  String get mime {
    switch (this) {
      case PhotoContentType.jpeg:
        return 'image/jpeg';
      case PhotoContentType.png:
        return 'image/png';
      case PhotoContentType.heic:
        return 'image/heic';
    }
  }

  static PhotoContentType fromPath(String path) {
    final p = path.toLowerCase();
    if (p.endsWith('.png')) return PhotoContentType.png;
    if (p.endsWith('.heic') || p.endsWith('.heif')) return PhotoContentType.heic;
    return PhotoContentType.jpeg;
  }
}
