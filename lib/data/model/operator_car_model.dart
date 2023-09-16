// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operator_car_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorCarModel extends Equatable {
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

  factory OperatorCarModel.fromJson(Map<String, dynamic> json) =>
      _$OperatorCarModelFromJson(json);

  @JsonKey(name: 'carModel', required: false, includeIfNull: false)
  final String? carModel;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: 'fuel', required: false, includeIfNull: false)
  final int? fuel;

  @JsonKey(name: 'distance', required: false, includeIfNull: false)
  final int? distance;

  @JsonKey(name: 'volt', required: false, includeIfNull: false)
  final double? volt;

  Map<String, dynamic> toJson() => _$OperatorCarModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        carModel,
        accountId,
        add1,
        add2,
        carNum,
        contract,
        status,
        fuel,
        distance,
        volt,
      ];
}
