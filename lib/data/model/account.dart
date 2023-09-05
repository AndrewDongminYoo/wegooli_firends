// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Account {
  /// Returns a new [Account] instance.
  Account({
    this.id,
    this.memberSeq,
    this.password,
    this.delimit,
    this.delYn,
    this.deleteAt,
    this.createdAt,
    this.updatedAt,
    this.color,
    this.nickname,
    this.profilePicture,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: r'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: r'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: r'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: r'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Account &&
          other.id == id &&
          other.memberSeq == memberSeq &&
          other.password == password &&
          other.delimit == delimit &&
          other.delYn == delYn &&
          other.deleteAt == deleteAt &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.color == color &&
          other.nickname == nickname &&
          other.profilePicture == profilePicture;

  @override
  int get hashCode =>
      id.hashCode +
      memberSeq.hashCode +
      password.hashCode +
      delimit.hashCode +
      delYn.hashCode +
      deleteAt.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      color.hashCode +
      nickname.hashCode +
      profilePicture.hashCode;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  Map<String, dynamic> toJson() => _$AccountToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
