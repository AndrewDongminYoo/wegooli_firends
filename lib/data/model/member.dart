// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'member.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Member extends Equatable {
  /// Returns a new [Member] instance.
  Member({
    this.seq,
    this.name,
    this.add1,
    this.add2,
    this.zipCode,
    this.phoneNumber,
    this.email,
    this.birthday,
    this.sex,
    this.delYn,
    this.createdAt,
    this.updatedAt,
  });

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

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

  @JsonKey(name: 'birthday', required: false, includeIfNull: false)
  final String? birthday;

  @JsonKey(name: 'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  Map<String, dynamic> toJson() => _$MemberToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        name,
        add1,
        add2,
        zipCode,
        phoneNumber,
        email,
        birthday,
        sex,
        delYn,
        createdAt,
        updatedAt,
      ];
}
