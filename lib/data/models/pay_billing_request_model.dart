// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'pay_billing_request_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PayBillingRequestModel {
  /// Returns a new [PayBillingRequestModel] instance.
  PayBillingRequestModel({
    this.amount,
    this.customerKey,
    this.orderId,
    this.orderName,
  });

  @JsonKey(name: r'amount', required: false, includeIfNull: false)
  final int? amount;

  @JsonKey(name: r'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  @JsonKey(name: r'orderId', required: false, includeIfNull: false)
  final String? orderId;

  @JsonKey(name: r'orderName', required: false, includeIfNull: false)
  final String? orderName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PayBillingRequestModel &&
          other.amount == amount &&
          other.customerKey == customerKey &&
          other.orderId == orderId &&
          other.orderName == orderName;

  @override
  int get hashCode =>
      amount.hashCode +
      customerKey.hashCode +
      orderId.hashCode +
      orderName.hashCode;

  factory PayBillingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PayBillingRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$PayBillingRequestModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
