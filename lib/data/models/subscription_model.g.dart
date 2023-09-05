// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SubscriptionModel',
      json,
      ($checkedConvert) {
        final val = SubscriptionModel(
          accountId: $checkedConvert('accountId', (v) => v as String?),
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
          teamName: $checkedConvert('teamName', (v) => v as String?),
          carNumber: $checkedConvert('carNumber', (v) => v as String?),
          carModel: $checkedConvert('carModel', (v) => v as String?),
          carNickname: $checkedConvert('carNickname', (v) => v as String?),
          fee: $checkedConvert('fee', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          endAt: $checkedConvert('endAt', (v) => v as String?),
          withdrawalAt: $checkedConvert('withdrawalAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$SubscriptionModelToJson(SubscriptionModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('teamSeq', instance.teamSeq);
  writeNotNull('teamName', instance.teamName);
  writeNotNull('carNumber', instance.carNumber);
  writeNotNull('carModel', instance.carModel);
  writeNotNull('carNickname', instance.carNickname);
  writeNotNull('fee', instance.fee);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('endAt', instance.endAt);
  writeNotNull('withdrawalAt', instance.withdrawalAt);
  return val;
}
