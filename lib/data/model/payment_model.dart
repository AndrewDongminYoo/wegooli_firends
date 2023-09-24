// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'payment_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PaymentModel extends Equatable {
  /// Returns a new [PaymentModel] instance.
  const PaymentModel({
    this.paymentKey,
    this.status,
    this.lastTransactionKey,
    this.orderId,
    this.orderName,
    this.requestedAt,
    this.approvedAt,
    this.cancelReason,
    this.canceledAt,
    this.cancelAmount,
    this.type,
    this.currency,
    this.totalAmount,
    this.balanceAmount,
    this.suppliedAmount,
    this.vat,
    this.taxFreeAmount,
    this.taxExemptionAmount,
    this.method,
    this.accountId,
  });

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  @JsonKey(name: 'paymentKey', required: false, includeIfNull: false)
  final String? paymentKey;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: 'lastTransactionKey', required: false, includeIfNull: false)
  final String? lastTransactionKey;

  @JsonKey(name: 'orderId', required: false, includeIfNull: false)
  final String? orderId;

  @JsonKey(name: 'orderName', required: false, includeIfNull: false)
  final String? orderName;

  @JsonKey(name: 'requestedAt', required: false, includeIfNull: false)
  final String? requestedAt;

  @JsonKey(name: 'approvedAt', required: false, includeIfNull: false)
  final String? approvedAt;

  @JsonKey(name: 'cancelReason', required: false, includeIfNull: false)
  final String? cancelReason;

  @JsonKey(name: 'canceledAt', required: false, includeIfNull: false)
  final String? canceledAt;

  @JsonKey(name: 'cancelAmount', required: false, includeIfNull: false)
  final int? cancelAmount;

  @JsonKey(name: 'type', required: false, includeIfNull: false)
  final String? type;

  @JsonKey(name: 'currency', required: false, includeIfNull: false)
  final String? currency;

  @JsonKey(name: 'totalAmount', required: false, includeIfNull: false)
  final int? totalAmount;

  @JsonKey(name: 'balanceAmount', required: false, includeIfNull: false)
  final int? balanceAmount;

  @JsonKey(name: 'suppliedAmount', required: false, includeIfNull: false)
  final int? suppliedAmount;

  @JsonKey(name: 'vat', required: false, includeIfNull: false)
  final int? vat;

  @JsonKey(name: 'taxFreeAmount', required: false, includeIfNull: false)
  final int? taxFreeAmount;

  @JsonKey(name: 'taxExemptionAmount', required: false, includeIfNull: false)
  final int? taxExemptionAmount;

  @JsonKey(name: 'method', required: false, includeIfNull: false)
  final String? method;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  Map<String, dynamic> toJson() => _$PaymentModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        paymentKey,
        status,
        lastTransactionKey,
        orderId,
        orderName,
        requestedAt,
        approvedAt,
        cancelReason,
        canceledAt,
        cancelAmount,
        type,
        currency,
        totalAmount,
        balanceAmount,
        suppliedAmount,
        vat,
        taxFreeAmount,
        taxExemptionAmount,
        method,
        accountId,
      ];
}
