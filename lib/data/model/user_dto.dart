// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDTO {
  /// Returns a new [UserDTO] instance.
  UserDTO({
    this.seq,
    this.name,
    this.add1,
    this.add2,
    this.zipCode,
    this.phoneNumber,
    this.email,
    this.birthDay,
    this.sex,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.id,
    this.memberSeq,
    this.password,
    this.delimit,
    this.nickname,
    this.profilePicture,
    this.deleteAt,
    this.color,
    this.customerKey,
    this.activeYn,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

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

  @JsonKey(name: r'birthDay', required: false, includeIfNull: false)
  final String? birthDay;

  @JsonKey(name: r'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: r'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: r'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: r'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: r'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: r'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: r'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  @JsonKey(name: r'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDTO &&
          other.seq == seq &&
          other.name == name &&
          other.add1 == add1 &&
          other.add2 == add2 &&
          other.zipCode == zipCode &&
          other.phoneNumber == phoneNumber &&
          other.email == email &&
          other.birthDay == birthDay &&
          other.sex == sex &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.id == id &&
          other.memberSeq == memberSeq &&
          other.password == password &&
          other.delimit == delimit &&
          other.nickname == nickname &&
          other.profilePicture == profilePicture &&
          other.deleteAt == deleteAt &&
          other.color == color &&
          other.customerKey == customerKey &&
          other.activeYn == activeYn;

  @override
  int get hashCode =>
      seq.hashCode +
      name.hashCode +
      add1.hashCode +
      add2.hashCode +
      zipCode.hashCode +
      phoneNumber.hashCode +
      email.hashCode +
      birthDay.hashCode +
      sex.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      id.hashCode +
      memberSeq.hashCode +
      password.hashCode +
      delimit.hashCode +
      nickname.hashCode +
      profilePicture.hashCode +
      deleteAt.hashCode +
      color.hashCode +
      customerKey.hashCode +
      activeYn.hashCode;

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDTOToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
