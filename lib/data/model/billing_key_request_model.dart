// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'billing_key_request_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BillingKeyRequestModel extends Equatable {
  /// Returns a new [BillingKeyRequestModel] instance.
  const BillingKeyRequestModel({
    this.cardExpirationMonth,
    this.cardExpirationYear,
    this.cardNumber,
    this.customerIdentityNumber,
    this.customerKey,
  });

  factory BillingKeyRequestModel.fromJson(Map<String, dynamic> json) =>
      _$BillingKeyRequestModelFromJson(json);

  @JsonKey(name: 'cardExpirationMonth', required: false, includeIfNull: false)
  final String? cardExpirationMonth;

  @JsonKey(name: 'cardExpirationYear', required: false, includeIfNull: false)
  final String? cardExpirationYear;

  @JsonKey(name: 'cardNumber', required: false, includeIfNull: false)
  final String? cardNumber;

  @JsonKey(
      name: 'customerIdentityNumber', required: false, includeIfNull: false)
  final String? customerIdentityNumber;

  @JsonKey(name: 'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  Map<String, dynamic> toJson() => _$BillingKeyRequestModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        cardExpirationMonth,
        cardExpirationYear,
        cardNumber,
        customerIdentityNumber,
        customerKey,
      ];
}
