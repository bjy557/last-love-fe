// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agreement_set.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketingChannelsImpl _$$MarketingChannelsImplFromJson(
  Map<String, dynamic> json,
) => _$MarketingChannelsImpl(
  email: json['email'] as bool?,
  sms: json['sms'] as bool?,
  push: json['push'] as bool?,
);

Map<String, dynamic> _$$MarketingChannelsImplToJson(
  _$MarketingChannelsImpl instance,
) => <String, dynamic>{
  'email': instance.email,
  'sms': instance.sms,
  'push': instance.push,
};

_$AgreementSetImpl _$$AgreementSetImplFromJson(Map<String, dynamic> json) =>
    _$AgreementSetImpl(
      terms: json['terms'] as bool,
      privacy: json['privacy'] as bool,
      privacyOptional: json['privacyOptional'] as bool?,
      location: json['location'] as bool,
      ageConfirmed: json['ageConfirmed'] as bool,
      marketing: json['marketing'] as bool,
      marketingChannels: json['marketingChannels'] == null
          ? null
          : MarketingChannels.fromJson(
              json['marketingChannels'] as Map<String, dynamic>,
            ),
      termsVersion: json['termsVersion'] as String,
    );

Map<String, dynamic> _$$AgreementSetImplToJson(_$AgreementSetImpl instance) =>
    <String, dynamic>{
      'terms': instance.terms,
      'privacy': instance.privacy,
      'privacyOptional': instance.privacyOptional,
      'location': instance.location,
      'ageConfirmed': instance.ageConfirmed,
      'marketing': instance.marketing,
      'marketingChannels': instance.marketingChannels,
      'termsVersion': instance.termsVersion,
    };
