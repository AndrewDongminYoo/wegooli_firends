// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'operator_team_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorTeamModel {
  /// Returns a new [OperatorTeamModel] instance.
  OperatorTeamModel({
    this.teamName,
    this.add1,
    this.add2,
    this.memberCount,
    this.model,
    this.carNum,
    this.contract,
    this.fee,
    this.startAt,
    this.endAt,
  });

  @JsonKey(name: r'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: r'memberCount', required: false, includeIfNull: false)
  final int? memberCount;

  @JsonKey(name: r'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: r'fee', required: false, includeIfNull: false)
  final String? fee;

  @JsonKey(name: r'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: r'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorTeamModel &&
          other.teamName == teamName &&
          other.add1 == add1 &&
          other.add2 == add2 &&
          other.memberCount == memberCount &&
          other.model == model &&
          other.carNum == carNum &&
          other.contract == contract &&
          other.fee == fee &&
          other.startAt == startAt &&
          other.endAt == endAt;

  @override
  int get hashCode =>
      teamName.hashCode +
      add1.hashCode +
      add2.hashCode +
      memberCount.hashCode +
      model.hashCode +
      carNum.hashCode +
      contract.hashCode +
      fee.hashCode +
      startAt.hashCode +
      endAt.hashCode;

  factory OperatorTeamModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamModelFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorTeamModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
