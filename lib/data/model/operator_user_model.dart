// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'operator_user_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorUserModel {
  /// Returns a new [OperatorUserModel] instance.
  OperatorUserModel({
    this.name,
    this.teamName,
    this.accountId,
    this.phoneNumber,
    this.contract,
    this.add1,
    this.add2,
    this.sex,
    this.rrn,
    this.createdAt,
    this.isLicense,
    this.isPaymentCard,
  });

  factory OperatorUserModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorUserModelFromJson(json);

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: 'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: 'rrn', required: false, includeIfNull: false)
  final String? rrn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'isLicense', required: false, includeIfNull: false)
  final String? isLicense;

  @JsonKey(name: 'isPaymentCard', required: false, includeIfNull: false)
  final String? isPaymentCard;

  Map<String, dynamic> toJson() => _$OperatorUserModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
