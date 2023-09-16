// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_card_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentCardRequest extends Equatable {
  /// Returns a new [PaymentCardRequest] instance.
  PaymentCardRequest({
    this.memberSeq,
    this.cardNumber,
    this.defaultYn,
    this.password,
    this.rrn,
    this.crn,
    this.expirationMonth,
    this.expirationYear,
    this.billingKey,
    this.accountId,
  });

  factory PaymentCardRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardRequestFromJson(json);

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'cardNumber', required: false, includeIfNull: false)
  final String? cardNumber;

  @JsonKey(name: 'defaultYn', required: false, includeIfNull: false)
  final String? defaultYn;

  @JsonKey(name: 'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: 'rrn', required: false, includeIfNull: false)
  final String? rrn;

  @JsonKey(name: 'crn', required: false, includeIfNull: false)
  final String? crn;

  @JsonKey(name: 'expirationMonth', required: false, includeIfNull: false)
  final String? expirationMonth;

  @JsonKey(name: 'expirationYear', required: false, includeIfNull: false)
  final String? expirationYear;

  @JsonKey(name: 'billingKey', required: false, includeIfNull: false)
  final String? billingKey;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  Map<String, dynamic> toJson() => _$PaymentCardRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        memberSeq,
        cardNumber,
        defaultYn,
        password,
        rrn,
        crn,
        expirationMonth,
        expirationYear,
        billingKey,
        accountId,
      ];
}
