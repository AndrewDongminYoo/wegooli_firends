// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_key_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillingKeyRequestModel _$BillingKeyRequestModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'BillingKeyRequestModel',
      json,
      ($checkedConvert) {
        final val = BillingKeyRequestModel(
          cardExpirationMonth:
              $checkedConvert('cardExpirationMonth', (v) => v as String?),
          cardExpirationYear:
              $checkedConvert('cardExpirationYear', (v) => v as String?),
          cardNumber: $checkedConvert('cardNumber', (v) => v as String?),
          customerIdentityNumber:
              $checkedConvert('customerIdentityNumber', (v) => v as String?),
          customerKey: $checkedConvert('customerKey', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$BillingKeyRequestModelToJson(
    BillingKeyRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cardExpirationMonth', instance.cardExpirationMonth);
  writeNotNull('cardExpirationYear', instance.cardExpirationYear);
  writeNotNull('cardNumber', instance.cardNumber);
  writeNotNull('customerIdentityNumber', instance.customerIdentityNumber);
  writeNotNull('customerKey', instance.customerKey);
  return val;
}
