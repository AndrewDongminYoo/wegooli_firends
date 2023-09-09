// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'select_car_management_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectCarManagementRequest {
  /// Returns a new [SelectCarManagementRequest] instance.
  SelectCarManagementRequest({
    this.seq,
    this.carNum,
    this.oilCheckDate,
    this.tireCheckDate,
    this.batteryStatus,
    this.createdBy,
    this.createdAt,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'oilCheckDate', required: false, includeIfNull: false)
  final String? oilCheckDate;

  @JsonKey(name: r'tireCheckDate', required: false, includeIfNull: false)
  final String? tireCheckDate;

  @JsonKey(name: r'batteryStatus', required: false, includeIfNull: false)
  final String? batteryStatus;

  @JsonKey(name: r'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SelectCarManagementRequest &&
          other.seq == seq &&
          other.carNum == carNum &&
          other.oilCheckDate == oilCheckDate &&
          other.tireCheckDate == tireCheckDate &&
          other.batteryStatus == batteryStatus &&
          other.createdBy == createdBy &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      seq.hashCode +
      carNum.hashCode +
      oilCheckDate.hashCode +
      tireCheckDate.hashCode +
      batteryStatus.hashCode +
      createdBy.hashCode +
      createdAt.hashCode;

  factory SelectCarManagementRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectCarManagementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SelectCarManagementRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
