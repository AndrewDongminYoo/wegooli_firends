// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'result.dart';

part 'api_response_object.g.dart';

@JsonSerializable()
class ApiResponseObject extends Equatable {
  const ApiResponseObject({this.result, this.resultCode, this.resultMsg});

  final Result? result;
  final int? resultCode;
  final dynamic resultMsg;

  factory ApiResponseObject.fromJson(Map<String, dynamic> json) {
    return _$ApiResponseObjectFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApiResponseObjectToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [result, resultCode, resultMsg];
}
