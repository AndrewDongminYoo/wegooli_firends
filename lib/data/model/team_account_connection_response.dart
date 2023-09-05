// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import '/data/model/team_account_model.dart';

part 'team_account_connection_response.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamAccountConnectionResponse extends Equatable {
  /// Returns a new [TeamAccountConnectionResponse] instance.
  TeamAccountConnectionResponse({
    this.teamSeq,
    this.account,
  });

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: r'account', required: false, includeIfNull: false)
  final List<TeamAccountModel>? account;

  factory TeamAccountConnectionResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountConnectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamAccountConnectionResponseToJson(this);

  @override
  bool get stringify => true;
}
