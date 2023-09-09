// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentCardRequest _$PaymentCardRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PaymentCardRequest',
      json,
      ($checkedConvert) {
        final val = PaymentCardRequest(
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          cardNumber: $checkedConvert('cardNumber', (v) => v as String?),
          defaultYn: $checkedConvert('defaultYn', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
          rrn: $checkedConvert('rrn', (v) => v as String?),
          crn: $checkedConvert('crn', (v) => v as String?),
          expirationMonth:
              $checkedConvert('expirationMonth', (v) => v as String?),
          expirationYear:
              $checkedConvert('expirationYear', (v) => v as String?),
          billingKey: $checkedConvert('billingKey', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$PaymentCardRequestToJson(PaymentCardRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('cardNumber', instance.cardNumber);
  writeNotNull('defaultYn', instance.defaultYn);
  writeNotNull('password', instance.password);
  writeNotNull('rrn', instance.rrn);
  writeNotNull('crn', instance.crn);
  writeNotNull('expirationMonth', instance.expirationMonth);
  writeNotNull('expirationYear', instance.expirationYear);
  writeNotNull('billingKey', instance.billingKey);
  writeNotNull('accountId', instance.accountId);
  return val;
}
