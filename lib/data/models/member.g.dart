// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Member _$MemberFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Member',
      json,
      ($checkedConvert) {
        final val = Member(
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
        );
        return val;
      },
    );

Map<String, dynamic> _$MemberToJson(Member instance) {
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
  return val;
}
