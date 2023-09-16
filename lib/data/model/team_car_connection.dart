// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_car_connection.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamCarConnection extends Equatable {
  /// Returns a new [TeamCarConnection] instance.
  TeamCarConnection({
    this.seq,
    this.teamSeq,
    this.carNum,
    this.startAt,
    this.endAt,
    this.createdAt,
    this.updatedAt,
    this.activeYn,
  });

  factory TeamCarConnection.fromJson(Map<String, dynamic> json) =>
      _$TeamCarConnectionFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: 'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: 'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  Map<String, dynamic> toJson() => _$TeamCarConnectionToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [seq, teamSeq, carNum, startAt, endAt, createdAt, updatedAt, activeYn];
}
