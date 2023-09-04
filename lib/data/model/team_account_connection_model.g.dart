// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_connection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamAccountConnectionModel _$TeamAccountConnectionModelFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TeamAccountConnectionModel',
      json,
      ($checkedConvert) {
        final val = TeamAccountConnectionModel(
          seq: $checkedConvert('seq', (v) => v as int?),
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          joinedAt: $checkedConvert('joinedAt', (v) => v as String?),
          leavedAt: $checkedConvert('leavedAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TeamAccountConnectionModelToJson(
    TeamAccountConnectionModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('teamSeq', instance.teamSeq);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('joinedAt', instance.joinedAt);
  writeNotNull('leavedAt', instance.leavedAt);
  return val;
}
