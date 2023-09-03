// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'share_service_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ShareServiceRequest {
  /// Returns a new [ShareServiceRequest] instance.
  ShareServiceRequest({
    this.startMonthlyAmount,
    this.endMonthlyAmount,
  });

  @JsonKey(name: r'startMonthlyAmount', required: false, includeIfNull: false)
  final String? startMonthlyAmount;

  @JsonKey(name: r'endMonthlyAmount', required: false, includeIfNull: false)
  final String? endMonthlyAmount;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ShareServiceRequest &&
          other.startMonthlyAmount == startMonthlyAmount &&
          other.endMonthlyAmount == endMonthlyAmount;

  @override
  int get hashCode => startMonthlyAmount.hashCode + endMonthlyAmount.hashCode;

  factory ShareServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ShareServiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ShareServiceRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
