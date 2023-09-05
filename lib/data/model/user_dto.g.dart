// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDto _$UserDtoFromJson(Map<String, dynamic> json) => $checkedCreate(
      'UserDto',
      json,
      ($checkedConvert) {
        $checkKeys(
          json,
          allowedKeys: const [
            'activeYn',
            'userNm',
            'phoneNumber',
            'color',
            'memberSeq',
            'nickname',
            'userEmail',
            'id',
            'add2',
            'add1',
            'sub',
            'exp'
          ],
        );
        final val = UserDto(
          activeYn: $checkedConvert('activeYn', (v) => v as String?),
          userNm: $checkedConvert('userNm', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          userEmail: $checkedConvert('userEmail', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          sub: $checkedConvert('sub', (v) => v as String?),
          exp: $checkedConvert('exp', (v) => v as int?),
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

  writeNotNull('activeYn', instance.activeYn);
  writeNotNull('userNm', instance.userNm);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('color', instance.color);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('userEmail', instance.userEmail);
  writeNotNull('id', instance.id);
  writeNotNull('add2', instance.add2);
  writeNotNull('add1', instance.add1);
  writeNotNull('sub', instance.sub);
  writeNotNull('exp', instance.exp);
  return val;
}
