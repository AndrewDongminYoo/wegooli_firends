// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operator_team_account_detail.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorTeamAccountDetail extends Equatable {
  /// Returns a new [OperatorTeamAccountDetail] instance.
  const OperatorTeamAccountDetail({
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

  factory OperatorTeamAccountDetail.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamAccountDetailFromJson(json);

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: 'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: 'email', required: false, includeIfNull: false)
  final String? email;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: 'age', required: false, includeIfNull: false)
  final String? age;

  @JsonKey(name: 'signDate', required: false, includeIfNull: false)
  final String? signDate;

  @JsonKey(name: 'monthlyPay', required: false, includeIfNull: false)
  final int? monthlyPay;

  @JsonKey(name: 'licenseYn', required: false, includeIfNull: false)
  final String? licenseYn;

  @JsonKey(name: 'paymentCardYn', required: false, includeIfNull: false)
  final String? paymentCardYn;

  Map<String, dynamic> toJson() => _$OperatorTeamAccountDetailToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        name,
        teamName,
        email,
        phoneNumber,
        add1,
        add2,
        sex,
        age,
        signDate,
        monthlyPay,
        licenseYn,
        paymentCardYn,
      ];
}
