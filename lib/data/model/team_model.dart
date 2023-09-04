// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'team_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamModel {
  /// Returns a new [TeamModel] instance.
  TeamModel({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.accountId,
    this.teamCode,
    this.name,
    this.contract,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'teamCode', required: false, includeIfNull: false)
  final String? teamCode;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamModel &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.accountId == accountId &&
          other.teamCode == teamCode &&
          other.name == name &&
          other.contract == contract;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      accountId.hashCode +
      teamCode.hashCode +
      name.hashCode +
      contract.hashCode;

  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
