// ignore_for_file: unused_element

// 📦 Package imports:
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
class OperatorTeamDetail {
  /// Returns a new [OperatorTeamDetail] instance.
  OperatorTeamDetail({
    this.model,
    this.fee,
    this.contactAt,
    this.accountList,
  });

  @JsonKey(name: r'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: r'fee', required: false, includeIfNull: false)
  final String? fee;

  @JsonKey(name: r'contactAt', required: false, includeIfNull: false)
  final String? contactAt;

  @JsonKey(name: r'accountList', required: false, includeIfNull: false)
  final List<OperatorTeamAccountDetail>? accountList;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OperatorTeamDetail &&
          other.model == model &&
          other.fee == fee &&
          other.contactAt == contactAt &&
          other.accountList == accountList;

  @override
  int get hashCode =>
      model.hashCode + fee.hashCode + contactAt.hashCode + accountList.hashCode;

  factory OperatorTeamDetail.fromJson(Map<String, dynamic> json) =>
      _$OperatorTeamDetailFromJson(json);

  Map<String, dynamic> toJson() => _$OperatorTeamDetailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
