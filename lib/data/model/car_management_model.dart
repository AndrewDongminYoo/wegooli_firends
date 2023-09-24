// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'car_management_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CarManagementModel extends Equatable {
  /// Returns a new [CarManagementModel] instance.
  const CarManagementModel({
    this.seq,
    this.carNum,
    this.oilCheckDate,
    this.tireCheckDate,
    this.batteryStatus,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
  });

  factory CarManagementModel.fromJson(Map<String, dynamic> json) =>
      _$CarManagementModelFromJson(json);

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

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$CarManagementModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        carNum,
        oilCheckDate,
        tireCheckDate,
        batteryStatus,
        createdBy,
        createdAt,
        updatedAt,
      ];
}
