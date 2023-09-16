// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'insert_license_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InsertLicenseRequest extends Equatable {
  /// Returns a new [InsertLicenseRequest] instance.
  InsertLicenseRequest({
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
  });

  factory InsertLicenseRequest.fromJson(Map<String, dynamic> json) =>
      _$InsertLicenseRequestFromJson(json);

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

  Map<String, dynamic> toJson() => _$InsertLicenseRequestToJson(this);

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
      ];
}
