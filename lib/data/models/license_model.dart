// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'license_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseModel {
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

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LicenseModel &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.memberSeq == memberSeq &&
          other.koreanYn == koreanYn &&
          other.licenseClass == licenseClass &&
          other.licenseArea == licenseArea &&
          other.licenseYear == licenseYear &&
          other.licenseNum == licenseNum &&
          other.expiredDate == expiredDate &&
          other.issuedDate == issuedDate &&
          other.signature == signature;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      memberSeq.hashCode +
      koreanYn.hashCode +
      licenseClass.hashCode +
      licenseArea.hashCode +
      licenseYear.hashCode +
      licenseNum.hashCode +
      expiredDate.hashCode +
      issuedDate.hashCode +
      signature.hashCode;

  factory LicenseModel.fromJson(Map<String, dynamic> json) =>
      _$LicenseModelFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
