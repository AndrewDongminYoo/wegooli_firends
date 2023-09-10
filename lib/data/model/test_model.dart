// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'test_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TestModel extends Equatable {
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

  factory TestModel.fromJson(Map<String, dynamic> json) =>
      _$TestModelFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final String? seq;

  @JsonKey(name: 'postYn', required: false, includeIfNull: false)
  final String? postYn;

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'cont', required: false, includeIfNull: false)
  final String? cont;

  @JsonKey(name: 'viewCnt', required: false, includeIfNull: false)
  final String? viewCnt;

  @JsonKey(name: 'busiRegNum', required: false, includeIfNull: false)
  final String? busiRegNum;

  @JsonKey(name: 'bmId', required: false, includeIfNull: false)
  final String? bmId;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'groupNo', required: false, includeIfNull: false)
  final String? groupNo;

  @JsonKey(name: 'test1', required: false, includeIfNull: false)
  final String? test1;

  @JsonKey(name: 'test2', required: false, includeIfNull: false)
  final String? test2;

  Map<String, dynamic> toJson() => _$TestModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        postYn,
        title,
        cont,
        viewCnt,
        busiRegNum,
        bmId,
        delYn,
        groupNo,
        test1,
        test2,
      ];
}
