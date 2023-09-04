// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceDetail _$ServiceDetailFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ServiceDetail',
      json,
      ($checkedConvert) {
        final val = ServiceDetail(
          shareServiceSeq:
              $checkedConvert('shareServiceSeq', (v) => v as String?),
          carName: $checkedConvert('carName', (v) => v as String?),
          carMadeCom: $checkedConvert('carMadeCom', (v) => v as String?),
          type: $checkedConvert('type', (v) => v as String?),
          fulName: $checkedConvert('fulName', (v) => v as String?),
          gearType: $checkedConvert('gearType', (v) => v as String?),
          maxRide: $checkedConvert('maxRide', (v) => v as String?),
          distanceDriven:
              $checkedConvert('distanceDriven', (v) => v as String?),
          carOpt: $checkedConvert('carOpt', (v) => v as String?),
          carOptList: $checkedConvert(
              'carOptList',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => DeviceOption.fromJson(e as Map<String, dynamic>))
                  .toList()),
          userSubInfoList: $checkedConvert(
              'userSubInfoList',
              (v) => (v as List<dynamic>?)
                  ?.map((e) => UserSubInfo.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$ServiceDetailToJson(ServiceDetail instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shareServiceSeq', instance.shareServiceSeq);
  writeNotNull('carName', instance.carName);
  writeNotNull('carMadeCom', instance.carMadeCom);
  writeNotNull('type', instance.type);
  writeNotNull('fulName', instance.fulName);
  writeNotNull('gearType', instance.gearType);
  writeNotNull('maxRide', instance.maxRide);
  writeNotNull('distanceDriven', instance.distanceDriven);
  writeNotNull('carOpt', instance.carOpt);
  writeNotNull(
      'carOptList', instance.carOptList?.map((e) => e.toJson()).toList());
  writeNotNull('userSubInfoList',
      instance.userSubInfoList?.map((e) => e.toJson()).toList());
  return val;
}
