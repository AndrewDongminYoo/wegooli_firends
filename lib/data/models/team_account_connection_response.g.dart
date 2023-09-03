// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_connection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamAccountConnectionResponse _$TeamAccountConnectionResponseFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'TeamAccountConnectionResponse',
      json,
      ($checkedConvert) {
        final val = TeamAccountConnectionResponse(
          teamSeq: $checkedConvert('teamSeq', (v) => v as int?),
          account: $checkedConvert(
              'account',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      TeamAccountModel.fromJson(e as Map<String, dynamic>))
                  .toList()),
        );
        return val;
      },
    );

Map<String, dynamic> _$TeamAccountConnectionResponseToJson(
    TeamAccountConnectionResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('teamSeq', instance.teamSeq);
  writeNotNull('account', instance.account?.map((e) => e.toJson()).toList());
  return val;
}
