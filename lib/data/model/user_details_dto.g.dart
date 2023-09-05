// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserDetailsDTO _$UserDetailsDTOFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'UserDetailsDTO',
      json,
      ($checkedConvert) {
        final val = UserDetailsDTO(
          userDto: $checkedConvert(
              'userDto',
              (v) => v == null
                  ? null
                  : UserDTO.fromJson(v as Map<String, dynamic>)),
          authorities: $checkedConvert(
              'authorities',
              (v) => (v as List<dynamic>?)
                  ?.map((e) =>
                      GrantedAuthority.fromJson(e as Map<String, dynamic>))
                  .toList()),
          name: $checkedConvert('name', (v) => v as String?),
          id: $checkedConvert('id', (v) => v as String?),
          enabled: $checkedConvert('enabled', (v) => v as bool?),
          color: $checkedConvert('color', (v) => v as String?),
          password: $checkedConvert('password', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          seq: $checkedConvert('seq', (v) => v as int?),
          username: $checkedConvert('username', (v) => v as String?),
          delimit: $checkedConvert('delimit', (v) => v as String?),
          updatedAt: $checkedConvert('updatedAt', (v) => v as String?),
          customerKey: $checkedConvert('customerKey', (v) => v as String?),
          phoneNumber: $checkedConvert('phoneNumber', (v) => v as String?),
          add2: $checkedConvert('add2', (v) => v as String?),
          zipCode: $checkedConvert('zipCode', (v) => v as String?),
          email: $checkedConvert('email', (v) => v as String?),
          sex: $checkedConvert('sex', (v) => v as String?),
          birthDay: $checkedConvert('birthDay', (v) => v as String?),
          nickName: $checkedConvert('nickName', (v) => v as String?),
          profilePicture:
              $checkedConvert('profilePicture', (v) => v as String?),
          add1: $checkedConvert('add1', (v) => v as String?),
          createdAt: $checkedConvert('createdAt', (v) => v as String?),
          deleteAt: $checkedConvert('deleteAt', (v) => v as String?),
          activeYn: $checkedConvert('activeYn', (v) => v as String?),
          accountNonExpired:
              $checkedConvert('accountNonExpired', (v) => v as bool?),
          accountNonLocked:
              $checkedConvert('accountNonLocked', (v) => v as bool?),
          credentialsNonExpired:
              $checkedConvert('credentialsNonExpired', (v) => v as bool?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UserDetailsDTOToJson(UserDetailsDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('userDto', instance.userDto?.toJson());
  writeNotNull(
      'authorities', instance.authorities?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name);
  writeNotNull('id', instance.id);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('color', instance.color);
  writeNotNull('password', instance.password);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('seq', instance.seq);
  writeNotNull('username', instance.username);
  writeNotNull('delimit', instance.delimit);
  writeNotNull('updatedAt', instance.updatedAt);
  writeNotNull('customerKey', instance.customerKey);
  writeNotNull('phoneNumber', instance.phoneNumber);
  writeNotNull('add2', instance.add2);
  writeNotNull('zipCode', instance.zipCode);
  writeNotNull('email', instance.email);
  writeNotNull('sex', instance.sex);
  writeNotNull('birthDay', instance.birthDay);
  writeNotNull('nickName', instance.nickName);
  writeNotNull('profilePicture', instance.profilePicture);
  writeNotNull('add1', instance.add1);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('deleteAt', instance.deleteAt);
  writeNotNull('activeYn', instance.activeYn);
  writeNotNull('accountNonExpired', instance.accountNonExpired);
  writeNotNull('accountNonLocked', instance.accountNonLocked);
  writeNotNull('credentialsNonExpired', instance.credentialsNonExpired);
  return val;
}
