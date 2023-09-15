// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorUserModel _$OperatorUserModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorUserModel',
      json,
      ($checkedConvert) {
        final val = OperatorUserModel(
          name: $checkedConvert('name', (v) => v as String?),
          teamName: $checkedConvert('teamName', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          contract: $checkedConvert('contract', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String?),
          rrn: $checkedConvert('rrn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          licenseYn: $checkedConvert('licenseYn', (v) => v as String?),
          paymentCardYn: $checkedConvert('paymentCardYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorUserModelToJson(OperatorUserModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('teamName', instance.teamName);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('contract', instance.contract);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('sex', instance.sex);
  writeNotNull('rrn', instance.rrn);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('licenseYn', instance.licenseYn);
  writeNotNull('paymentCardYn', instance.paymentCardYn);
  return val;
}
