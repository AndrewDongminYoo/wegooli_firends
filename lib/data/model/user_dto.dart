// ignore_for_file: unused_element

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
  UserDto({
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

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

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

  @JsonKey(name: 'birthDay', required: false, includeIfNull: false)
  final String? birthDay;

  @JsonKey(name: 'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @JsonKey(name: 'id', required: false, includeIfNull: false)
  final String? id;

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;

  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;

  @JsonKey(name: 'deleteAt', required: false, includeIfNull: false)
  final String? deleteAt;

  @JsonKey(name: 'color', required: false, includeIfNull: false)
  final String? color;

  @JsonKey(name: 'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  @JsonKey(name: 'activeYn', required: false, includeIfNull: false)
  final String? activeYn;

  @override
  List<Object?> get props => [
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

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  bool get stringify => true;
}
