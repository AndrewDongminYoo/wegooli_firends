// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorUserRequest _$OperatorUserRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorUserRequest',
      json,
      ($checkedConvert) {
        final val = OperatorUserRequest(
          startAt: $checkedConvert('startAt', (v) => v as String?),
          endAt: $checkedConvert('endAt', (v) => v as String?),
          contract: $checkedConvert('contract', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          content: $checkedConvert('content', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorUserRequestToJson(OperatorUserRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('startAt', instance.startAt);
  writeNotNull('endAt', instance.endAt);
  writeNotNull('contract', instance.contract);
  writeNotNull('address', instance.address);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('content', instance.content);
  return val;
}
