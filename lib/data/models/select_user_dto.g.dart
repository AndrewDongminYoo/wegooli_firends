// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectUserDTO _$SelectUserDTOFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SelectUserDTO',
      json,
      ($checkedConvert) {
        final val = SelectUserDTO(
          id: $checkedConvert('id', (v) => v as String?),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          zipCode: $checkedConvert('zipCode', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          birthday: $checkedConvert('birthday', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String?),
          delimit: $checkedConvert('delimit', (v) => v as String?),
          nickName: $checkedConvert('nickName', (v) => v as String?),
          profilePicture:
              $checkedConvert('profilePicture', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          deleteAt: $checkedConvert('deleteAt', (v) => v as String?),
          delYnMember: $checkedConvert('delYn_member', (v) => v as String?),
          delYnAccount: $checkedConvert('delYn_account', (v) => v as String?),
          createdAtMember:
              $checkedConvert('createdAt_member', (v) => v as String?),
          createdAtAccount:
              $checkedConvert('createdAt_account', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'delYnMember': 'delYn_member',
        'delYnAccount': 'delYn_account',
        'createdAtMember': 'createdAt_member',
        'createdAtAccount': 'createdAt_account'
      },
    );

Map<String, dynamic> _$SelectUserDTOToJson(SelectUserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('name', instance.name);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('birthday', instance.birthday);
  writeNotNull('sex', instance.sex);
  writeNotNull('delimit', instance.delimit);
  writeNotNull('nickName', instance.nickName);
  writeNotNull('profilePicture', instance.profilePicture);
  writeNotNull('color', instance.color);
  writeNotNull('deleteAt', instance.deleteAt);
  writeNotNull('delYn_member', instance.delYnMember);
  writeNotNull('delYn_account', instance.delYnAccount);
  writeNotNull('createdAt_member', instance.createdAtMember);
  writeNotNull('createdAt_account', instance.createdAtAccount);
  return val;
}
