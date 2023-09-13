// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Account extends Equatable {
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

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  @JsonKey(name: 'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: 'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @override
  List<Object?> get props => [
        id,
        memberSeq,
        password,
        delimit,
        delYn,
        deleteAt,
        createdAt,
        updatedAt,
        color,
        nickname,
        profilePicture,
      ];

  Map<String, dynamic> toJson() => _$AccountToJson(this);

  @override
  bool get stringify => true;
}
