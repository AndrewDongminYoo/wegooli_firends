// ignore_for_file: unused_element

// 📦 Package imports:
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
class TeamAccountConnectionResponse {
  /// Returns a new [TeamAccountConnectionResponse] instance.
  TeamAccountConnectionResponse({
    this.teamSeq,
    this.account,
  });

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: r'account', required: false, includeIfNull: false)
  final List<TeamAccountModel>? account;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamAccountConnectionResponse &&
          other.teamSeq == teamSeq &&
          other.account == account;

  @override
  int get hashCode => teamSeq.hashCode + account.hashCode;

  factory TeamAccountConnectionResponse.fromJson(Map<String, dynamic> json) =>
      _$TeamAccountConnectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeamAccountConnectionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
