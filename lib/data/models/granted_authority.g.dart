// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'granted_authority.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GrantedAuthority _$GrantedAuthorityFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'GrantedAuthority',
      json,
      ($checkedConvert) {
        final val = GrantedAuthority(
          authority: $checkedConvert('authority', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$GrantedAuthorityToJson(GrantedAuthority instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('authority', instance.authority);
  return val;
}
