// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'car_history_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CarHistoryDTO {
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

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'terminalSeq', required: false, includeIfNull: false)
  final int? terminalSeq;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'lat', required: false, includeIfNull: false)
  final String? lat;

  @JsonKey(name: r'lon', required: false, includeIfNull: false)
  final String? lon;

  @JsonKey(name: r'volt', required: false, includeIfNull: false)
  final int? volt;

  @JsonKey(name: r'fuel', required: false, includeIfNull: false)
  final int? fuel;

  @JsonKey(name: r'flDoorClose', required: false, includeIfNull: false)
  final String? flDoorClose;

  @JsonKey(name: r'frDoorClose', required: false, includeIfNull: false)
  final String? frDoorClose;

  @JsonKey(name: r'blDoorClose', required: false, includeIfNull: false)
  final String? blDoorClose;

  @JsonKey(name: r'brDoorClose', required: false, includeIfNull: false)
  final String? brDoorClose;

  @JsonKey(name: r'distance', required: false, includeIfNull: false)
  final int? distance;

  @JsonKey(name: r'speed', required: false, includeIfNull: false)
  final int? speed;

  @JsonKey(name: r'flDoorLock', required: false, includeIfNull: false)
  final String? flDoorLock;

  @JsonKey(name: r'frDoorLock', required: false, includeIfNull: false)
  final String? frDoorLock;

  @JsonKey(name: r'blDoorLock', required: false, includeIfNull: false)
  final String? blDoorLock;

  @JsonKey(name: r'brDoorLock', required: false, includeIfNull: false)
  final String? brDoorLock;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final String? createdAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CarHistoryDTO &&
          other.seq == seq &&
          other.terminalSeq == terminalSeq &&
          other.carNum == carNum &&
          other.status == status &&
          other.lat == lat &&
          other.lon == lon &&
          other.volt == volt &&
          other.fuel == fuel &&
          other.flDoorClose == flDoorClose &&
          other.frDoorClose == frDoorClose &&
          other.blDoorClose == blDoorClose &&
          other.brDoorClose == brDoorClose &&
          other.distance == distance &&
          other.speed == speed &&
          other.flDoorLock == flDoorLock &&
          other.frDoorLock == frDoorLock &&
          other.blDoorLock == blDoorLock &&
          other.brDoorLock == brDoorLock &&
          other.createdAt == createdAt;

  @override
  int get hashCode =>
      seq.hashCode +
      terminalSeq.hashCode +
      carNum.hashCode +
      status.hashCode +
      lat.hashCode +
      lon.hashCode +
      volt.hashCode +
      fuel.hashCode +
      flDoorClose.hashCode +
      frDoorClose.hashCode +
      blDoorClose.hashCode +
      brDoorClose.hashCode +
      distance.hashCode +
      speed.hashCode +
      flDoorLock.hashCode +
      frDoorLock.hashCode +
      blDoorLock.hashCode +
      brDoorLock.hashCode +
      createdAt.hashCode;

  factory CarHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$CarHistoryDTOFromJson(json);

  Map<String, dynamic> toJson() => _$CarHistoryDTOToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
