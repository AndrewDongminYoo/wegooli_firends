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
          allowedKeys: const [
            'result',
            'resultCode',
            'resultMsg',
            'failMsg',
            'userInfo'
          ],
        );
        final val = ApiResponseObject(
          result: $checkedConvert(
              'result',
              (v) => v == null
                  ? null
                  : Result.fromJson(v as Map<String, dynamic>)),
          resultCode: $checkedConvert('resultCode', (v) => v as int?),
          resultMsg: $checkedConvert('resultMsg', (v) => v),
          failMsg: $checkedConvert('failMsg', (v) => v as String?),
          userInfo: $checkedConvert('userInfo', (v) => v),
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
  writeNotNull('failMsg', instance.failMsg);
  writeNotNull('userInfo', instance.userInfo);
  return val;
}
