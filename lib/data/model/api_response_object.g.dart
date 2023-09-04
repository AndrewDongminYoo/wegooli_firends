// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiResponseObject _$ApiResponseObjectFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ApiResponseObject',
      json,
      ($checkedConvert) {
        final val = ApiResponseObject(
          result: $checkedConvert('result', (v) => v),
          resultCode: $checkedConvert('resultCode', (v) => v as int?),
          resultMsg: $checkedConvert('resultMsg', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ApiResponseObjectToJson(ApiResponseObject instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('result', instance.result);
  writeNotNull('resultCode', instance.resultCode);
  writeNotNull('resultMsg', instance.resultMsg);
  return val;
}
