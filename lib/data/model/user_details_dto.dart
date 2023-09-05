// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import '/data/manual/user_dto.dart';
import '/data/model/granted_authority.dart';

part 'user_details_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDetailsDTO extends Equatable {
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
    this.nickName,
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
  final UserDto? userDto;

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

  @JsonKey(name: r'nickName', required: false, includeIfNull: false)
  final String? nickName;

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

  factory UserDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsDTOFromJson(json);

  Map<String, dynamic> toJson() => _$UserDetailsDTOToJson(this);

  @override
  bool get stringify => true;
}
