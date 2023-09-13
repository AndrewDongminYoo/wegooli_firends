// ignore_for_file: unused_element

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
    this.accountId,
    this.date,
    this.teamSeq,
    this.seq,
  });

  factory SubmitWithdrawalModel.fromJson(Map<String, dynamic> json) =>
      _$SubmitWithdrawalModelFromJson(json);

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'date', required: false, includeIfNull: false)
  final String? date;

  @JsonKey(name: 'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @override
  List<Object?> get props => [
        accountId,
        date,
        teamSeq,
        seq,
      ];

  Map<String, dynamic> toJson() => _$SubmitWithdrawalModelToJson(this);

  @override
  bool get stringify => true;
}
