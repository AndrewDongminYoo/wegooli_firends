// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'license_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseModel extends Equatable {
  /// Returns a new [LicenseModel] instance.
  LicenseModel({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
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

  factory LicenseModel.fromJson(Map<String, dynamic> json) =>
      _$LicenseModelFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

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

  Map<String, dynamic> toJson() => _$LicenseModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        delYn,
        createdAt,
        updatedAt,
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
