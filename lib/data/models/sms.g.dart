// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sms.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sms _$SmsFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Sms',
      json,
      ($checkedConvert) {
        final val = Sms(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          file: $checkedConvert('file', (v) => v as String?),
          bm: $checkedConvert('bm', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SmsToJson(Sms instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  writeNotNull('file', instance.file);
  writeNotNull('bm', instance.bm);
  writeNotNull('createdBy', instance.createdBy);
  return val;
}
