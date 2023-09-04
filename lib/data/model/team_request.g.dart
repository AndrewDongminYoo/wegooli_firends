// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamRequest _$TeamRequestFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TeamRequest',
      json,
      ($checkedConvert) {
        final val = TeamRequest(
          accountId: $checkedConvert('accountId', (v) => v as String?),
          name: $checkedConvert('name', (v) => v as String?),
          contract: $checkedConvert('contract', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TeamRequestToJson(TeamRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('name', instance.name);
  writeNotNull('contract', instance.contract);
  return val;
}
