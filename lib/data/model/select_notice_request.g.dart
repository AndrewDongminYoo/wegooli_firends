// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_notice_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectNoticeRequest _$SelectNoticeRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SelectNoticeRequest',
      json,
      ($checkedConvert) {
        final val = SelectNoticeRequest(
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          bm: $checkedConvert('bm', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SelectNoticeRequestToJson(SelectNoticeRequest instance) {
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
