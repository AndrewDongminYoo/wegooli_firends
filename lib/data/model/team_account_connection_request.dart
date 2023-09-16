// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_account_connection_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamAccountConnectionRequest extends Equatable {
  /// Returns a new [TeamAccountConnectionRequest] instance.
  TeamAccountConnectionRequest({
    this.teamSeq,
    this.accountId,
    this.joinedAt,
    this.leavedAt,
  });

  factory TeamAccountConnectionRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountConnectionRequestFromJson(json);

  @JsonKey(name: 'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'joinedAt', required: false, includeIfNull: false)
  final String? joinedAt;

  @JsonKey(name: 'leavedAt', required: false, includeIfNull: false)
  final String? leavedAt;

  Map<String, dynamic> toJson() => _$TeamAccountConnectionRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [teamSeq, accountId, joinedAt, leavedAt];
}
