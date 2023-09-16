// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'pay_billing_request_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PayBillingRequestModel extends Equatable {
  /// Returns a new [PayBillingRequestModel] instance.
  PayBillingRequestModel({
    this.amount,
    this.customerKey,
    this.orderId,
    this.orderName,
    this.accountId,
  });

  factory PayBillingRequestModel.fromJson(Map<String, dynamic> json) =>
      _$PayBillingRequestModelFromJson(json);

  @JsonKey(name: 'amount', required: false, includeIfNull: false)
  final int? amount;

  @JsonKey(name: 'customerKey', required: false, includeIfNull: false)
  final String? customerKey;

  @JsonKey(name: 'orderId', required: false, includeIfNull: false)
  final String? orderId;

  @JsonKey(name: 'orderName', required: false, includeIfNull: false)
  final String? orderName;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  Map<String, dynamic> toJson() => _$PayBillingRequestModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [amount, customerKey, orderId, orderName, accountId];
}
