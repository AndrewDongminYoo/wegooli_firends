// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'operator_team_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorTeamRequest extends Equatable {
  /// Returns a new [OperatorTeamRequest] instance.
  OperatorTeamRequest({
    this.startAt,
    this.endAt,
    this.contract,
    this.address,
    this.name,
  });

  factory OperatorTeamRequest.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamRequestFromJson(json);

  @JsonKey(name: 'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: 'endAt', required: false, includeIfNull: false)
  final String? endAt;

  @JsonKey(name: 'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: 'address', required: false, includeIfNull: false)
  final String? address;

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  Map<String, dynamic> toJson() => _$OperatorTeamRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        startAt,
        endAt,
        contract,
        address,
        name,
      ];
}
