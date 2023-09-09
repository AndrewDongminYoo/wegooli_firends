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
          carNickname: $checkedConvert('carNickname', (v) => v as String?),
          lat: $checkedConvert('lat', (v) => v as String?),
          lon: $checkedConvert('lon', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          zipCode: $checkedConvert('zipCode', (v) => v as String?),
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
  writeNotNull('carNickname', instance.carNickname);
  writeNotNull('lat', instance.lat);
  writeNotNull('lon', instance.lon);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('zipCode', instance.zipCode);
  return val;
}
