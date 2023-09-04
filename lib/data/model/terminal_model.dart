// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'terminal_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TerminalModel {
  /// Returns a new [TerminalModel] instance.
  TerminalModel({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.carNum,
    this.phoneNumber,
    this.status,
    this.seats,
    this.model,
    this.volt,
    this.fuelType,
    this.fuel,
    this.segment,
    this.accountId,
    this.teamSeq,
    this.carImage,
    this.carNickName,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'seats', required: false, includeIfNull: false)
  final int? seats;

  @JsonKey(name: r'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: r'volt', required: false, includeIfNull: false)
  final String? volt;

  @JsonKey(name: r'fuelType', required: false, includeIfNull: false)
  final String? fuelType;

  @JsonKey(name: r'fuel', required: false, includeIfNull: false)
  final String? fuel;

  @JsonKey(name: r'segment', required: false, includeIfNull: false)
  final String? segment;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: r'carImage', required: false, includeIfNull: false)
  final String? carImage;

  @JsonKey(name: r'carNickName', required: false, includeIfNull: false)
  final String? carNickName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TerminalModel &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.carNum == carNum &&
          other.phoneNumber == phoneNumber &&
          other.status == status &&
          other.seats == seats &&
          other.model == model &&
          other.volt == volt &&
          other.fuelType == fuelType &&
          other.fuel == fuel &&
          other.segment == segment &&
          other.accountId == accountId &&
          other.teamSeq == teamSeq &&
          other.carImage == carImage &&
          other.carNickName == carNickName;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      carNum.hashCode +
      phoneNumber.hashCode +
      status.hashCode +
      seats.hashCode +
      model.hashCode +
      volt.hashCode +
      fuelType.hashCode +
      fuel.hashCode +
      segment.hashCode +
      accountId.hashCode +
      teamSeq.hashCode +
      carImage.hashCode +
      carNickName.hashCode;

  factory TerminalModel.fromJson(Map<String, dynamic> json) =>
      _$TerminalModelFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalModelToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
