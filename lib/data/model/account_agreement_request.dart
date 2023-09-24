// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'account_agreement_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountAgreementRequest extends Equatable {
  /// Returns a new [AccountAgreementRequest] instance.
  const AccountAgreementRequest({
    this.classification,
    this.accountId,
    this.agreeYn,
  });

  factory AccountAgreementRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountAgreementRequestFromJson(json);

  @JsonKey(name: 'classification', required: false, includeIfNull: false)
  final String? classification;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'agreeYn', required: false, includeIfNull: false)
  final String? agreeYn;

  Map<String, dynamic> toJson() => _$AccountAgreementRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [classification, accountId, agreeYn];
}
