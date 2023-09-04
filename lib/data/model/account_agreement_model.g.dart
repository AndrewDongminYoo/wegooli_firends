// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_agreement_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccountAgreementModel _$AccountAgreementModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'AccountAgreementModel',
      json,
      ($checkedConvert) {
        final val = AccountAgreementModel(
          classification:
              $checkedConvert('classification', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          agreeYn: $checkedConvert('agreeYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AccountAgreementModelToJson(
    AccountAgreementModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('classification', instance.classification);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('agreeYn', instance.agreeYn);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  return val;
}
