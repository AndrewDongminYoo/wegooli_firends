// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'submit_withdrawal_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SubmitWithdrawalModel extends Equatable {
  /// Returns a new [SubmitWithdrawalModel] instance.
  SubmitWithdrawalModel({
    this.seq,
    this.accountId,
    this.leavedAt,
    this.teamSeq,
  });

  factory SubmitWithdrawalModel.fromJson(Map<String, dynamic> json) =>
      _$SubmitWithdrawalModelFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'leavedAt', required: false, includeIfNull: false)
  final String? leavedAt;

  @JsonKey(name: 'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  Map<String, dynamic> toJson() => _$SubmitWithdrawalModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [seq, accountId, leavedAt, teamSeq];
}
