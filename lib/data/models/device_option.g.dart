// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceOption _$DeviceOptionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'DeviceOption',
      json,
      ($checkedConvert) {
        final val = DeviceOption(
          seq: $checkedConvert('seq', (v) => v as int?),
          optName: $checkedConvert('optName', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$DeviceOptionToJson(DeviceOption instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('optName', instance.optName);
  return val;
}
