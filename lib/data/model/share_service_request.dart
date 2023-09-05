// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'share_service_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ShareServiceRequest extends Equatable {
  /// Returns a new [ShareServiceRequest] instance.
  ShareServiceRequest({
    this.startMonthlyAmount,
    this.endMonthlyAmount,
  });

  @JsonKey(name: r'startMonthlyAmount', required: false, includeIfNull: false)
  final String? startMonthlyAmount;

  @JsonKey(name: r'endMonthlyAmount', required: false, includeIfNull: false)
  final String? endMonthlyAmount;

  factory ShareServiceRequest.fromJson(Map<String, dynamic> json) =>
      _$ShareServiceRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ShareServiceRequestToJson(this);

  @override
  bool get stringify => true;
}
