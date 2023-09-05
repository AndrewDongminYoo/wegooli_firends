// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'submit_withdrawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubmitWithdrawalModel _$SubmitWithdrawalModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SubmitWithdrawalModel',
      json,
      ($checkedConvert) {
        final val = SubmitWithdrawalModel(
          accountId: $checkedConvert('accountId', (v) => v as String?),
          date: $checkedConvert('date', (v) => v as String?),
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SubmitWithdrawalModelToJson(
    SubmitWithdrawalModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('date', instance.date);
  writeNotNull('teamSeq', instance.teamSeq);
  return val;
}
