// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'insert_car_management_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InsertCarManagementRequest extends Equatable {
  /// Returns a new [InsertCarManagementRequest] instance.
  InsertCarManagementRequest({
    this.seq,
    this.carNum,
    this.oilCheckDate,
    this.tireCheckDate,
    this.batteryStatus,
    this.createdBy,
  });

  factory InsertCarManagementRequest.fromJson(Map<String, dynamic> json) =>
      _$InsertCarManagementRequestFromJson(json);

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

  Map<String, dynamic> toJson() => _$InsertCarManagementRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [seq, carNum, oilCheckDate, tireCheckDate, batteryStatus, createdBy];
}
