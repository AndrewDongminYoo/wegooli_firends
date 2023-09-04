// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LicenseModel _$LicenseModelFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'LicenseModel',
      json,
      ($checkedConvert) {
        final val = LicenseModel(
          seq: $checkedConvert('seq', (v) => v as int?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
          createdAt: $checkedConvert('createdAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          updatedAt: $checkedConvert('updatedAt',
              (v) => v == null ? null : DateTime.parse(v as String)),
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          koreanYn: $checkedConvert('koreanYn', (v) => v as String?),
          licenseClass: $checkedConvert('licenseClass', (v) => v as String?),
          licenseArea: $checkedConvert('licenseArea', (v) => v as String?),
          licenseYear: $checkedConvert('licenseYear', (v) => v as String?),
          licenseNum: $checkedConvert('licenseNum', (v) => v as String?),
          expiredDate: $checkedConvert('expiredDate', (v) => v as String?),
          issuedDate: $checkedConvert('issuedDate', (v) => v as String?),
          signature: $checkedConvert('signature', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$LicenseModelToJson(LicenseModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('delYn', instance.delYn);
  writeNotNull('createdAt', instance.createdAt?.toIso8601String());
  writeNotNull('updatedAt', instance.updatedAt?.toIso8601String());
  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('koreanYn', instance.koreanYn);
  writeNotNull('licenseClass', instance.licenseClass);
  writeNotNull('licenseArea', instance.licenseArea);
  writeNotNull('licenseYear', instance.licenseYear);
  writeNotNull('licenseNum', instance.licenseNum);
  writeNotNull('expiredDate', instance.expiredDate);
  writeNotNull('issuedDate', instance.issuedDate);
  writeNotNull('signature', instance.signature);
  return val;
}
