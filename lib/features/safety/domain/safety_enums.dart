import 'package:json_annotation/json_annotation.dart';

/// Reason buckets for `POST /reports`. Wire format is UPPER_SNAKE_CASE; we
/// keep human-friendly labels in [ReportReasonLabel].
enum ReportReason {
  @JsonValue('HARASSMENT')
  harassment,
  @JsonValue('SCAM')
  scam,
  @JsonValue('INAPPROPRIATE_CONTENT')
  inappropriateContent,
  @JsonValue('FAKE_PROFILE')
  fakeProfile,
  @JsonValue('UNDERAGE')
  underage,
  @JsonValue('SAFETY_CONCERN')
  safetyConcern,
  @JsonValue('OTHER')
  other,
}

/// Strategist 5.2 labels — full bucket, no abbreviations.
class ReportReasonLabel {
  ReportReasonLabel._();

  static String of(ReportReason reason) {
    switch (reason) {
      case ReportReason.harassment:
        return '괴롭힘·폭언';
      case ReportReason.scam:
        return '사기·금전 요구';
      case ReportReason.inappropriateContent:
        return '부적절한 콘텐츠';
      case ReportReason.fakeProfile:
        return '가짜 프로필';
      case ReportReason.underage:
        return '미성년자 의심';
      case ReportReason.safetyConcern:
        return '만나서 피해를 입었어요';
      case ReportReason.other:
        return '그 외';
    }
  }

  /// Display order for the chips grid (P0 risks first).
  static const order = <ReportReason>[
    ReportReason.harassment,
    ReportReason.scam,
    ReportReason.inappropriateContent,
    ReportReason.fakeProfile,
    ReportReason.underage,
    ReportReason.safetyConcern,
    ReportReason.other,
  ];
}

/// Where a block row came from. Surface in the block list as a small label.
enum BlockSource {
  @JsonValue('MANUAL')
  manual,
  @JsonValue('REPORT_SIDE_EFFECT')
  reportSideEffect,
}

/// Lifecycle status of a report. Only visible to the reporter.
enum ReportStatus {
  @JsonValue('RECEIVED')
  received,
  @JsonValue('REVIEWING')
  reviewing,
  @JsonValue('RESOLVED')
  resolved,
  @JsonValue('DISMISSED')
  dismissed,
}
