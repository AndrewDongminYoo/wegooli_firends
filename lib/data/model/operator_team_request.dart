// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'operator_team_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorTeamRequest {
  /// Returns a new [OperatorTeamRequest] instance.
  OperatorTeamRequest({
    this.startAt,
    this.endAt,
    this.contract,
    this.address,
    this.name,
  });

  @JsonKey(name: r'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: r'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: r'address', required: false, includeIfNull: false)
  final String? address;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorTeamRequest &&
          other.startAt == startAt &&
          other.endAt == endAt &&
          other.contract == contract &&
          other.address == address &&
          other.name == name;

  @override
  int get hashCode =>
      startAt.hashCode +
      endAt.hashCode +
      contract.hashCode +
      address.hashCode +
      name.hashCode;

  factory OperatorTeamRequest.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorTeamRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
