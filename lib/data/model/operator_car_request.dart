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

  factory OperatorCarRequest.fromJson(Map<String, dynamic> json) =>
      _$OperatorCarRequestFromJson(json);

  @JsonKey(name: 'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: 'address', required: false, includeIfNull: false)
  final String? address;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  Map<String, dynamic> toJson() => _$OperatorCarRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
