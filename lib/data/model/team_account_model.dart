// ignore_for_file: unused_element

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

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: r'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: r'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: r'useYn', required: false, includeIfNull: false)
  final String? useYn;

  @JsonKey(name: r'joinedAt', required: false, includeIfNull: false)
  final String? joinedAt;

  @JsonKey(name: r'leavedAt', required: false, includeIfNull: false)
  final String? leavedAt;

  factory TeamAccountModel.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamAccountModelToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        'accountId',
        'color',
        'nickName',
        'profilePicture',
        'useYn',
        'joinedAt',
        'leavedAt'
      ];
}
