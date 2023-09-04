// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'result.dart';

part 'auth_api_response.g.dart';

@JsonSerializable()
class AuthApiResponse extends Equatable {
  final Result? result;
  final int? resultCode;
  final dynamic resultMsg;

  const AuthApiResponse({this.result, this.resultCode, this.resultMsg});

  factory AuthApiResponse.fromJson(Map<String, dynamic> json) {
    return _$AuthApiResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AuthApiResponseToJson(this);

  AuthApiResponse copyWith({
    Result? result,
    int? resultCode,
    dynamic resultMsg,
  }) {
    return AuthApiResponse(
      result: result ?? this.result,
      resultCode: resultCode ?? this.resultCode,
      resultMsg: resultMsg ?? this.resultMsg,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [result, resultCode, resultMsg];
}
