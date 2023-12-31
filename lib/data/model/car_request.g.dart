// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarRequest _$CarRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
      'CarRequest',
      json,
      ($checkedConvert) {
        final val = CarRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          model: $checkedConvert('model', (v) => v as String?),
          carImage: $checkedConvert('carImage', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          seats: $checkedConvert('seats', (v) => v as int?),
          fuelType: $checkedConvert('fuelType', (v) => v as String?),
          segment: $checkedConvert('segment', (v) => v as String?),
          fee: $checkedConvert('fee', (v) => v as int?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CarRequestToJson(CarRequest instance) {
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
  writeNotNull('model', instance.model);
  writeNotNull('carImage', instance.carImage);
  writeNotNull('status', instance.status);
  writeNotNull('seats', instance.seats);
  writeNotNull('fuelType', instance.fuelType);
  writeNotNull('segment', instance.segment);
  writeNotNull('fee', instance.fee);
  return val;
}
