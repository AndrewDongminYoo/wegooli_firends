// ignore_for_file: unused_element

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

  factory AccountAgreementRequest.fromJson(Map<String, dynamic> json) =>
      _$AccountAgreementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$AccountAgreementRequestToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => ['classification', 'accountId', 'agreeYn'];
}
