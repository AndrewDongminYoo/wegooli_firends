// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthApiResponse _$AuthApiResponseFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'AuthApiResponse',
      json,
      ($checkedConvert) {
        final val = AuthApiResponse(
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

Map<String, dynamic> _$AuthApiResponseToJson(AuthApiResponse instance) {
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
