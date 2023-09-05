// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Account _$AccountFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Account',
      json,
      ($checkedConvert) {
        final val = Account(
          id: $checkedConvert('id', (v) => v as String?),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          password: $checkedConvert('password', (v) => v as String?),
          delimit: $checkedConvert('delimit', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          deleteAt: $checkedConvert('deleteAt', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          profilePicture:
              $checkedConvert('profilePicture', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$AccountToJson(Account instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('password', instance.password);
  writeNotNull('delimit', instance.delimit);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('deleteAt', instance.deleteAt);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('color', instance.color);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('profilePicture', instance.profilePicture);
  return val;
}
