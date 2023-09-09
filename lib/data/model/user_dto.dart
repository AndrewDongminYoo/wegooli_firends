// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserDto extends Equatable {
  /// Returns a new [UserDto] instance.
  const UserDto({
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
  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;
  @JsonKey(name: r'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;
  @JsonKey(name: r'color', required: false, includeIfNull: false)
  final String? color;
  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;
  @JsonKey(name: r'nickname', required: false, includeIfNull: false)
  final String? nickname;
  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;
  @JsonKey(name: r'id', required: false, includeIfNull: false)
  final String? id;
  @JsonKey(name: r'birthDay', required: false, includeIfNull: false)
  final String? birthDay;
  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;
  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;
  @JsonKey(name: r'delimit', required: false, includeIfNull: false)
  final String? delimit;
  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;
  @JsonKey(name: r'zipCode', required: false, includeIfNull: false)
  final String? zipCode;
  @JsonKey(name: r'sex', required: false, includeIfNull: false)
  final String? sex;
  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;
  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;
  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;
  @JsonKey(name: r'password', required: false, includeIfNull: false)
  final String? password;
  @JsonKey(name: r'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;
  @JsonKey(name: r'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;
  @JsonKey(name: r'customerKey', required: false, includeIfNull: false)
  final String? customerKey;
  @JsonKey(name: r'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      seq,
      name,
      add1,
      add2,
      zipCode,
      phoneNumber,
      email,
      birthDay,
      sex,
      delYn,
      createdAt,
      updatedAt,
      id,
      memberSeq,
      password,
      delimit,
      nickname,
      profilePicture,
      deleteAt,
      color,
      customerKey,
      activeYn,
    ];
  }
}
