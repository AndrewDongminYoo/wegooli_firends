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
class UserDetailsDto extends Equatable {
  /// Returns a new [UserDetailsDto] instance.
  UserDetailsDto({
    this.userDto,
    this.authorities,
    this.name,
    this.id,
    this.enabled,
    this.color,
    this.password,
    this.memberSeq,
    this.delYn,
    this.customerKey,
    this.seq,
    this.delimit,
    this.updatedAt,
    this.activeYn,
    this.createdAt,
    this.phoneNumber,
    this.username,
    this.birthDay,
    this.nickname,
    this.profilePicture,
    this.add1,
    this.add2,
    this.zipCode,
    this.email,
    this.sex,
    this.accountNonExpired,
    this.accountNonLocked,
    this.credentialsNonExpired,
    this.deleteAt,
  });

  factory UserDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$UserDetailsDtoFromJson(json);

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

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: 'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'username', required: false, includeIfNull: false)
  final String? username;

  @JsonKey(name: 'birthDay', required: false, includeIfNull: false)
  final String? birthDay;

  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'zipCode', required: false, includeIfNull: false)
  final String? zipCode;

  @JsonKey(name: 'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: 'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: 'accountNonExpired', required: false, includeIfNull: false)
  final bool? accountNonExpired;

  @JsonKey(name: 'accountNonLocked', required: false, includeIfNull: false)
  final bool? accountNonLocked;

  @JsonKey(name: 'credentialsNonExpired', required: false, includeIfNull: false)
  final bool? credentialsNonExpired;

  @JsonKey(name: 'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @override
  List<Object?> get props => [
        userDto,
        authorities,
        name,
        id,
        enabled,
        color,
        password,
        memberSeq,
        delYn,
        customerKey,
        seq,
        delimit,
        updatedAt,
        activeYn,
        createdAt,
        phoneNumber,
        username,
        birthDay,
        nickname,
        profilePicture,
        add1,
        add2,
        zipCode,
        email,
        sex,
        accountNonExpired,
        accountNonLocked,
        credentialsNonExpired,
        deleteAt,
      ];

  Map<String, dynamic> toJson() => _$UserDetailsDtoToJson(this);

  @override
  bool get stringify => true;
}
