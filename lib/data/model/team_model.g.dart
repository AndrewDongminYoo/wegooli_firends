// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamModel _$TeamModelFromJson(Map<String, dynamic> json) => $checkedCreate(
      'TeamModel',
      json,
      ($checkedConvert) {
        final val = TeamModel(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          teamCode: $checkedConvert('teamCode', (v) => v as String?),
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

Map<String, dynamic> _$TeamModelToJson(TeamModel instance) {
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
  writeNotNull('accountId', instance.accountId);
  writeNotNull('teamCode', instance.teamCode);
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
