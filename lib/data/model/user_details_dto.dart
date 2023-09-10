// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import '/data/model/granted_authority.dart';
import '/data/model/user_dto.dart';

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

  factory UserDetailsDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsDTOFromJson(json);

  @JsonKey(name: 'userDto', required: false, includeIfNull: false)
  final UserDto? userDto;

  @JsonKey(name: 'authorities', required: false, includeIfNull: false)
  final List<GrantedAuthority>? authorities;

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: 'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: 'enabled', required: false, includeIfNull: false)
  final bool? enabled;

  @JsonKey(name: 'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: 'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'username', required: false, includeIfNull: false)
  final String? username;

  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: 'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'zipCode', required: false, includeIfNull: false)
  final String? zipCode;

  @JsonKey(name: 'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: 'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: 'birthDay', required: false, includeIfNull: false)
  final String? birthDay;

  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: 'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  @JsonKey(name: 'accountNonExpired', required: false, includeIfNull: false)
  final bool? accountNonExpired;

  @JsonKey(name: 'accountNonLocked', required: false, includeIfNull: false)
  final bool? accountNonLocked;

  @JsonKey(name: 'credentialsNonExpired', required: false, includeIfNull: false)
  final bool? credentialsNonExpired;

  Map<String, dynamic> toJson() => _$UserDetailsDTOToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        userDto,
        authorities,
        name,
        id,
        enabled,
        color,
        password,
        delYn,
        memberSeq,
        seq,
        username,
        delimit,
        updatedAt,
        customerKey,
        phoneNumber,
        add2,
        zipCode,
        email,
        sex,
        birthDay,
        nickname,
        profilePicture,
        add1,
        createdAt,
        deleteAt,
        activeYn,
        accountNonExpired,
        accountNonLocked,
        credentialsNonExpired,
      ];
}
