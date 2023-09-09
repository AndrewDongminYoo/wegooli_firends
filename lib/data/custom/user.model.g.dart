// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => $checkedCreate(
      'User',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          requiredKeys: const ['id'],
        );
        final val = User(
          name: $checkedConvert('userNm', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          email: $checkedConvert('userEmail', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
          birthDay: $checkedConvert('birthday', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          delimit: $checkedConvert('delimit', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'name': 'userNm',
        'email': 'userEmail',
        'birthDay': 'birthday'
      },
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userNm', instance.name);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('color', instance.color);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('userEmail', instance.email);
  writeNotNull('id', instance.id);
  writeNotNull('birthday', instance.birthDay);
  writeNotNull('add2', instance.add2);
  writeNotNull('add1', instance.add1);
  writeNotNull('delimit', instance.delimit);
  return val;
}
