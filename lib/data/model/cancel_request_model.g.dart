// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelRequestModel _$CancelRequestModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'CancelRequestModel',
      json,
      ($checkedConvert) {
        final val = CancelRequestModel(
          cancelReason: $checkedConvert('cancelReason', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$CancelRequestModelToJson(CancelRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cancelReason', instance.cancelReason);
  return val;
}
