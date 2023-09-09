// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'insert_license_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InsertLicenseRequest _$InsertLicenseRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'InsertLicenseRequest',
      json,
      ($checkedConvert) {
        final val = InsertLicenseRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
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

Map<String, dynamic> _$InsertLicenseRequestToJson(
    InsertLicenseRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
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
