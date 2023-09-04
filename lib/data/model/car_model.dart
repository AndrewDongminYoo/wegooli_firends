// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'car_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CarModel {
  /// Returns a new [CarModel] instance.
  CarModel({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.carNum,
    this.model,
    this.status,
    this.seats,
    this.fuelType,
    this.segment,
    this.fee,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'seats', required: false, includeIfNull: false)
  final int? seats;

  @JsonKey(name: r'fuelType', required: false, includeIfNull: false)
  final String? fuelType;

  @JsonKey(name: r'segment', required: false, includeIfNull: false)
  final String? segment;

  @JsonKey(name: r'fee', required: false, includeIfNull: false)
  final int? fee;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarModel &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.carNum == carNum &&
          other.model == model &&
          other.status == status &&
          other.seats == seats &&
          other.fuelType == fuelType &&
          other.segment == segment &&
          other.fee == fee;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      carNum.hashCode +
      model.hashCode +
      status.hashCode +
      seats.hashCode +
      fuelType.hashCode +
      segment.hashCode +
      fee.hashCode;

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
