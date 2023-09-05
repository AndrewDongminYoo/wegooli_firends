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

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'memberSeq', required: false, includeIfNull: false)
  final int? memberSeq;

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

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final String? updatedAt;

  factory LicenseRequest.fromJson(Map<String, dynamic> json) =>
      _$LicenseRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseRequestToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        'seq',
        'memberSeq',
        'koreanYn',
        'licenseClass',
        'licenseArea',
        'licenseYear',
        'licenseNum',
        'expiredDate',
        'issuedDate',
        'signature',
        'delYn',
        'createdAt',
        'updatedAt'
      ];
}
