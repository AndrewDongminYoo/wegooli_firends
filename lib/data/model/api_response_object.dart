// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'result.dart';

part 'api_response_object.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: true,
  explicitToJson: true,
)
class ApiResponseObject extends Equatable {
  /// Returns a new [ApiResponseObject] instance.
  const ApiResponseObject({
    this.result,
    this.resultCode,
    this.resultMsg,
    this.failMsg,
    this.userInfo,
  });

  factory ApiResponseObject.fromJson(Map<String, dynamic> json) =>
      _$ApiResponseObjectFromJson(json);

  @JsonKey(name: 'result', required: false, includeIfNull: false)
  final Result? result;
  @JsonKey(name: 'resultCode', required: false, includeIfNull: false)
  final int? resultCode;
  @JsonKey(name: 'resultMsg', required: false, includeIfNull: false)
  final dynamic resultMsg;
  @JsonKey(name: 'failMsg', required: false, includeIfNull: false)
  final String? failMsg;
  @JsonKey(name: 'userInfo', required: false, includeIfNull: false)
  final dynamic userInfo;

  Map<String, dynamic> toJson() => _$ApiResponseObjectToJson(this);

  ApiResponseObject copyWith({
    Result? result,
    int? resultCode,
    dynamic resultMsg,
    String? failMsg,
    dynamic userInfo,
  }) {
    return ApiResponseObject(
      result: result ?? this.result,
      resultCode: resultCode ?? this.resultCode,
      resultMsg: resultMsg ?? this.resultMsg,
      failMsg: failMsg ?? this.failMsg,
      userInfo: userInfo ?? this.userInfo,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      result,
      resultCode,
      resultMsg,
      failMsg,
      userInfo,
    ];
  }
}
