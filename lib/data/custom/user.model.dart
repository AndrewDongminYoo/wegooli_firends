// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class User extends Equatable {
  const User({
    this.name,
    this.phoneNumber,
    this.color,
    this.memberSeq,
    this.nickname,
    this.email,
    this.id,
    this.birthDay,
    this.add2,
    this.add1,
    this.delimit,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

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
  final String? id;
  @JsonKey(name: 'birthday', required: false, includeIfNull: false)
  final String? birthDay;
  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;
  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;
  @JsonKey(name: 'delimit', required: false, includeIfNull: false)
  final String? delimit;

  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String? name,
    String? phoneNumber,
    String? color,
    int? memberSeq,
    String? nickname,
    String? email,
    String? id,
    String? birthDay,
    String? add2,
    String? add1,
    String? delimit,
  }) {
    return User(
      name: name ?? this.name,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      color: color ?? this.color,
      memberSeq: memberSeq ?? this.memberSeq,
      nickname: nickname ?? this.nickname,
      email: email ?? this.email,
      id: id ?? this.id,
      birthDay: birthDay ?? this.birthDay,
      add2: add2 ?? this.add2,
      add1: add1 ?? this.add1,
      delimit: delimit ?? this.delimit,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
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
    ];
  }
}
