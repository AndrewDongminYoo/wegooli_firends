// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamRequest extends Equatable {
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

  factory TeamRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TeamRequestToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [accountId, name, contract];
}
