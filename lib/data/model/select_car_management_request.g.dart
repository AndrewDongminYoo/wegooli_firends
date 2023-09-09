// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_car_management_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectCarManagementRequest _$SelectCarManagementRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'SelectCarManagementRequest',
      json,
      ($checkedConvert) {
        final val = SelectCarManagementRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          oilCheckDate: $checkedConvert('oilCheckDate', (v) => v as String?),
          tireCheckDate: $checkedConvert('tireCheckDate', (v) => v as String?),
          batteryStatus: $checkedConvert('batteryStatus', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$SelectCarManagementRequestToJson(
    SelectCarManagementRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('carNum', instance.carNum);
  writeNotNull('oilCheckDate', instance.oilCheckDate);
  writeNotNull('tireCheckDate', instance.tireCheckDate);
  writeNotNull('batteryStatus', instance.batteryStatus);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  return val;
}
