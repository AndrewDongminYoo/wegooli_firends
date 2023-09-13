// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorTeamModel _$OperatorTeamModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorTeamModel',
      json,
      ($checkedConvert) {
        final val = OperatorTeamModel(
          teamName: $checkedConvert('teamName', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          memberCount: $checkedConvert('memberCount', (v) => v as int?),
          model: $checkedConvert('model', (v) => v as String?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          contract: $checkedConvert('contract', (v) => v as String?),
          fee: $checkedConvert('fee', (v) => v as String?),
          startAt: $checkedConvert('startAt', (v) => v as String?),
          endAt: $checkedConvert('endAt', (v) => v as String?),
          seq: $checkedConvert('seq', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorTeamModelToJson(OperatorTeamModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('teamName', instance.teamName);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('memberCount', instance.memberCount);
  writeNotNull('model', instance.model);
  writeNotNull('carNum', instance.carNum);
  writeNotNull('contract', instance.contract);
  writeNotNull('fee', instance.fee);
  writeNotNull('startAt', instance.startAt);
  writeNotNull('endAt', instance.endAt);
  writeNotNull('seq', instance.seq);
  return val;
}
