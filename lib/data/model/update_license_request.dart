// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'update_license_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateLicenseRequest {
  /// Returns a new [UpdateLicenseRequest] instance.
  UpdateLicenseRequest({
    this.seq,
    this.koreanYn,
    this.licenseClass,
    this.licenseArea,
    this.licenseYear,
    this.licenseNum,
    this.expiredDate,
    this.issuedDate,
    this.signature,
    this.delYn,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'koreanYn', required: false, includeIfNull: false)
  final String? koreanYn;

  @JsonKey(name: r'licenseClass', required: false, includeIfNull: false)
  final String? licenseClass;

  @JsonKey(name: r'licenseArea', required: false, includeIfNull: false)
  final String? licenseArea;

  @JsonKey(name: r'licenseYear', required: false, includeIfNull: false)
  final String? licenseYear;

  @JsonKey(name: r'licenseNum', required: false, includeIfNull: false)
  final String? licenseNum;

  @JsonKey(name: r'expiredDate', required: false, includeIfNull: false)
  final String? expiredDate;

  @JsonKey(name: r'issuedDate', required: false, includeIfNull: false)
  final String? issuedDate;

  @JsonKey(name: r'signature', required: false, includeIfNull: false)
  final String? signature;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateLicenseRequest &&
          other.seq == seq &&
          other.koreanYn == koreanYn &&
          other.licenseClass == licenseClass &&
          other.licenseArea == licenseArea &&
          other.licenseYear == licenseYear &&
          other.licenseNum == licenseNum &&
          other.expiredDate == expiredDate &&
          other.issuedDate == issuedDate &&
          other.signature == signature &&
          other.delYn == delYn;

  @override
  int get hashCode =>
      seq.hashCode +
      koreanYn.hashCode +
      licenseClass.hashCode +
      licenseArea.hashCode +
      licenseYear.hashCode +
      licenseNum.hashCode +
      expiredDate.hashCode +
      issuedDate.hashCode +
      signature.hashCode +
      delYn.hashCode;

  factory UpdateLicenseRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLicenseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateLicenseRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
