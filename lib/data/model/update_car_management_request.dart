// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'update_car_management_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateCarManagementRequest {
  /// Returns a new [UpdateCarManagementRequest] instance.
  UpdateCarManagementRequest({
    this.seq,
    this.carNum,
    this.oilCheckDate,
    this.tireCheckDate,
    this.batteryStatus,
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UpdateCarManagementRequest &&
          other.seq == seq &&
          other.carNum == carNum &&
          other.oilCheckDate == oilCheckDate &&
          other.tireCheckDate == tireCheckDate &&
          other.batteryStatus == batteryStatus;

  @override
  int get hashCode =>
      seq.hashCode +
      carNum.hashCode +
      oilCheckDate.hashCode +
      tireCheckDate.hashCode +
      batteryStatus.hashCode;

  factory UpdateCarManagementRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateCarManagementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateCarManagementRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
