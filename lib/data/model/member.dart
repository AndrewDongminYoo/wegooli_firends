// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'member.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Member {
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Member &&
          other.seq == seq &&
          other.name == name &&
          other.add1 == add1 &&
          other.add2 == add2 &&
          other.zipCode == zipCode &&
          other.phoneNumber == phoneNumber &&
          other.email == email &&
          other.birthDay == birthDay &&
          other.sex == sex &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      seq.hashCode +
      name.hashCode +
      add1.hashCode +
      add2.hashCode +
      zipCode.hashCode +
      phoneNumber.hashCode +
      email.hashCode +
      birthDay.hashCode +
      sex.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);

  Map<String, dynamic> toJson() => _$MemberToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
