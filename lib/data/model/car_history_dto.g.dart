// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_history_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarHistoryDto _$CarHistoryDtoFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CarHistoryDto',
      json,
      ($checkedConvert) {
        final val = CarHistoryDto(
          seq: $checkedConvert('seq', (v) => v as int?),
          terminalSeq: $checkedConvert('terminalSeq', (v) => v as int?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          lat: $checkedConvert('lat', (v) => v as String?),
          lon: $checkedConvert('lon', (v) => v as String?),
          volt: $checkedConvert('volt', (v) => v as int?),
          fuel: $checkedConvert('fuel', (v) => v as int?),
          flDoorClose: $checkedConvert('flDoorClose', (v) => v as String?),
          frDoorClose: $checkedConvert('frDoorClose', (v) => v as String?),
          blDoorClose: $checkedConvert('blDoorClose', (v) => v as String?),
          brDoorClose: $checkedConvert('brDoorClose', (v) => v as String?),
          distance: $checkedConvert('distance', (v) => v as int?),
          speed: $checkedConvert('speed', (v) => v as int?),
          flDoorLock: $checkedConvert('flDoorLock', (v) => v as String?),
          frDoorLock: $checkedConvert('frDoorLock', (v) => v as String?),
          blDoorLock: $checkedConvert('blDoorLock', (v) => v as String?),
          brDoorLock: $checkedConvert('brDoorLock', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CarHistoryDtoToJson(CarHistoryDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('terminalSeq', instance.terminalSeq);
  writeNotNull('carNum', instance.carNum);
  writeNotNull('status', instance.status);
  writeNotNull('lat', instance.lat);
  writeNotNull('lon', instance.lon);
  writeNotNull('volt', instance.volt);
  writeNotNull('fuel', instance.fuel);
  writeNotNull('flDoorClose', instance.flDoorClose);
  writeNotNull('frDoorClose', instance.frDoorClose);
  writeNotNull('blDoorClose', instance.blDoorClose);
  writeNotNull('brDoorClose', instance.brDoorClose);
  writeNotNull('distance', instance.distance);
  writeNotNull('speed', instance.speed);
  writeNotNull('flDoorLock', instance.flDoorLock);
  writeNotNull('frDoorLock', instance.frDoorLock);
  writeNotNull('blDoorLock', instance.blDoorLock);
  writeNotNull('brDoorLock', instance.brDoorLock);
  writeNotNull('createdAt', instance.createdAt);
  return val;
}
