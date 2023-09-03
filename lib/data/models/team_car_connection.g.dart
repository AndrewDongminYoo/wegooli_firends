// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_car_connection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamCarConnection _$TeamCarConnectionFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TeamCarConnection',
      json,
      ($checkedConvert) {
        final val = TeamCarConnection(
          seq: $checkedConvert('seq', (v) => v as int?),
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
          carNum: $checkedConvert('carNum', (v) => v as String?),
          startAt: $checkedConvert('startAt', (v) => v as String?),
          endAt: $checkedConvert('endAt', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
          activeYn: $checkedConvert('activeYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TeamCarConnectionToJson(TeamCarConnection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('teamSeq', instance.teamSeq);
  writeNotNull('carNum', instance.carNum);
  writeNotNull('startAt', instance.startAt);
  writeNotNull('endAt', instance.endAt);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('activeYn', instance.activeYn);
  return val;
}
