// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'account_agreement_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountAgreementRequest {
  /// Returns a new [AccountAgreementRequest] instance.
  AccountAgreementRequest({
    this.classification,
    this.accountId,
    this.agreeYn,
  });

  @JsonKey(name: r'classification', required: false, includeIfNull: false)
  final String? classification;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'agreeYn', required: false, includeIfNull: false)
  final String? agreeYn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AccountAgreementRequest &&
          other.classification == classification &&
          other.accountId == accountId &&
          other.agreeYn == agreeYn;

  @override
  int get hashCode =>
      classification.hashCode + accountId.hashCode + agreeYn.hashCode;

  factory AccountAgreementRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountAgreementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountAgreementRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
