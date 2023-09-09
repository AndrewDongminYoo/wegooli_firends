// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_team_account_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorTeamAccountDetail _$OperatorTeamAccountDetailFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorTeamAccountDetail',
      json,
      ($checkedConvert) {
        final val = OperatorTeamAccountDetail(
          name: $checkedConvert('name', (v) => v as String?),
          teamName: $checkedConvert('teamName', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String?),
          age: $checkedConvert('age', (v) => v as String?),
          signDate: $checkedConvert('signDate', (v) => v as String?),
          monthlyPay: $checkedConvert('monthlyPay', (v) => v as int?),
          licenseYn: $checkedConvert('licenseYn', (v) => v as String?),
          paymentCardYn: $checkedConvert('paymentCardYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorTeamAccountDetailToJson(
    OperatorTeamAccountDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('teamName', instance.teamName);
  writeNotNull('email', instance.email);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('sex', instance.sex);
  writeNotNull('age', instance.age);
  writeNotNull('signDate', instance.signDate);
  writeNotNull('monthlyPay', instance.monthlyPay);
  writeNotNull('licenseYn', instance.licenseYn);
  writeNotNull('paymentCardYn', instance.paymentCardYn);
  return val;
}
