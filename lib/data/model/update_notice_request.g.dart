// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_notice_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateNoticeRequest _$UpdateNoticeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateNoticeRequest',
      json,
      ($checkedConvert) {
        final val = UpdateNoticeRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          file: $checkedConvert('file', (v) => v as String?),
          bm: $checkedConvert('bm', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateNoticeRequestToJson(UpdateNoticeRequest instance) {
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
  writeNotNull('delYn', instance.delYn);
  return val;
}
