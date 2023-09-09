// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_billing_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PayBillingRequestModel _$PayBillingRequestModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'PayBillingRequestModel',
      json,
      ($checkedConvert) {
        final val = PayBillingRequestModel(
          amount: $checkedConvert('amount', (v) => v as int?),
          customerKey: $checkedConvert('customerKey', (v) => v as String?),
          orderId: $checkedConvert('orderId', (v) => v as String?),
          orderName: $checkedConvert('orderName', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PayBillingRequestModelToJson(
    PayBillingRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('customerKey', instance.customerKey);
  writeNotNull('orderId', instance.orderId);
  writeNotNull('orderName', instance.orderName);
  writeNotNull('accountId', instance.accountId);
  return val;
}
