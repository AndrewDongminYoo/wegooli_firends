// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'valid_license_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ValidLicenseRequest extends Equatable {
  /// Returns a new [ValidLicenseRequest] instance.
  ValidLicenseRequest({
    this.memberSeq,
    this.licenseClass,
    this.licenseArea,
    this.licenseYear,
    this.licenseNum,
  });

  factory ValidLicenseRequest.fromJson(Map<String, dynamic> json) =>
      _$ValidLicenseRequestFromJson(json);

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

  @JsonKey(name: 'licenseClass', required: false, includeIfNull: false)
  final String? licenseClass;

  @JsonKey(name: 'licenseArea', required: false, includeIfNull: false)
  final String? licenseArea;

  @JsonKey(name: 'licenseYear', required: false, includeIfNull: false)
  final String? licenseYear;

  @JsonKey(name: 'licenseNum', required: false, includeIfNull: false)
  final String? licenseNum;

  Map<String, dynamic> toJson() => _$ValidLicenseRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        memberSeq,
        licenseClass,
        licenseArea,
        licenseYear,
        licenseNum,
      ];
}
