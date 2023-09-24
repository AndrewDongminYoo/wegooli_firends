// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'team_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TeamRequest extends Equatable {
  /// Returns a new [TeamRequest] instance.
  const TeamRequest({
    this.accountId,
    this.name,
    this.contract,
    this.carNickname,
    this.lat,
    this.lon,
    this.add1,
    this.add2,
    this.zipCode,
  });

  factory TeamRequest.fromJson(Map<String, dynamic> json) =>
      _$TeamRequestFromJson(json);

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'name', required: false, includeIfNull: false)
  final String? name;

  @JsonKey(name: 'contract', required: false, includeIfNull: false)
  final String? contract;

  @JsonKey(name: 'carNickname', required: false, includeIfNull: false)
  final String? carNickname;

  @JsonKey(name: 'lat', required: false, includeIfNull: false)
  final String? lat;

  @JsonKey(name: 'lon', required: false, includeIfNull: false)
  final String? lon;

  @JsonKey(name: 'add1', required: false, includeIfNull: false)
  final String? add1;

  @JsonKey(name: 'add2', required: false, includeIfNull: false)
  final String? add2;

  @JsonKey(name: 'zipCode', required: false, includeIfNull: false)
  final String? zipCode;

  Map<String, dynamic> toJson() => _$TeamRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [accountId, name, contract, carNickname, lat, lon, add1, add2, zipCode];
}
