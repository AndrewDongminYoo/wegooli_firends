// ignore_for_file: unused_element

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
    this.birthDay,
    this.sex,
    this.delYn,
    this.createdAt,
    this.updatedAt,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

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

  @JsonKey(name: r'birthDay', required: false, includeIfNull: false)
  final String? birthDay;

  @JsonKey(name: r'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

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
        birthDay,
        sex,
        delYn,
        createdAt,
        updatedAt,
      ];
}
