// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_license_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateLicenseRequest extends Equatable {
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

  factory UpdateLicenseRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateLicenseRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'koreanYn', required: false, includeIfNull: false)
  final String? koreanYn;

  @JsonKey(name: 'licenseClass', required: false, includeIfNull: false)
  final String? licenseClass;

  @JsonKey(name: 'licenseArea', required: false, includeIfNull: false)
  final String? licenseArea;

  @JsonKey(name: 'licenseYear', required: false, includeIfNull: false)
  final String? licenseYear;

  @JsonKey(name: 'licenseNum', required: false, includeIfNull: false)
  final String? licenseNum;

  @JsonKey(name: 'expiredDate', required: false, includeIfNull: false)
  final String? expiredDate;

  @JsonKey(name: 'issuedDate', required: false, includeIfNull: false)
  final String? issuedDate;

  @JsonKey(name: 'signature', required: false, includeIfNull: false)
  final String? signature;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  Map<String, dynamic> toJson() => _$UpdateLicenseRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        koreanYn,
        licenseClass,
        licenseArea,
        licenseYear,
        licenseNum,
        expiredDate,
        issuedDate,
        signature,
        delYn,
      ];
}
