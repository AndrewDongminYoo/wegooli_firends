// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_notice_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertNoticeRequest _$InsertNoticeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'InsertNoticeRequest',
      json,
      ($checkedConvert) {
        final val = InsertNoticeRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          file: $checkedConvert('file', (v) => v as String?),
          bm: $checkedConvert('bm', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$InsertNoticeRequestToJson(InsertNoticeRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  writeNotNull('file', instance.file);
  writeNotNull('bm', instance.bm);
  writeNotNull('createdBy', instance.createdBy);
  return val;
}
