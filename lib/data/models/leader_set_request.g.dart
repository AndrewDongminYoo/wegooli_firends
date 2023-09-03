// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leader_set_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaderSetRequest _$LeaderSetRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LeaderSetRequest',
      json,
      ($checkedConvert) {
        final val = LeaderSetRequest(
          userId: $checkedConvert('userId', (v) => v as String?),
          serviceSeq: $checkedConvert('serviceSeq', (v) => v as String?),
          maxSub: $checkedConvert('maxSub', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LeaderSetRequestToJson(LeaderSetRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('serviceSeq', instance.serviceSeq);
  writeNotNull('maxSub', instance.maxSub);
  return val;
}
