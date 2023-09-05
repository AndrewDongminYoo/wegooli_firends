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
        $checkKeys(
          json,
          allowedKeys: const ['result', 'resultCode', 'resultMsg'],
        );
        final val = ApiResponseObject(
          result: $checkedConvert(
              'result',
              (v) => v == null
                  ? null
                  : Result.fromJson(v as Map<String, dynamic>)),
          resultCode: $checkedConvert('resultCode', (v) => v as int?),
          resultMsg: $checkedConvert('resultMsg', (v) => v),
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

  writeNotNull('result', instance.result?.toJson());
  writeNotNull('resultCode', instance.resultCode);
  writeNotNull('resultMsg', instance.resultMsg);
  return val;
}
