// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeamAccountModel _$TeamAccountModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'TeamAccountModel',
      json,
      ($checkedConvert) {
        final val = TeamAccountModel(
          accountId: $checkedConvert('accountId', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          profilePicture:
              $checkedConvert('profilePicture', (v) => v as String?),
          useYn: $checkedConvert('useYn', (v) => v as String?),
          joinedAt: $checkedConvert('joinedAt', (v) => v as String?),
          leavedAt: $checkedConvert('leavedAt', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$TeamAccountModelToJson(TeamAccountModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('color', instance.color);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('profilePicture', instance.profilePicture);
  writeNotNull('useYn', instance.useYn);
  writeNotNull('joinedAt', instance.joinedAt);
  writeNotNull('leavedAt', instance.leavedAt);
  return val;
}
