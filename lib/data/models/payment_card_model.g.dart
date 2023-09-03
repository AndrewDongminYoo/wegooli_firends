// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentCardModel _$PaymentCardModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'PaymentCardModel',
      json,
      ($checkedConvert) {
        final val = PaymentCardModel(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
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
        );
        return val;
      },
    );

Map<String, dynamic> _$PaymentCardModelToJson(PaymentCardModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('cardNumber', instance.cardNumber);
  writeNotNull('defaultYn', instance.defaultYn);
  writeNotNull('password', instance.password);
  writeNotNull('rrn', instance.rrn);
  writeNotNull('crn', instance.crn);
  writeNotNull('expirationMonth', instance.expirationMonth);
  writeNotNull('expirationYear', instance.expirationYear);
  writeNotNull('billingKey', instance.billingKey);
  return val;
}
