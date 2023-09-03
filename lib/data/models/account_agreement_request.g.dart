// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_agreement_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountAgreementRequest _$AccountAgreementRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountAgreementRequest',
      json,
      ($checkedConvert) {
        final val = AccountAgreementRequest(
          classification:
              $checkedConvert('classification', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          agreeYn: $checkedConvert('agreeYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AccountAgreementRequestToJson(
    AccountAgreementRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('classification', instance.classification);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('agreeYn', instance.agreeYn);
  return val;
}
