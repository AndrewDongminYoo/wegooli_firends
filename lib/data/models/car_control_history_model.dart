// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'car_control_history_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CarControlHistoryModel {
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarControlHistoryModel &&
          other.seq == seq &&
          other.createdAt == createdAt &&
          other.terminalSeq == terminalSeq &&
          other.carNum == carNum &&
          other.accountId == accountId &&
          other.context == context &&
          other.successYn == successYn;

  @override
  int get hashCode =>
      seq.hashCode +
      createdAt.hashCode +
      terminalSeq.hashCode +
      carNum.hashCode +
      accountId.hashCode +
      context.hashCode +
      successYn.hashCode;

  factory CarControlHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$CarControlHistoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarControlHistoryModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
