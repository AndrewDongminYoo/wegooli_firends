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

  factory SelectCarManagementRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectCarManagementRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'oilCheckDate', required: false, includeIfNull: false)
  final String? oilCheckDate;

  @JsonKey(name: 'tireCheckDate', required: false, includeIfNull: false)
  final String? tireCheckDate;

  @JsonKey(name: 'batteryStatus', required: false, includeIfNull: false)
  final String? batteryStatus;

  @JsonKey(name: 'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  Map<String, dynamic> toJson() => _$SelectCarManagementRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
