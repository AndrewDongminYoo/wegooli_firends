import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto extends Equatable {
  const UserDto({
    this.activeYn,
    this.userNm,
    this.phoneNumber,
    this.color,
    this.memberSeq,
    this.nickname,
    this.userEmail,
    this.id,
    this.birthday,
    this.add2,
    this.add1,
    this.sub,
    this.exp,
  });

  final String? activeYn;
  final String? userNm;
  final String? phoneNumber;
  final String? color;
  final int? memberSeq;
  final String? nickname;
  final String? userEmail;
  final String? id;
  final String? birthday;
  final String? add2;
  final String? add1;
  final String? sub;
  final int? exp;

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return _$UserDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      activeYn,
      userNm,
      phoneNumber,
      color,
      memberSeq,
      nickname,
      userEmail,
      id,
      birthday,
      add2,
      add1,
      sub,
      exp,
    ];
  }
}
