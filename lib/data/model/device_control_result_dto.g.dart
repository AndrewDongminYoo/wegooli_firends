// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_control_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceControlResultDto _$DeviceControlResultDtoFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'DeviceControlResultDto',
      json,
      ($checkedConvert) {
        final val = DeviceControlResultDto(
          userId: $checkedConvert('userId', (v) => v as String?),
          terTelNum: $checkedConvert('terTelNum', (v) => v as String?),
          t42: $checkedConvert('t42', (v) => v as String?),
          t1: $checkedConvert('t1', (v) => v as String?),
          t5: $checkedConvert('t5', (v) => v as String?),
          t0: $checkedConvert('t0', (v) => v as String?),
          t2: $checkedConvert('t2', (v) => v as String?),
          t3: $checkedConvert('t3', (v) => v as String?),
          t4: $checkedConvert('t4', (v) => v as String?),
          t6: $checkedConvert('t6', (v) => v as String?),
          t7: $checkedConvert('t7', (v) => v as String?),
          t8: $checkedConvert('t8', (v) => v as String?),
          t9: $checkedConvert('t9', (v) => v as String?),
          t10: $checkedConvert('t10', (v) => v as String?),
          t11: $checkedConvert('t11', (v) => v as String?),
          t12: $checkedConvert('t12', (v) => v as String?),
          t14: $checkedConvert('t14', (v) => v as String?),
          t15: $checkedConvert('t15', (v) => v as String?),
          t16: $checkedConvert('t16', (v) => v as String?),
          t17: $checkedConvert('t17', (v) => v as String?),
          t18: $checkedConvert('t18', (v) => v as String?),
          t19: $checkedConvert('t19', (v) => v as String?),
          t20: $checkedConvert('t20', (v) => v as String?),
          t21: $checkedConvert('t21', (v) => v as String?),
          t22: $checkedConvert('t22', (v) => v as String?),
          t41: $checkedConvert('t41', (v) => v as String?),
          t51: $checkedConvert('t51', (v) => v as String?),
          t61: $checkedConvert('t61', (v) => v as String?),
          ucp: $checkedConvert('ucp', (v) => v as String?),
          nsdur: $checkedConvert('nsdur', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$DeviceControlResultDtoToJson(
    DeviceControlResultDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('terTelNum', instance.terTelNum);
  writeNotNull('t42', instance.t42);
  writeNotNull('t1', instance.t1);
  writeNotNull('t5', instance.t5);
  writeNotNull('t0', instance.t0);
  writeNotNull('t2', instance.t2);
  writeNotNull('t3', instance.t3);
  writeNotNull('t4', instance.t4);
  writeNotNull('t6', instance.t6);
  writeNotNull('t7', instance.t7);
  writeNotNull('t8', instance.t8);
  writeNotNull('t9', instance.t9);
  writeNotNull('t10', instance.t10);
  writeNotNull('t11', instance.t11);
  writeNotNull('t12', instance.t12);
  writeNotNull('t14', instance.t14);
  writeNotNull('t15', instance.t15);
  writeNotNull('t16', instance.t16);
  writeNotNull('t17', instance.t17);
  writeNotNull('t18', instance.t18);
  writeNotNull('t19', instance.t19);
  writeNotNull('t20', instance.t20);
  writeNotNull('t21', instance.t21);
  writeNotNull('t22', instance.t22);
  writeNotNull('t41', instance.t41);
  writeNotNull('t51', instance.t51);
  writeNotNull('t61', instance.t61);
  writeNotNull('ucp', instance.ucp);
  writeNotNull('nsdur', instance.nsdur);
  return val;
}
