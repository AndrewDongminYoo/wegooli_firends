// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import 'result.dart';

part 'auth_api_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AuthApiResponse extends Equatable {
  @JsonKey(name: r'result', required: false, includeIfNull: false)
  final Result? result;
  @JsonKey(name: r'resultCode', required: false, includeIfNull: false)
  final int? resultCode;
  @JsonKey(name: r'resultMsg', required: false, includeIfNull: false)
  final dynamic resultMsg;

  /// Returns a new [AuthApiResponse] instance.
  AuthApiResponse({
    this.result,
    this.resultCode,
    this.resultMsg,
  });
  factory AuthApiResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthApiResponseFromJson(json);

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
