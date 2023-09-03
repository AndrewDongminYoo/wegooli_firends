// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'cancel_request_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CancelRequestModel {
  /// Returns a new [CancelRequestModel] instance.
  CancelRequestModel({
    this.cancelReason,
  });

  @JsonKey(name: r'cancelReason', required: false, includeIfNull: false)
  final String? cancelReason;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CancelRequestModel && other.cancelReason == cancelReason;

  @override
  int get hashCode => cancelReason.hashCode;

  factory CancelRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CancelRequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$CancelRequestModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
