// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'valid_license_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ValidLicenseRequest {
  /// Returns a new [ValidLicenseRequest] instance.
  ValidLicenseRequest({
    this.memberSeq,
    this.licenseClass,
    this.licenseArea,
    this.licenseYear,
    this.licenseNum,
  });

  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: r'licenseClass', required: false, includeIfNull: false)
  final String? licenseClass;

  @JsonKey(name: r'licenseArea', required: false, includeIfNull: false)
  final String? licenseArea;

  @JsonKey(name: r'licenseYear', required: false, includeIfNull: false)
  final String? licenseYear;

  @JsonKey(name: r'licenseNum', required: false, includeIfNull: false)
  final String? licenseNum;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValidLicenseRequest &&
          other.memberSeq == memberSeq &&
          other.licenseClass == licenseClass &&
          other.licenseArea == licenseArea &&
          other.licenseYear == licenseYear &&
          other.licenseNum == licenseNum;

  @override
  int get hashCode =>
      memberSeq.hashCode +
      licenseClass.hashCode +
      licenseArea.hashCode +
      licenseYear.hashCode +
      licenseNum.hashCode;

  factory ValidLicenseRequest.fromJson(Map<String, dynamic> json) =>
      _$ValidLicenseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ValidLicenseRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
