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

  const UserDto({
    this.activeYn,
    this.add1,
    this.add2,
    this.color,
    this.exp,
    this.id,
    this.memberSeq,
    this.nickname,
    this.phoneNumber,
    this.sub,
    this.userEmail,
    this.userNm,
  });

  final String? activeYn;
  final String? userNm;
  final String? phoneNumber;
  final String? color;
  final int? memberSeq;
  final String? nickname;
  final String? userEmail;
  final String? id;
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
      add2,
      add1,
      sub,
      exp,
    ];
  }
}
