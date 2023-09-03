// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'service_car_detail_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServiceCarDetailRequest {
  /// Returns a new [ServiceCarDetailRequest] instance.
  ServiceCarDetailRequest({
    this.serviceSeq,
  });

  @JsonKey(name: r'serviceSeq', required: false, includeIfNull: false)
  final String? serviceSeq;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ServiceCarDetailRequest && other.serviceSeq == serviceSeq;

  @override
  int get hashCode => serviceSeq.hashCode;

  factory ServiceCarDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceCarDetailRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceCarDetailRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
