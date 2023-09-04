// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_car_detail_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceCarDetailRequest _$ServiceCarDetailRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'ServiceCarDetailRequest',
      json,
      ($checkedConvert) {
        final val = ServiceCarDetailRequest(
          serviceSeq: $checkedConvert('serviceSeq', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ServiceCarDetailRequestToJson(
    ServiceCarDetailRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('serviceSeq', instance.serviceSeq);
  return val;
}
