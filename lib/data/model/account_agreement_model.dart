// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_agreement_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountAgreementModel extends Equatable {
  /// Returns a new [AccountAgreementModel] instance.
  AccountAgreementModel({
    this.classification,
    this.accountId,
    this.agreeYn,
    this.createdAt,
    this.updatedAt,
  });

  factory AccountAgreementModel.fromJson(Map<String, dynamic> json) =>
      _$AccountAgreementModelFromJson(json);

  @JsonKey(name: 'classification', required: false, includeIfNull: false)
  final String? classification;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'agreeYn', required: false, includeIfNull: false)
  final String? agreeYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  Map<String, dynamic> toJson() => _$AccountAgreementModelToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props =>
      [classification, accountId, agreeYn, createdAt, updatedAt];
}
