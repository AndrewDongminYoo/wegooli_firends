// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestModel _$TestModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TestModel',
      json,
      ($checkedConvert) {
        final val = TestModel(
          seq: $checkedConvert('seq', (v) => v as String?),
          postYn: $checkedConvert('postYn', (v) => v as String?),
          title: $checkedConvert('title', (v) => v as String?),
          cont: $checkedConvert('cont', (v) => v as String?),
          viewCnt: $checkedConvert('viewCnt', (v) => v as String?),
          busiRegNum: $checkedConvert('busiRegNum', (v) => v as String?),
          bmId: $checkedConvert('bmId', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          groupNo: $checkedConvert('groupNo', (v) => v as String?),
          test1: $checkedConvert('test1', (v) => v as String?),
          test2: $checkedConvert('test2', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TestModelToJson(TestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('postYn', instance.postYn);
  writeNotNull('title', instance.title);
  writeNotNull('cont', instance.cont);
  writeNotNull('viewCnt', instance.viewCnt);
  writeNotNull('busiRegNum', instance.busiRegNum);
  writeNotNull('bmId', instance.bmId);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('groupNo', instance.groupNo);
  writeNotNull('test1', instance.test1);
  writeNotNull('test2', instance.test2);
  return val;
}
