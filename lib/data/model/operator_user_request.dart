// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'operator_user_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorUserRequest {
  /// Returns a new [OperatorUserRequest] instance.
  OperatorUserRequest({
    this.startAt,
    this.endAt,
    this.contract,
    this.address,
    this.accountId,
    this.content,
  });

  factory OperatorUserRequest.fromJson(Map<String, dynamic> json) =>
      _$OperatorUserRequestFromJson(json);

  @JsonKey(name: 'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: 'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: 'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: 'address', required: false, includeIfNull: false)
  final String? address;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  Map<String, dynamic> toJson() => _$OperatorUserRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
