// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'car_history_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CarHistoryDTO extends Equatable {
  /// Returns a new [CarHistoryDTO] instance.
  CarHistoryDTO({
    this.seq,
    this.terminalSeq,
    this.carNum,
    this.status,
    this.lat,
    this.lon,
    this.volt,
    this.fuel,
    this.flDoorClose,
    this.frDoorClose,
    this.blDoorClose,
    this.brDoorClose,
    this.distance,
    this.speed,
    this.flDoorLock,
    this.frDoorLock,
    this.blDoorLock,
    this.brDoorLock,
    this.createdAt,
  });

  factory CarHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CarHistoryDTOFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'terminalSeq', required: false, includeIfNull: false)
  final int? terminalSeq;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: 'lat', required: false, includeIfNull: false)
  final String? lat;

  @JsonKey(name: 'lon', required: false, includeIfNull: false)
  final String? lon;

  @JsonKey(name: 'volt', required: false, includeIfNull: false)
  final int? volt;

  @JsonKey(name: 'fuel', required: false, includeIfNull: false)
  final int? fuel;

  @JsonKey(name: 'flDoorClose', required: false, includeIfNull: false)
  final String? flDoorClose;

  @JsonKey(name: 'frDoorClose', required: false, includeIfNull: false)
  final String? frDoorClose;

  @JsonKey(name: 'blDoorClose', required: false, includeIfNull: false)
  final String? blDoorClose;

  @JsonKey(name: 'brDoorClose', required: false, includeIfNull: false)
  final String? brDoorClose;

  @JsonKey(name: 'distance', required: false, includeIfNull: false)
  final int? distance;

  @JsonKey(name: 'speed', required: false, includeIfNull: false)
  final int? speed;

  @JsonKey(name: 'flDoorLock', required: false, includeIfNull: false)
  final String? flDoorLock;

  @JsonKey(name: 'frDoorLock', required: false, includeIfNull: false)
  final String? frDoorLock;

  @JsonKey(name: 'blDoorLock', required: false, includeIfNull: false)
  final String? blDoorLock;

  @JsonKey(name: 'brDoorLock', required: false, includeIfNull: false)
  final String? brDoorLock;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  Map<String, dynamic> toJson() => _$CarHistoryDTOToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        terminalSeq,
        carNum,
        status,
        lat,
        lon,
        volt,
        fuel,
        flDoorClose,
        frDoorClose,
        blDoorClose,
        brDoorClose,
        distance,
        speed,
        flDoorLock,
        frDoorLock,
        blDoorLock,
        brDoorLock,
        createdAt,
      ];
}
