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
  });

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'date', required: false, includeIfNull: false)
  final String? date;

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  factory SubmitWithdrawalModel.fromJson(Map<String, dynamic> json) =>
      _$SubmitWithdrawalModelFromJson(json);

  Map<String, dynamic> toJson() => _$SubmitWithdrawalModelToJson(this);

  @override
  List<Object?> get props {
    return [
      accountId,
      date,
      teamSeq,
    ];
  }
}
