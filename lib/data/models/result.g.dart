// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Result',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const ['token'],
        );
        final val = Result(
          token: $checkedConvert('token', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ResultToJson(Result instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  return val;
}
