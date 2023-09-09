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

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'teamName', required: false, includeIfNull: false)
  final String? teamName;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: r'sex', required: false, includeIfNull: false)
  final String? sex;

  @JsonKey(name: r'rrn', required: false, includeIfNull: false)
  final String? rrn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'isLicense', required: false, includeIfNull: false)
  final String? isLicense;

  @JsonKey(name: r'isPaymentCard', required: false, includeIfNull: false)
  final String? isPaymentCard;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorUserModel &&
          other.name == name &&
          other.teamName == teamName &&
          other.accountId == accountId &&
          other.phoneNumber == phoneNumber &&
          other.contract == contract &&
          other.add1 == add1 &&
          other.add2 == add2 &&
          other.sex == sex &&
          other.rrn == rrn &&
          other.createdAt == createdAt &&
          other.isLicense == isLicense &&
          other.isPaymentCard == isPaymentCard;

  @override
  int get hashCode =>
      name.hashCode +
      teamName.hashCode +
      accountId.hashCode +
      phoneNumber.hashCode +
      contract.hashCode +
      add1.hashCode +
      add2.hashCode +
      sex.hashCode +
      rrn.hashCode +
      createdAt.hashCode +
      isLicense.hashCode +
      isPaymentCard.hashCode;

  factory OperatorUserModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorUserModelFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorUserModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
