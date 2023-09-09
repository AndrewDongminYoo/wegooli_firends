// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'operator_team_account_detail.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorTeamAccountDetail {
  /// Returns a new [OperatorTeamAccountDetail] instance.
  OperatorTeamAccountDetail({
    this.name,
    this.teamName,
    this.email,
    this.phoneNumber,
    this.add1,
    this.add2,
    this.sex,
    this.age,
    this.signDate,
    this.monthlyPay,
    this.licenseYn,
    this.paymentCardYn,
  });

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: r'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: r'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: r'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: r'age', required: false, includeIfNull: false)
  final String? age;

  @JsonKey(name: r'signDate', required: false, includeIfNull: false)
  final String? signDate;

  @JsonKey(name: r'monthlyPay', required: false, includeIfNull: false)
  final int? monthlyPay;

  @JsonKey(name: r'licenseYn', required: false, includeIfNull: false)
  final String? licenseYn;

  @JsonKey(name: r'paymentCardYn', required: false, includeIfNull: false)
  final String? paymentCardYn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorTeamAccountDetail &&
          other.name == name &&
          other.teamName == teamName &&
          other.email == email &&
          other.phoneNumber == phoneNumber &&
          other.add1 == add1 &&
          other.add2 == add2 &&
          other.sex == sex &&
          other.age == age &&
          other.signDate == signDate &&
          other.monthlyPay == monthlyPay &&
          other.licenseYn == licenseYn &&
          other.paymentCardYn == paymentCardYn;

  @override
  int get hashCode =>
      name.hashCode +
      teamName.hashCode +
      email.hashCode +
      phoneNumber.hashCode +
      add1.hashCode +
      add2.hashCode +
      sex.hashCode +
      age.hashCode +
      signDate.hashCode +
      monthlyPay.hashCode +
      licenseYn.hashCode +
      paymentCardYn.hashCode;

  factory OperatorTeamAccountDetail.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamAccountDetailFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorTeamAccountDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
