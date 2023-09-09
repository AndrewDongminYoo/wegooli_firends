// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'insert_car_management_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InsertCarManagementRequest {
  /// Returns a new [InsertCarManagementRequest] instance.
  InsertCarManagementRequest({
    this.seq,
    this.carNum,
    this.oilCheckDate,
    this.tireCheckDate,
    this.batteryStatus,
    this.createdBy,
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InsertCarManagementRequest &&
          other.seq == seq &&
          other.carNum == carNum &&
          other.oilCheckDate == oilCheckDate &&
          other.tireCheckDate == tireCheckDate &&
          other.batteryStatus == batteryStatus &&
          other.createdBy == createdBy;

  @override
  int get hashCode =>
      seq.hashCode +
      carNum.hashCode +
      oilCheckDate.hashCode +
      tireCheckDate.hashCode +
      batteryStatus.hashCode +
      createdBy.hashCode;

  factory InsertCarManagementRequest.fromJson(Map<String, dynamic> json) =>
      _$InsertCarManagementRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InsertCarManagementRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
