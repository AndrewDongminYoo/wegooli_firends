// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_service_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShareServiceModel _$ShareServiceModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ShareServiceModel',
      json,
      ($checkedConvert) {
        final val = ShareServiceModel(
          shareServiceSeq: $checkedConvert('shareServiceSeq', (v) => v as int?),
          serviceName: $checkedConvert('serviceName', (v) => v as String?),
          serviceDes: $checkedConvert('serviceDes', (v) => v as String?),
          carSeq: $checkedConvert('carSeq', (v) => v as String?),
          carName: $checkedConvert('carName', (v) => v as String?),
          carImg: $checkedConvert('carImg', (v) => v as String?),
          monthlyPay: $checkedConvert('monthlyPay', (v) => v as String?),
          personalPay: $checkedConvert('personalPay', (v) => v as String?),
          nowSub: $checkedConvert('nowSub', (v) => v as String?),
          maxSub: $checkedConvert('maxSub', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ShareServiceModelToJson(ShareServiceModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('shareServiceSeq', instance.shareServiceSeq);
  writeNotNull('serviceName', instance.serviceName);
  writeNotNull('serviceDes', instance.serviceDes);
  writeNotNull('carSeq', instance.carSeq);
  writeNotNull('carName', instance.carName);
  writeNotNull('carImg', instance.carImg);
  writeNotNull('monthlyPay', instance.monthlyPay);
  writeNotNull('personalPay', instance.personalPay);
  writeNotNull('nowSub', instance.nowSub);
  writeNotNull('maxSub', instance.maxSub);
  return val;
}
