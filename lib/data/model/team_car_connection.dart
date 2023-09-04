// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'team_car_connection.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamCarConnection {
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

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: r'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: r'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamCarConnection &&
          other.seq == seq &&
          other.teamSeq == teamSeq &&
          other.carNum == carNum &&
          other.startAt == startAt &&
          other.endAt == endAt &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.activeYn == activeYn;

  @override
  int get hashCode =>
      seq.hashCode +
      teamSeq.hashCode +
      carNum.hashCode +
      startAt.hashCode +
      endAt.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      activeYn.hashCode;

  factory TeamCarConnection.fromJson(Map<String, dynamic> json) =>
      _$TeamCarConnectionFromJson(json);

  Map<String, dynamic> toJson() => _$TeamCarConnectionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
