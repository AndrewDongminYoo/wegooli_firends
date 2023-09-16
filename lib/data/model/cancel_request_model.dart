// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cancel_request_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CancelRequestModel extends Equatable {
  /// Returns a new [CancelRequestModel] instance.
  CancelRequestModel({
    this.cancelReason,
  });

  factory CancelRequestModel.fromJson(Map<String, dynamic> json) =>
      _$CancelRequestModelFromJson(json);

  @JsonKey(name: 'cancelReason', required: false, includeIfNull: false)
  final String? cancelReason;

  Map<String, dynamic> toJson() => _$CancelRequestModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [cancelReason];
}
