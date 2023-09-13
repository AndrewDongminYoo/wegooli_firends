// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_sms_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectSmsRequest _$SelectSmsRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SelectSmsRequest',
      json,
      ($checkedConvert) {
        final val = SelectSmsRequest(
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          bm: $checkedConvert('bm', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SelectSmsRequestToJson(SelectSmsRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  writeNotNull('bm', instance.bm);
  writeNotNull('delYn', instance.delYn);
  return val;
}
