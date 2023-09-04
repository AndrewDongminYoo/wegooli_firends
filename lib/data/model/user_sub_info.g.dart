// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sub_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSubInfo _$UserSubInfoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserSubInfo',
      json,
      ($checkedConvert) {
        final val = UserSubInfo(
          userId: $checkedConvert('userId', (v) => v as String?),
          serviceSeq: $checkedConvert('serviceSeq', (v) => v as String?),
          weekInfo: $checkedConvert('weekInfo', (v) => v as String?),
          timeInfo: $checkedConvert('timeInfo', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserSubInfoToJson(UserSubInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userId', instance.userId);
  writeNotNull('serviceSeq', instance.serviceSeq);
  writeNotNull('weekInfo', instance.weekInfo);
  writeNotNull('timeInfo', instance.timeInfo);
  return val;
}
