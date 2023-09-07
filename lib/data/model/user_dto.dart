// 📦 Package imports:
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
    this.delimit,
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
  final String? delimit;

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return _$UserDtoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  UserDto copyWith({
    String? activeYn,
    String? userNm,
    String? phoneNumber,
    String? color,
    int? memberSeq,
    String? nickname,
    String? userEmail,
    String? id,
    String? birthday,
    String? add2,
    String? add1,
    String? sub,
    int? exp,
    String? delimit,
  }) {
    return UserDto(
      activeYn: activeYn ?? this.activeYn,
      userNm: userNm ?? this.userNm,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      color: color ?? this.color,
      memberSeq: memberSeq ?? this.memberSeq,
      nickname: nickname ?? this.nickname,
      userEmail: userEmail ?? this.userEmail,
      id: id ?? this.id,
      birthday: birthday ?? this.birthday,
      add2: add2 ?? this.add2,
      add1: add1 ?? this.add1,
      sub: sub ?? this.sub,
      exp: exp ?? this.exp,
      delimit: delimit ?? this.delimit,
    );
  }

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
      delimit,
    ];
  }
}
