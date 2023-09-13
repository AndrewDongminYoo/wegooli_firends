// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectUserRequest _$SelectUserRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'SelectUserRequest',
      json,
      ($checkedConvert) {
        final val = SelectUserRequest(
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
          nickname: $checkedConvert('nickname', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
          delYnMember: $checkedConvert('delYn_member', (v) => v as String?),
          delYnAccount: $checkedConvert('delYn_account', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'delYnMember': 'delYn_member',
        'delYnAccount': 'delYn_account'
      },
    );

Map<String, dynamic> _$SelectUserRequestToJson(SelectUserRequest instance) {
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
  writeNotNull('nickname', instance.nickname);
  writeNotNull('color', instance.color);
  writeNotNull('delYn_member', instance.delYnMember);
  writeNotNull('delYn_account', instance.delYnAccount);
  return val;
}
