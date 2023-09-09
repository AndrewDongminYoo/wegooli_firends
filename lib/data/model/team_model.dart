// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamModel extends Equatable {
  /// Returns a new [TeamModel] instance.
  TeamModel({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.accountId,
    this.teamCode,
    this.name,
    this.contract,
    this.carNickname,
    this.lat,
    this.lon,
    this.add1,
    this.add2,
    this.zipCode,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'teamCode', required: false, includeIfNull: false)
  final String? teamCode;

  @JsonKey(name: r'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: r'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: r'carNickname', required: false, includeIfNull: false)
  final String? carNickname;

  @JsonKey(name: r'lat', required: false, includeIfNull: false)
  final String? lat;

  @JsonKey(name: r'lon', required: false, includeIfNull: false)
  final String? lon;

  @JsonKey(name: r'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: r'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: r'zipCode', required: false, includeIfNull: false)
  final String? zipCode;
  factory TeamModel.fromJson(Map<String, dynamic> json) =>
      _$TeamModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeamModelToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        seq,
        delYn,
        createdAt,
        updatedAt,
        accountId,
        teamCode,
        name,
        contract,
        carNickname,
        lat,
        lon,
        add1,
        add2,
        zipCode,
      ];
}
