// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_account_connection_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamAccountConnectionModel extends Equatable {
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

  factory TeamAccountConnectionModel.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountConnectionModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamAccountConnectionModelToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props =>
      ['seq', 'teamSeq', 'accountId', 'joinedAt', 'leavedAt'];
}
