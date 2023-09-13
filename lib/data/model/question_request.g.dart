// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionRequest _$QuestionRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'QuestionRequest',
      json,
      ($checkedConvert) {
        final val = QuestionRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          category: $checkedConvert('category', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          file: $checkedConvert('file', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$QuestionRequestToJson(QuestionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('category', instance.category);
  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  writeNotNull('file', instance.file);
  return val;
}
