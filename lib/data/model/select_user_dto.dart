// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'select_user_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectUserDto extends Equatable {
  /// Returns a new [SelectUserDto] instance.
  SelectUserDto({
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

  factory SelectUserDto.fromJson(Map<String, dynamic> json) =>
      _$SelectUserDtoFromJson(json);

  @JsonKey(name: 'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'zipCode', required: false, includeIfNull: false)
  final String? zipCode;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: 'birthday', required: false, includeIfNull: false)
  final String? birthday;

  @JsonKey(name: 'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: 'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: 'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: 'delYn_member', required: false, includeIfNull: false)
  final String? delYnMember;

  @JsonKey(name: 'delYn_account', required: false, includeIfNull: false)
  final String? delYnAccount;

  @JsonKey(name: 'createdAt_member', required: false, includeIfNull: false)
  final String? createdAtMember;

  @JsonKey(name: 'createdAt_account', required: false, includeIfNull: false)
  final String? createdAtAccount;

  Map<String, dynamic> toJson() => _$SelectUserDtoToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        id,
        memberSeq,
        name,
        add1,
        add2,
        zipCode,
        phoneNumber,
        email,
        birthday,
        sex,
        delimit,
        nickname,
        profilePicture,
        color,
        deleteAt,
        delYnMember,
        delYnAccount,
        createdAtMember,
        createdAtAccount,
      ];
}
