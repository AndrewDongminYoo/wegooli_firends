// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_qn_a_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectQnARequest _$SelectQnARequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SelectQnARequest',
      json,
      ($checkedConvert) {
        final val = SelectQnARequest(
          category: $checkedConvert('category', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          answer: $checkedConvert('answer', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SelectQnARequestToJson(SelectQnARequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category', instance.category);
  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  writeNotNull('answer', instance.answer);
  writeNotNull('status', instance.status);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('delYn', instance.delYn);
  return val;
}
