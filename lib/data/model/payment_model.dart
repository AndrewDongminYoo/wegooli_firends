// ignore_for_file: unused_element

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
  PaymentModel({
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
  });

  @JsonKey(name: r'paymentKey', required: false, includeIfNull: false)
  final String? paymentKey;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'lastTransactionKey', required: false, includeIfNull: false)
  final String? lastTransactionKey;

  @JsonKey(name: r'orderId', required: false, includeIfNull: false)
  final String? orderId;

  @JsonKey(name: r'orderName', required: false, includeIfNull: false)
  final String? orderName;

  @JsonKey(name: r'requestedAt', required: false, includeIfNull: false)
  final String? requestedAt;

  @JsonKey(name: r'approvedAt', required: false, includeIfNull: false)
  final String? approvedAt;

  @JsonKey(name: r'cancelReason', required: false, includeIfNull: false)
  final String? cancelReason;

  @JsonKey(name: r'canceledAt', required: false, includeIfNull: false)
  final String? canceledAt;

  @JsonKey(name: r'cancelAmount', required: false, includeIfNull: false)
  final int? cancelAmount;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final String? type;

  @JsonKey(name: r'currency', required: false, includeIfNull: false)
  final String? currency;

  @JsonKey(name: r'totalAmount', required: false, includeIfNull: false)
  final int? totalAmount;

  @JsonKey(name: r'balanceAmount', required: false, includeIfNull: false)
  final int? balanceAmount;

  @JsonKey(name: r'suppliedAmount', required: false, includeIfNull: false)
  final int? suppliedAmount;

  @JsonKey(name: r'vat', required: false, includeIfNull: false)
  final int? vat;

  @JsonKey(name: r'taxFreeAmount', required: false, includeIfNull: false)
  final int? taxFreeAmount;

  @JsonKey(name: r'taxExemptionAmount', required: false, includeIfNull: false)
  final int? taxExemptionAmount;

  @JsonKey(name: r'method', required: false, includeIfNull: false)
  final String? method;

  factory PaymentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentModelFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentModelToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        'paymentKey',
        'status',
        'lastTransactionKey',
        'orderId',
        'orderName',
        'requestedAt',
        'approvedAt',
        'cancelReason',
        'canceledAt',
        'cancelAmount',
        'type',
        'currency',
        'totalAmount',
        'balanceAmount',
        'suppliedAmount',
        'vat',
        'taxFreeAmount',
        'taxExemptionAmount',
        'method'
      ];
}
