// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_account_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamAccountModel extends Equatable {
  /// Returns a new [TeamAccountModel] instance.
  TeamAccountModel({
    this.accountId,
    this.color,
    this.nickname,
    this.profilePicture,
    this.useYn,
    this.joinedAt,
    this.leavedAt,
  });

  factory TeamAccountModel.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountModelFromJson(json);

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: 'useYn', required: false, includeIfNull: false)
  final String? useYn;

  @JsonKey(name: 'joinedAt', required: false, includeIfNull: false)
  final String? joinedAt;

  @JsonKey(name: 'leavedAt', required: false, includeIfNull: false)
  final String? leavedAt;

  Map<String, dynamic> toJson() => _$TeamAccountModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [accountId, color, nickname, profilePicture, useYn, joinedAt, leavedAt];
}
