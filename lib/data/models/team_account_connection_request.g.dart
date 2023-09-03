// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_connection_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamAccountConnectionRequest _$TeamAccountConnectionRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TeamAccountConnectionRequest',
      json,
      ($checkedConvert) {
        final val = TeamAccountConnectionRequest(
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
          accountId: $checkedConvert('accountId', (v) => v as String?),
          joinedAt: $checkedConvert('joinedAt', (v) => v as String?),
          leavedAt: $checkedConvert('leavedAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TeamAccountConnectionRequestToJson(
    TeamAccountConnectionRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('teamSeq', instance.teamSeq);
  writeNotNull('accountId', instance.accountId);
  writeNotNull('joinedAt', instance.joinedAt);
  writeNotNull('leavedAt', instance.leavedAt);
  return val;
}
