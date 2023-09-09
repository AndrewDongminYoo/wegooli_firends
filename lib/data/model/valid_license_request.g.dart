// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'valid_license_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidLicenseRequest _$ValidLicenseRequestFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      'ValidLicenseRequest',
      json,
      ($checkedConvert) {
        final val = ValidLicenseRequest(
          memberSeq: $checkedConvert('memberSeq', (v) => v as int?),
          licenseClass: $checkedConvert('licenseClass', (v) => v as String?),
          licenseArea: $checkedConvert('licenseArea', (v) => v as String?),
          licenseYear: $checkedConvert('licenseYear', (v) => v as String?),
          licenseNum: $checkedConvert('licenseNum', (v) => v as String?),
        );
        return val;
      },
    );

Map<String, dynamic> _$ValidLicenseRequestToJson(ValidLicenseRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('memberSeq', instance.memberSeq);
  writeNotNull('licenseClass', instance.licenseClass);
  writeNotNull('licenseArea', instance.licenseArea);
  writeNotNull('licenseYear', instance.licenseYear);
  writeNotNull('licenseNum', instance.licenseNum);
  return val;
}
