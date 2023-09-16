// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'service_car_detail_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServiceCarDetailRequest extends Equatable {
  /// Returns a new [ServiceCarDetailRequest] instance.
  ServiceCarDetailRequest({
    this.serviceSeq,
  });

  factory ServiceCarDetailRequest.fromJson(Map<String, dynamic> json) =>
      _$ServiceCarDetailRequestFromJson(json);

  @JsonKey(name: 'serviceSeq', required: false, includeIfNull: false)
  final String? serviceSeq;

  Map<String, dynamic> toJson() => _$ServiceCarDetailRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [serviceSeq];
}
