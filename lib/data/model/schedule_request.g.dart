// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ScheduleRequest _$ScheduleRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ScheduleRequest',
      json,
      ($checkedConvert) {
        final val = ScheduleRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          startAt: $checkedConvert('startAt', (v) => v as String?),
          endAt: $checkedConvert('endAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ScheduleRequestToJson(ScheduleRequest instance) {
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
  writeNotNull('teamSeq', instance.teamSeq);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('startAt', instance.startAt);
  writeNotNull('endAt', instance.endAt);
  return val;
}
