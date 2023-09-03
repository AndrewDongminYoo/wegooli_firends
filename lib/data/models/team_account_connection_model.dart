// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'team_account_connection_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamAccountConnectionModel {
  /// Returns a new [TeamAccountConnectionModel] instance.
  TeamAccountConnectionModel({
    this.seq,
    this.teamSeq,
    this.accountId,
    this.joinedAt,
    this.leavedAt,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'joinedAt', required: false, includeIfNull: false)
  final String? joinedAt;

  @JsonKey(name: r'leavedAt', required: false, includeIfNull: false)
  final String? leavedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamAccountConnectionModel &&
          other.seq == seq &&
          other.teamSeq == teamSeq &&
          other.accountId == accountId &&
          other.joinedAt == joinedAt &&
          other.leavedAt == leavedAt;

  @override
  int get hashCode =>
      seq.hashCode +
      teamSeq.hashCode +
      accountId.hashCode +
      joinedAt.hashCode +
      leavedAt.hashCode;

  factory TeamAccountConnectionModel.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountConnectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamAccountConnectionModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
