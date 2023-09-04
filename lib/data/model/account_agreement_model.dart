// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'account_agreement_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountAgreementModel {
  /// Returns a new [AccountAgreementModel] instance.
  AccountAgreementModel({
    this.classification,
    this.accountId,
    this.agreeYn,
    this.createdAt,
    this.updatedAt,
  });

  @JsonKey(name: r'classification', required: false, includeIfNull: false)
  final String? classification;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'agreeYn', required: false, includeIfNull: false)
  final String? agreeYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAgreementModel &&
          other.classification == classification &&
          other.accountId == accountId &&
          other.agreeYn == agreeYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt;

  @override
  int get hashCode =>
      classification.hashCode +
      accountId.hashCode +
      agreeYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode;

  factory AccountAgreementModel.fromJson(Map<String, dynamic> json) =>
      _$AccountAgreementModelFromJson(json);

  Map<String, dynamic> toJson() => _$AccountAgreementModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
