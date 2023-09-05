// ignore_for_file: unused_element

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

  factory SelectUserDto.fromJson(Map<String, dynamic> json) =>
      _$SelectUserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$SelectUserDtoToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        'id',
        'memberSeq',
        'name',
        'add1',
        'add2',
        'zipCode',
        'phoneNumber',
        'email',
        'birthday',
        'sex',
        'delimit',
        'nickName',
        'profilePicture',
        'color',
        'deleteAt',
        'delYn_member',
        'delYn_account',
        'createdAt_member',
        'createdAt_account'
      ];
}
