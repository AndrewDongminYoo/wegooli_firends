// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operator_team_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperatorTeamRequest _$OperatorTeamRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'OperatorTeamRequest',
      json,
      ($checkedConvert) {
        final val = OperatorTeamRequest(
          startAt: $checkedConvert('startAt', (v) => v as String?),
          endAt: $checkedConvert('endAt', (v) => v as String?),
          contract: $checkedConvert('contract', (v) => v as String?),
          address: $checkedConvert('address', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$OperatorTeamRequestToJson(OperatorTeamRequest instance) {
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
  writeNotNull('name', instance.name);
  return val;
}
