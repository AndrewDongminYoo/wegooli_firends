// ignore_for_file: unused_element

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
  CarManagementModel({
    this.seq,
    this.carNum,
    this.oilCheckDate,
    this.tireCheckDate,
    this.batteryStatus,
    this.createdBy,
    this.createdAt,
    this.updatedAt,
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

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  factory CarManagementModel.fromJson(Map<String, dynamic> json) =>
      _$CarManagementModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarManagementModelToJson(this);

  @override
  List<Object?> get props => [
        'seq',
        'carNum',
        'oilCheckDate',
        'tireCheckDate',
        'batteryStatus',
        'createdBy',
        'createdAt',
        'updatedAt'
      ];

  @override
  bool? get stringify => true;
}
