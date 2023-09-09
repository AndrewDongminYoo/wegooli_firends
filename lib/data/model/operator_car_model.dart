// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'operator_car_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorCarModel {
  /// Returns a new [OperatorCarModel] instance.
  OperatorCarModel({
    this.carModel,
    this.accountId,
    this.add1,
    this.add2,
    this.carNum,
    this.contract,
    this.status,
    this.fuel,
    this.distance,
    this.volt,
  });

  @JsonKey(name: r'carModel', required: false, includeIfNull: false)
  final String? carModel;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'fuel', required: false, includeIfNull: false)
  final int? fuel;

  @JsonKey(name: r'distance', required: false, includeIfNull: false)
  final int? distance;

  @JsonKey(name: r'volt', required: false, includeIfNull: false)
  final double? volt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorCarModel &&
          other.carModel == carModel &&
          other.accountId == accountId &&
          other.add1 == add1 &&
          other.add2 == add2 &&
          other.carNum == carNum &&
          other.contract == contract &&
          other.status == status &&
          other.fuel == fuel &&
          other.distance == distance &&
          other.volt == volt;

  @override
  int get hashCode =>
      carModel.hashCode +
      accountId.hashCode +
      add1.hashCode +
      add2.hashCode +
      carNum.hashCode +
      contract.hashCode +
      status.hashCode +
      fuel.hashCode +
      distance.hashCode +
      volt.hashCode;

  factory OperatorCarModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorCarModelFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorCarModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
