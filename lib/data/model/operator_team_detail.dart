// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import '/data/model/operator_team_account_detail.dart';

part 'operator_team_detail.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class OperatorTeamDetail extends Equatable {
  /// Returns a new [OperatorTeamDetail] instance.
  const OperatorTeamDetail({
    this.model,
    this.fee,
    this.contactAt,
    this.accountList,
  });

  factory OperatorTeamDetail.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamDetailFromJson(json);

  @JsonKey(name: 'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: 'fee', required: false, includeIfNull: false)
  final String? fee;

  @JsonKey(name: 'contactAt', required: false, includeIfNull: false)
  final String? contactAt;

  @JsonKey(name: 'accountList', required: false, includeIfNull: false)
  final List<OperatorTeamAccountDetail>? accountList;

  Map<String, dynamic> toJson() => _$OperatorTeamDetailToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [model, fee, contactAt, accountList];
}
