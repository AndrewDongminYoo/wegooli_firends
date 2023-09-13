// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateUserRequest _$UpdateUserRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateUserRequest',
      json,
      ($checkedConvert) {
        final val = UpdateUserRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          add1: $checkedConvert('add1', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          zipCode: $checkedConvert('zipCode', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          password: $checkedConvert('password', (v) => v as String?),
          delimit: $checkedConvert('delimit', (v) => v as String?),
          nickname: $checkedConvert('nickname', (v) => v as String?),
          profilePicture:
              $checkedConvert('profilePicture', (v) => v as String?),
          color: $checkedConvert('color', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateUserRequestToJson(UpdateUserRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('add1', instance.add1);
  writeNotNull('add2', instance.add2);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('email', instance.email);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('id', instance.id);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('password', instance.password);
  writeNotNull('delimit', instance.delimit);
  writeNotNull('nickname', instance.nickname);
  writeNotNull('profilePicture', instance.profilePicture);
  writeNotNull('color', instance.color);
  return val;
}
