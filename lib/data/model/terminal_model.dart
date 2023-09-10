// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'terminal_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TerminalModel extends Equatable {
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
    this.carNickname,
  });

  factory TerminalModel.fromJson(Map<String, dynamic> json) =>
      _$TerminalModelFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: 'seats', required: false, includeIfNull: false)
  final int? seats;

  @JsonKey(name: 'model', required: false, includeIfNull: false)
  final String? model;

  @JsonKey(name: 'volt', required: false, includeIfNull: false)
  final String? volt;

  @JsonKey(name: 'fuelType', required: false, includeIfNull: false)
  final String? fuelType;

  @JsonKey(name: 'fuel', required: false, includeIfNull: false)
  final String? fuel;

  @JsonKey(name: 'segment', required: false, includeIfNull: false)
  final String? segment;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: 'carImage', required: false, includeIfNull: false)
  final String? carImage;

  @JsonKey(name: 'carNickname', required: false, includeIfNull: false)
  final String? carNickname;

  Map<String, dynamic> toJson() => _$TerminalModelToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        delYn,
        createdAt,
        updatedAt,
        carNum,
        phoneNumber,
        status,
        seats,
        model,
        volt,
        fuelType,
        fuel,
        segment,
        accountId,
        teamSeq,
        carImage,
        carNickname,
      ];
}
