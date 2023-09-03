// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'test_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TestModel {
  /// Returns a new [TestModel] instance.
  TestModel({
    this.seq,
    this.postYn,
    this.title,
    this.cont,
    this.viewCnt,
    this.busiRegNum,
    this.bmId,
    this.delYn,
    this.groupNo,
    this.test1,
    this.test2,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final String? seq;

  @JsonKey(name: r'postYn', required: false, includeIfNull: false)
  final String? postYn;

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'cont', required: false, includeIfNull: false)
  final String? cont;

  @JsonKey(name: r'viewCnt', required: false, includeIfNull: false)
  final String? viewCnt;

  @JsonKey(name: r'busiRegNum', required: false, includeIfNull: false)
  final String? busiRegNum;

  @JsonKey(name: r'bmId', required: false, includeIfNull: false)
  final String? bmId;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'groupNo', required: false, includeIfNull: false)
  final String? groupNo;

  @JsonKey(name: r'test1', required: false, includeIfNull: false)
  final String? test1;

  @JsonKey(name: r'test2', required: false, includeIfNull: false)
  final String? test2;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestModel &&
          other.seq == seq &&
          other.postYn == postYn &&
          other.title == title &&
          other.cont == cont &&
          other.viewCnt == viewCnt &&
          other.busiRegNum == busiRegNum &&
          other.bmId == bmId &&
          other.delYn == delYn &&
          other.groupNo == groupNo &&
          other.test1 == test1 &&
          other.test2 == test2;

  @override
  int get hashCode =>
      seq.hashCode +
      postYn.hashCode +
      title.hashCode +
      cont.hashCode +
      viewCnt.hashCode +
      busiRegNum.hashCode +
      bmId.hashCode +
      delYn.hashCode +
      groupNo.hashCode +
      test1.hashCode +
      test2.hashCode;

  factory TestModel.fromJson(Map<String, dynamic> json) =>
      _$TestModelFromJson(json);

  Map<String, dynamic> toJson() => _$TestModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
