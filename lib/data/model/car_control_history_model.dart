// ignore_for_file: unused_element

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
  CarControlHistoryModel({
    this.seq,
    this.createdAt,
    this.terminalSeq,
    this.carNum,
    this.accountId,
    this.context,
    this.successYn,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'terminalSeq', required: false, includeIfNull: false)
  final int? terminalSeq;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'context', required: false, includeIfNull: false)
  final String? context;

  @JsonKey(name: r'successYn', required: false, includeIfNull: false)
  final String? successYn;

  factory CarControlHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$CarControlHistoryModelFromJson(json);

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
