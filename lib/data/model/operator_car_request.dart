// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'operator_car_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorCarRequest {
  /// Returns a new [OperatorCarRequest] instance.
  OperatorCarRequest({
    this.contract,
    this.address,
    this.carNum,
  });

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: r'address', required: false, includeIfNull: false)
  final String? address;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorCarRequest &&
          other.contract == contract &&
          other.address == address &&
          other.carNum == carNum;

  @override
  int get hashCode => contract.hashCode + address.hashCode + carNum.hashCode;

  factory OperatorCarRequest.fromJson(Map<String, dynamic> json) =>
      _$OperatorCarRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorCarRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
