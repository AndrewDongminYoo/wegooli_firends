// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserDto',
      json,
      ($checkedConvert) {
        final val = UserDto(
          seq: $checkedConvert('seq', (v) => v as int?),
          name: $checkedConvert('name', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          zipCode: $checkedConvert('zipCode', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          birthDay: $checkedConvert('birthDay', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          password: $checkedConvert('password', (v) => v as String?),
          delimit: $checkedConvert('delimit', (v) => v as String?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          profilePicture:
              $checkedConvert('profilePicture', (v) => v as String?),
          deleteAt: $checkedConvert('deleteAt', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          customerKey: $checkedConvert('customerKey', (v) => v as String?),
          activeYn: $checkedConvert('activeYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserDtoToJson(UserDto instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('color', instance.color);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('email', instance.email);
  writeNotNull('id', instance.id);
  writeNotNull('birthDay', instance.birthDay);
  writeNotNull('add2', instance.add2);
  writeNotNull('add1', instance.add1);
  writeNotNull('delimit', instance.delimit);
  writeNotNull('seq', instance.seq);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('sex', instance.sex);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('password', instance.password);
  writeNotNull('profilePicture', instance.profilePicture);
  writeNotNull('deleteAt', instance.deleteAt);
  writeNotNull('customerKey', instance.customerKey);
  writeNotNull('activeYn', instance.activeYn);
  return val;
}
