// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_service_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShareServiceRequest _$ShareServiceRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ShareServiceRequest',
      json,
      ($checkedConvert) {
        final val = ShareServiceRequest(
          startMonthlyAmount:
              $checkedConvert('startMonthlyAmount', (v) => v as String?),
          endMonthlyAmount:
              $checkedConvert('endMonthlyAmount', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ShareServiceRequestToJson(ShareServiceRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startMonthlyAmount', instance.startMonthlyAmount);
  writeNotNull('endMonthlyAmount', instance.endMonthlyAmount);
  return val;
}
