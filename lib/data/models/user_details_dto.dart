// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import '/data/models/granted_authority.dart';
import '/data/models/user_dto.dart';

part 'user_details_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDetailsDTO {
  /// Returns a new [UserDetailsDTO] instance.
  UserDetailsDTO({
    this.userDto,
    this.authorities,
    this.name,
    this.id,
    this.enabled,
    this.color,
    this.password,
    this.delYn,
    this.memberSeq,
    this.seq,
    this.username,
    this.delimit,
    this.updatedAt,
    this.customerKey,
    this.phoneNumber,
    this.add2,
    this.zipCode,
    this.email,
    this.sex,
    this.birthDay,
    this.nickname,
    this.profilePicture,
    this.add1,
    this.createdAt,
    this.deleteAt,
    this.activeYn,
    this.accountNonExpired,
    this.accountNonLocked,
    this.credentialsNonExpired,
  });

  @JsonKey(name: r'userDto', required: false, includeIfNull: false)
  final UserDTO? userDto;

  @JsonKey(name: r'authorities', required: false, includeIfNull: false)
  final List<GrantedAuthority>? authorities;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: r'enabled', required: false, includeIfNull: false)
  final bool? enabled;

  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: r'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'username', required: false, includeIfNull: false)
  final String? username;

  @JsonKey(name: r'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: r'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  @JsonKey(name: r'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: r'zipCode', required: false, includeIfNull: false)
  final String? zipCode;

  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: r'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: r'birthDay', required: false, includeIfNull: false)
  final String? birthDay;

  @JsonKey(name: r'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: r'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: r'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  @JsonKey(name: r'accountNonExpired', required: false, includeIfNull: false)
  final bool? accountNonExpired;

  @JsonKey(name: r'accountNonLocked', required: false, includeIfNull: false)
  final bool? accountNonLocked;

  @JsonKey(
      name: r'credentialsNonExpired', required: false, includeIfNull: false)
  final bool? credentialsNonExpired;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserDetailsDTO &&
          other.userDto == userDto &&
          other.authorities == authorities &&
          other.name == name &&
          other.id == id &&
          other.enabled == enabled &&
          other.color == color &&
          other.password == password &&
          other.delYn == delYn &&
          other.memberSeq == memberSeq &&
          other.seq == seq &&
          other.username == username &&
          other.delimit == delimit &&
          other.updatedAt == updatedAt &&
          other.customerKey == customerKey &&
          other.phoneNumber == phoneNumber &&
          other.add2 == add2 &&
          other.zipCode == zipCode &&
          other.email == email &&
          other.sex == sex &&
          other.birthDay == birthDay &&
          other.nickname == nickname &&
          other.profilePicture == profilePicture &&
          other.add1 == add1 &&
          other.createdAt == createdAt &&
          other.deleteAt == deleteAt &&
          other.activeYn == activeYn &&
          other.accountNonExpired == accountNonExpired &&
          other.accountNonLocked == accountNonLocked &&
          other.credentialsNonExpired == credentialsNonExpired;

  @override
  int get hashCode =>
      userDto.hashCode +
      authorities.hashCode +
      name.hashCode +
      id.hashCode +
      enabled.hashCode +
      color.hashCode +
      password.hashCode +
      delYn.hashCode +
      memberSeq.hashCode +
      seq.hashCode +
      username.hashCode +
      delimit.hashCode +
      updatedAt.hashCode +
      customerKey.hashCode +
      phoneNumber.hashCode +
      add2.hashCode +
      zipCode.hashCode +
      email.hashCode +
      sex.hashCode +
      birthDay.hashCode +
      nickname.hashCode +
      profilePicture.hashCode +
      add1.hashCode +
      createdAt.hashCode +
      deleteAt.hashCode +
      activeYn.hashCode +
      accountNonExpired.hashCode +
      accountNonLocked.hashCode +
      credentialsNonExpired.hashCode;

  factory UserDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsDTOToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
