// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'team_account_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamAccountModel {
  /// Returns a new [TeamAccountModel] instance.
  TeamAccountModel({
    this.accountId,
    this.color,
    this.nickName,
    this.profilePicture,
    this.useYn,
    this.joinedAt,
    this.leavedAt,
  });

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: r'nickName', required: false, includeIfNull: false)
  final String? nickName;

  @JsonKey(name: r'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: r'useYn', required: false, includeIfNull: false)
  final String? useYn;

  @JsonKey(name: r'joinedAt', required: false, includeIfNull: false)
  final String? joinedAt;

  @JsonKey(name: r'leavedAt', required: false, includeIfNull: false)
  final String? leavedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamAccountModel &&
          other.accountId == accountId &&
          other.color == color &&
          other.nickName == nickName &&
          other.profilePicture == profilePicture &&
          other.useYn == useYn &&
          other.joinedAt == joinedAt &&
          other.leavedAt == leavedAt;

  @override
  int get hashCode =>
      accountId.hashCode +
      color.hashCode +
      nickName.hashCode +
      profilePicture.hashCode +
      useYn.hashCode +
      joinedAt.hashCode +
      leavedAt.hashCode;

  factory TeamAccountModel.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamAccountModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
