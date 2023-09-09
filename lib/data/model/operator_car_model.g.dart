// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorCarModel _$OperatorCarModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorCarModel',
      json,
      ($checkedConvert) {
        final val = OperatorCarModel(
          carModel: $checkedConvert('carModel', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          contract: $checkedConvert('contract', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          fuel: $checkedConvert('fuel', (v) => v as int?),
          distance: $checkedConvert('distance', (v) => v as int?),
          volt: $checkedConvert('volt', (v) => (v as num?)?.toDouble()),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorCarModelToJson(OperatorCarModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('carModel', instance.carModel);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('carNum', instance.carNum);
  writeNotNull('contract', instance.contract);
  writeNotNull('status', instance.status);
  writeNotNull('fuel', instance.fuel);
  writeNotNull('distance', instance.distance);
  writeNotNull('volt', instance.volt);
  return val;
}
