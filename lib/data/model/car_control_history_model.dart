// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'car_control_history_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CarControlHistoryModel extends Equatable {
  /// Returns a new [CarControlHistoryModel] instance.
  const CarControlHistoryModel({
    this.seq,
    this.createdAt,
    this.terminalSeq,
    this.carNum,
    this.accountId,
    this.context,
    this.successYn,
  });

  factory CarControlHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$CarControlHistoryModelFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'terminalSeq', required: false, includeIfNull: false)
  final int? terminalSeq;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'context', required: false, includeIfNull: false)
  final String? context;

  @JsonKey(name: 'successYn', required: false, includeIfNull: false)
  final String? successYn;

  Map<String, dynamic> toJson() => _$CarControlHistoryModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        createdAt,
        terminalSeq,
        carNum,
        accountId,
        context,
        successYn,
      ];
}
