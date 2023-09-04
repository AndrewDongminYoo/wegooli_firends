// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PaymentModel',
      json,
      ($checkedConvert) {
        final val = PaymentModel(
          paymentKey: $checkedConvert('paymentKey', (v) => v as String?),
          status: $checkedConvert('status', (v) => v as String?),
          lastTransactionKey:
              $checkedConvert('lastTransactionKey', (v) => v as String?),
          orderId: $checkedConvert('orderId', (v) => v as String?),
          orderName: $checkedConvert('orderName', (v) => v as String?),
          requestedAt: $checkedConvert('requestedAt', (v) => v as String?),
          approvedAt: $checkedConvert('approvedAt', (v) => v as String?),
          cancelReason: $checkedConvert('cancelReason', (v) => v as String?),
          canceledAt: $checkedConvert('canceledAt', (v) => v as String?),
          cancelAmount: $checkedConvert('cancelAmount', (v) => v as int?),
          type: $checkedConvert('type', (v) => v as String?),
          currency: $checkedConvert('currency', (v) => v as String?),
          totalAmount: $checkedConvert('totalAmount', (v) => v as int?),
          balanceAmount: $checkedConvert('balanceAmount', (v) => v as int?),
          suppliedAmount: $checkedConvert('suppliedAmount', (v) => v as int?),
          vat: $checkedConvert('vat', (v) => v as int?),
          taxFreeAmount: $checkedConvert('taxFreeAmount', (v) => v as int?),
          taxExemptionAmount:
              $checkedConvert('taxExemptionAmount', (v) => v as int?),
          method: $checkedConvert('method', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaymentModelToJson(PaymentModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('paymentKey', instance.paymentKey);
  writeNotNull('status', instance.status);
  writeNotNull('lastTransactionKey', instance.lastTransactionKey);
  writeNotNull('orderId', instance.orderId);
  writeNotNull('orderName', instance.orderName);
  writeNotNull('requestedAt', instance.requestedAt);
  writeNotNull('approvedAt', instance.approvedAt);
  writeNotNull('cancelReason', instance.cancelReason);
  writeNotNull('canceledAt', instance.canceledAt);
  writeNotNull('cancelAmount', instance.cancelAmount);
  writeNotNull('type', instance.type);
  writeNotNull('currency', instance.currency);
  writeNotNull('totalAmount', instance.totalAmount);
  writeNotNull('balanceAmount', instance.balanceAmount);
  writeNotNull('suppliedAmount', instance.suppliedAmount);
  writeNotNull('vat', instance.vat);
  writeNotNull('taxFreeAmount', instance.taxFreeAmount);
  writeNotNull('taxExemptionAmount', instance.taxExemptionAmount);
  writeNotNull('method', instance.method);
  return val;
}
