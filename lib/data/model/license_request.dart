// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'license_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseRequest extends Equatable {
  /// Returns a new [LicenseRequest] instance.
  LicenseRequest({
    this.seq,
    this.memberSeq,
    this.koreanYn,
    this.licenseClass,
    this.licenseArea,
    this.licenseYear,
    this.licenseNum,
    this.expiredDate,
    this.issuedDate,
    this.signature,
    this.delYn,
    this.createdAt,
    this.updatedAt,
  });

  factory LicenseRequest.fromJson(Map<String, dynamic> json) =>
      _$LicenseRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

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

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  Map<String, dynamic> toJson() => _$LicenseRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        memberSeq,
        koreanYn,
        licenseClass,
        licenseArea,
        licenseYear,
        licenseNum,
        expiredDate,
        issuedDate,
        signature,
        delYn,
        createdAt,
        updatedAt,
      ];
}
