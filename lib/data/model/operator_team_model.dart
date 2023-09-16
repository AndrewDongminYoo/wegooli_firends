// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operator_team_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorTeamModel extends Equatable {
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
    this.seq,
  });

  factory OperatorTeamModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamModelFromJson(json);

  @JsonKey(name: 'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'memberCount', required: false, includeIfNull: false)
  final int? memberCount;

  @JsonKey(name: 'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: 'fee', required: false, includeIfNull: false)
  final String? fee;

  @JsonKey(name: 'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: 'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  Map<String, dynamic> toJson() => _$OperatorTeamModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        teamName,
        add1,
        add2,
        memberCount,
        model,
        carNum,
        contract,
        fee,
        startAt,
        endAt,
        seq,
      ];
}
