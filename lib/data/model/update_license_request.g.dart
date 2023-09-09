// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_license_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdateLicenseRequest _$UpdateLicenseRequestFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      'UpdateLicenseRequest',
      json,
      ($checkedConvert) {
        final val = UpdateLicenseRequest(
          seq: $checkedConvert('seq', (v) => v as int?),
          koreanYn: $checkedConvert('koreanYn', (v) => v as String?),
          licenseClass: $checkedConvert('licenseClass', (v) => v as String?),
          licenseArea: $checkedConvert('licenseArea', (v) => v as String?),
          licenseYear: $checkedConvert('licenseYear', (v) => v as String?),
          licenseNum: $checkedConvert('licenseNum', (v) => v as String?),
          expiredDate: $checkedConvert('expiredDate', (v) => v as String?),
          issuedDate: $checkedConvert('issuedDate', (v) => v as String?),
          signature: $checkedConvert('signature', (v) => v as String?),
          delYn: $checkedConvert('delYn', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$UpdateLicenseRequestToJson(
    UpdateLicenseRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('seq', instance.seq);
  writeNotNull('koreanYn', instance.koreanYn);
  writeNotNull('licenseClass', instance.licenseClass);
  writeNotNull('licenseArea', instance.licenseArea);
  writeNotNull('licenseYear', instance.licenseYear);
  writeNotNull('licenseNum', instance.licenseNum);
  writeNotNull('expiredDate', instance.expiredDate);
  writeNotNull('issuedDate', instance.issuedDate);
  writeNotNull('signature', instance.signature);
  writeNotNull('delYn', instance.delYn);
  return val;
}
