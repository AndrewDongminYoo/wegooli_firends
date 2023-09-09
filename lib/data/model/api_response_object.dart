// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'result.dart';

part 'api_response_object.g.dart';

@JsonSerializable()
class ApiResponseObject extends Equatable {
  const ApiResponseObject({
    this.result,
    this.resultCode,
    this.resultMsg,
    this.failMsg,
    this.userInfo,
  });

  final Result? result;
  final int? resultCode;
  final dynamic resultMsg;
  final String? failMsg;
  final dynamic userInfo;

  factory ApiResponseObject.fromJson(Map<String, dynamic> json) {
    return _$ApiResponseObjectFromJson(json);
  }

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
