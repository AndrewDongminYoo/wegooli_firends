// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_push_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertPushRequest _$InsertPushRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'InsertPushRequest',
      json,
      ($checkedConvert) {
        final val = InsertPushRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          link: $checkedConvert('link', (v) => v as String?),
          bm: $checkedConvert('bm', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$InsertPushRequestToJson(InsertPushRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  writeNotNull('link', instance.link);
  writeNotNull('bm', instance.bm);
  writeNotNull('createdBy', instance.createdBy);
  return val;
}
