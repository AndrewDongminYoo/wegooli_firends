// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_push_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePushRequest _$UpdatePushRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdatePushRequest',
      json,
      ($checkedConvert) {
        final val = UpdatePushRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          link: $checkedConvert('link', (v) => v as String?),
          bm: $checkedConvert('bm', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdatePushRequestToJson(UpdatePushRequest instance) {
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
  writeNotNull('delYn', instance.delYn);
  return val;
}
