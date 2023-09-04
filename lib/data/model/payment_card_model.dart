// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'payment_card_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentCardModel {
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
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: r'cardNumber', required: false, includeIfNull: false)
  final String? cardNumber;

  @JsonKey(name: r'defaultYn', required: false, includeIfNull: false)
  final String? defaultYn;

  @JsonKey(name: r'password', required: false, includeIfNull: false)
  final String? password;

  @JsonKey(name: r'rrn', required: false, includeIfNull: false)
  final String? rrn;

  @JsonKey(name: r'crn', required: false, includeIfNull: false)
  final String? crn;

  @JsonKey(name: r'expirationMonth', required: false, includeIfNull: false)
  final String? expirationMonth;

  @JsonKey(name: r'expirationYear', required: false, includeIfNull: false)
  final String? expirationYear;

  @JsonKey(name: r'billingKey', required: false, includeIfNull: false)
  final String? billingKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentCardModel &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.memberSeq == memberSeq &&
          other.cardNumber == cardNumber &&
          other.defaultYn == defaultYn &&
          other.password == password &&
          other.rrn == rrn &&
          other.crn == crn &&
          other.expirationMonth == expirationMonth &&
          other.expirationYear == expirationYear &&
          other.billingKey == billingKey;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      memberSeq.hashCode +
      cardNumber.hashCode +
      defaultYn.hashCode +
      password.hashCode +
      rrn.hashCode +
      crn.hashCode +
      expirationMonth.hashCode +
      expirationYear.hashCode +
      billingKey.hashCode;

  factory PaymentCardModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentCardModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentCardModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
