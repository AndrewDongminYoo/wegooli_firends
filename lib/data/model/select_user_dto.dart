// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'select_user_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectUserDTO {
  /// Returns a new [SelectUserDTO] instance.
  SelectUserDTO({
    this.id,
    this.memberSeq,
    this.name,
    this.add1,
    this.add2,
    this.zipCode,
    this.phoneNumber,
    this.email,
    this.birthday,
    this.sex,
    this.delimit,
    this.nickname,
    this.profilePicture,
    this.color,
    this.deleteAt,
    this.delYnMember,
    this.delYnAccount,
    this.createdAtMember,
    this.createdAtAccount,
  });

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: r'zipCode', required: false, includeIfNull: false)
  final String? zipCode;

  @JsonKey(name: r'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: r'birthday', required: false, includeIfNull: false)
  final String? birthday;

  @JsonKey(name: r'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: r'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: r'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: r'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: r'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: r'delYn_member', required: false, includeIfNull: false)
  final String? delYnMember;

  @JsonKey(name: r'delYn_account', required: false, includeIfNull: false)
  final String? delYnAccount;

  @JsonKey(name: r'createdAt_member', required: false, includeIfNull: false)
  final String? createdAtMember;

  @JsonKey(name: r'createdAt_account', required: false, includeIfNull: false)
  final String? createdAtAccount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SelectUserDTO &&
          other.id == id &&
          other.memberSeq == memberSeq &&
          other.name == name &&
          other.add1 == add1 &&
          other.add2 == add2 &&
          other.zipCode == zipCode &&
          other.phoneNumber == phoneNumber &&
          other.email == email &&
          other.birthday == birthday &&
          other.sex == sex &&
          other.delimit == delimit &&
          other.nickname == nickname &&
          other.profilePicture == profilePicture &&
          other.color == color &&
          other.deleteAt == deleteAt &&
          other.delYnMember == delYnMember &&
          other.delYnAccount == delYnAccount &&
          other.createdAtMember == createdAtMember &&
          other.createdAtAccount == createdAtAccount;

  @override
  int get hashCode =>
      id.hashCode +
      memberSeq.hashCode +
      name.hashCode +
      add1.hashCode +
      add2.hashCode +
      zipCode.hashCode +
      phoneNumber.hashCode +
      email.hashCode +
      birthday.hashCode +
      sex.hashCode +
      delimit.hashCode +
      nickname.hashCode +
      profilePicture.hashCode +
      color.hashCode +
      deleteAt.hashCode +
      delYnMember.hashCode +
      delYnAccount.hashCode +
      createdAtMember.hashCode +
      createdAtAccount.hashCode;

  factory SelectUserDTO.fromJson(Map<String, dynamic> json) =>
      _$SelectUserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$SelectUserDTOToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
