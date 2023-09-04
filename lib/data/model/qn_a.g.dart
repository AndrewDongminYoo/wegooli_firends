// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qn_a.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QnA _$QnAFromJson(Map<String, dynamic> json) => $checkedCreate(
      'QnA',
      json,
      ($checkedConvert) {
        final val = QnA(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          category: $checkedConvert('category', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
          file: $checkedConvert('file', (v) => v as String?),
          answer: $checkedConvert('answer', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          createdBy: $checkedConvert('createdBy', (v) => v as String?),
          answeredAt: $checkedConvert('answeredAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
        );
        return val;
      },
    );

Map<String, dynamic> _$QnAToJson(QnA instance) {
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
  writeNotNull('category', instance.category);
  writeNotNull('title', instance.title);
  writeNotNull('content', instance.content);
  writeNotNull('file', instance.file);
  writeNotNull('answer', instance.answer);
  writeNotNull('status', instance.status);
  writeNotNull('createdBy', instance.createdBy);
  writeNotNull('answeredAt', instance.answeredAt?.toIso8601String());
  return val;
}
