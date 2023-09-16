// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'car_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CarModel extends Equatable {
  /// Returns a new [CarModel] instance.
  CarModel({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.carNum,
    this.model,
    this.carImage,
    this.status,
    this.seats,
    this.fuelType,
    this.segment,
    this.fee,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) =>
      _$CarModelFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: 'carImage', required: false, includeIfNull: false)
  final String? carImage;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: 'seats', required: false, includeIfNull: false)
  final int? seats;

  @JsonKey(name: 'fuelType', required: false, includeIfNull: false)
  final String? fuelType;

  @JsonKey(name: 'segment', required: false, includeIfNull: false)
  final String? segment;

  @JsonKey(name: 'fee', required: false, includeIfNull: false)
  final int? fee;

  Map<String, dynamic> toJson() => _$CarModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        delYn,
        createdAt,
        updatedAt,
        carNum,
        model,
        carImage,
        status,
        seats,
        fuelType,
        segment,
        fee,
      ];
}
