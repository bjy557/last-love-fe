import 'package:freezed_annotation/freezed_annotation.dart';

part 'agreement_set.freezed.dart';
part 'agreement_set.g.dart';

@freezed
class MarketingChannels with _$MarketingChannels {
  const factory MarketingChannels({
    bool? email,
    bool? sms,
    bool? push,
  }) = _MarketingChannels;

  factory MarketingChannels.fromJson(Map<String, dynamic> json) =>
      _$MarketingChannelsFromJson(json);
}

@freezed
class AgreementSet with _$AgreementSet {
  const factory AgreementSet({
    required bool terms,
    required bool privacy,
    bool? privacyOptional,
    required bool location,
    required bool ageConfirmed,
    required bool marketing,
    MarketingChannels? marketingChannels,
    required String termsVersion,
  }) = _AgreementSet;

  factory AgreementSet.fromJson(Map<String, dynamic> json) =>
      _$AgreementSetFromJson(json);
}
