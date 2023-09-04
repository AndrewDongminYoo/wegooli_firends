// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserDTO',
      json,
      ($checkedConvert) {
        final val = UserDTO(
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
          nickName: $checkedConvert('nickName', (v) => v as String?),
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

Map<String, dynamic> _$UserDTOToJson(UserDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('name', instance.name);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('birthDay', instance.birthDay);
  writeNotNull('sex', instance.sex);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('id', instance.id);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('password', instance.password);
  writeNotNull('delimit', instance.delimit);
  writeNotNull('nickName', instance.nickName);
  writeNotNull('profilePicture', instance.profilePicture);
  writeNotNull('deleteAt', instance.deleteAt);
  writeNotNull('color', instance.color);
  writeNotNull('customerKey', instance.customerKey);
  writeNotNull('activeYn', instance.activeYn);
  return val;
}
