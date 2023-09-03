// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_control_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarControlHistoryModel _$CarControlHistoryModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'CarControlHistoryModel',
      json,
      ($checkedConvert) {
        final val = CarControlHistoryModel(
          seq: $checkedConvert('seq', (v) => v as int?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          terminalSeq: $checkedConvert('terminalSeq', (v) => v as int?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          context: $checkedConvert('context', (v) => v as String?),
          successYn: $checkedConvert('successYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CarControlHistoryModelToJson(
    CarControlHistoryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('terminalSeq', instance.terminalSeq);
  writeNotNull('carNum', instance.carNum);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('context', instance.context);
  writeNotNull('successYn', instance.successYn);
  return val;
}
