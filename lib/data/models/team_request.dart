// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'team_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamRequest {
  /// Returns a new [TeamRequest] instance.
  TeamRequest({
    this.accountId,
    this.name,
    this.contract,
  });

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamRequest &&
          other.accountId == accountId &&
          other.name == name &&
          other.contract == contract;

  @override
  int get hashCode => accountId.hashCode + name.hashCode + contract.hashCode;

  factory TeamRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TeamRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
