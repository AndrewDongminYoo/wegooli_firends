// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_car_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorCarRequest _$OperatorCarRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorCarRequest',
      json,
      ($checkedConvert) {
        final val = OperatorCarRequest(
          contract: $checkedConvert('contract', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorCarRequestToJson(OperatorCarRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('contract', instance.contract);
  writeNotNull('address', instance.address);
  writeNotNull('carNum', instance.carNum);
  return val;
}
