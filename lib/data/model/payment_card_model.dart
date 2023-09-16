// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_card_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentCardModel extends Equatable {
  /// Returns a new [PaymentCardModel] instance.
  PaymentCardModel({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.memberSeq,
    this.cardNumber,
    this.defaultYn,
    this.password,
    this.rrn,
    this.crn,
    this.expirationMonth,
    this.expirationYear,
    this.billingKey,
    this.customerKey,
  });

  factory PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

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

  @JsonKey(name: 'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  Map<String, dynamic> toJson() => _$PaymentCardModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        delYn,
        createdAt,
        updatedAt,
        memberSeq,
        cardNumber,
        defaultYn,
        password,
        rrn,
        crn,
        expirationMonth,
        expirationYear,
        billingKey,
        customerKey,
      ];
}
