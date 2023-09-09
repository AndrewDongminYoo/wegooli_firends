// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_car_management_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateCarManagementRequest _$UpdateCarManagementRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateCarManagementRequest',
      json,
      ($checkedConvert) {
        final val = UpdateCarManagementRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          oilCheckDate: $checkedConvert('oilCheckDate', (v) => v as String?),
          tireCheckDate: $checkedConvert('tireCheckDate', (v) => v as String?),
          batteryStatus: $checkedConvert('batteryStatus', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateCarManagementRequestToJson(
    UpdateCarManagementRequest instance) {
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
  return val;
}
