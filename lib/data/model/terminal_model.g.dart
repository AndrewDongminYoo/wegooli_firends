// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminalModel _$TerminalModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TerminalModel',
      json,
      ($checkedConvert) {
        final val = TerminalModel(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          seats: $checkedConvert('seats', (v) => v as int?),
          model: $checkedConvert('model', (v) => v as String?),
          volt: $checkedConvert('volt', (v) => v as String?),
          fuelType: $checkedConvert('fuelType', (v) => v as String?),
          fuel: $checkedConvert('fuel', (v) => v as String?),
          segment: $checkedConvert('segment', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
          carImage: $checkedConvert('carImage', (v) => v as String?),
          carNickName: $checkedConvert('carNickName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TerminalModelToJson(TerminalModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('carNum', instance.carNum);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('status', instance.status);
  writeNotNull('seats', instance.seats);
  writeNotNull('model', instance.model);
  writeNotNull('volt', instance.volt);
  writeNotNull('fuelType', instance.fuelType);
  writeNotNull('fuel', instance.fuel);
  writeNotNull('segment', instance.segment);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('teamSeq', instance.teamSeq);
  writeNotNull('carImage', instance.carImage);
  writeNotNull('carNickName', instance.carNickName);
  return val;
}
