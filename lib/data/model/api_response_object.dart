// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response_object.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ApiResponseObject extends Equatable {
  /// Returns a new [ApiResponseObject] instance.
  ApiResponseObject({
    this.result,
    this.resultCode,
    this.resultMsg,
  });

  @JsonKey(name: r'result', required: false, includeIfNull: false)
  final Object? result;

  @JsonKey(name: r'resultCode', required: false, includeIfNull: false)
  final int? resultCode;

  @JsonKey(name: r'resultMsg', required: false, includeIfNull: false)
  final String? resultMsg;

  factory ApiResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseObjectFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResponseObjectToJson(this);

  @override
  bool get stringify => true;
}
