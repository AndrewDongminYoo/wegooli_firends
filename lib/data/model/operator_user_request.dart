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

  @JsonKey(name: r'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: r'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: r'address', required: false, includeIfNull: false)
  final String? address;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'content', required: false, includeIfNull: false)
  final String? content;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorUserRequest &&
          other.startAt == startAt &&
          other.endAt == endAt &&
          other.contract == contract &&
          other.address == address &&
          other.accountId == accountId &&
          other.content == content;

  @override
  int get hashCode =>
      startAt.hashCode +
      endAt.hashCode +
      contract.hashCode +
      address.hashCode +
      accountId.hashCode +
      content.hashCode;

  factory OperatorUserRequest.fromJson(Map<String, dynamic> json) =>
      _$OperatorUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorUserRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
