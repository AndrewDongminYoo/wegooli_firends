// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable(
  checked: true,
  anyMap: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: false,
)
class User extends Equatable {
  const User({
    this.profilePicture,
    this.name,
    this.phoneNumber,
    this.color,
    this.memberSeq,
    this.nickname,
    this.email,
    required this.id,
    this.birthDay,
    this.add2,
    this.add1,
    this.delimit,
    this.exp,
    this.sub,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @JsonKey(name: 'profilePicture', required: false, includeIfNull: false)
  final String? profilePicture;
  @JsonKey(name: 'userNm', required: false, includeIfNull: false)
  final String? name;
  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;
  @JsonKey(name: 'color', required: false, includeIfNull: false)
  final String? color;
  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;
  @JsonKey(name: 'nickname', required: false, includeIfNull: false)
  final String? nickname;
  @JsonKey(name: 'userEmail', required: false, includeIfNull: false)
  final String? email;
  @JsonKey(name: 'id', required: true, includeIfNull: false)
  final String id;
  @JsonKey(name: 'birthday', required: false, includeIfNull: false)
  final String? birthDay;
  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;
  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;
  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;
  @JsonKey(name: 'exp', required: false, includeIfNull: false)
  final int? exp;
  @JsonKey(name: 'sub', required: false, includeIfNull: false)
  final String? sub;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? profilePicture,
    String? userNm,
    String? phoneNumber,
    String? color,
    int? memberSeq,
    String? nickname,
    String? userEmail,
    required String id,
    String? birthday,
    String? add2,
    String? add1,
    String? delimit,
    int? exp,
    String? sub,
  }) {
    return User(
      profilePicture: profilePicture ?? this.profilePicture,
      name: userNm ?? name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      color: color ?? this.color,
      memberSeq: memberSeq ?? this.memberSeq,
      nickname: nickname ?? this.nickname,
      email: userEmail ?? email,
      id: id,
      birthDay: birthday ?? birthDay,
      add2: add2 ?? this.add2,
      add1: add1 ?? this.add1,
      delimit: delimit ?? this.delimit,
      exp: exp ?? this.exp,
      sub: sub ?? this.sub,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      profilePicture,
      name,
      phoneNumber,
      color,
      memberSeq,
      nickname,
      email,
      id,
      birthDay,
      add2,
      add1,
      delimit,
      exp,
      sub,
    ];
  }
}
