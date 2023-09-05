// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

// 🌎 Project imports:
import '/data/model/device_option.dart';
import '/data/model/user_sub_info.dart';

part 'service_detail.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServiceDetail extends Equatable {
  /// Returns a new [ServiceDetail] instance.
  ServiceDetail({
    this.shareServiceSeq,
    this.carName,
    this.carMadeCom,
    this.type,
    this.fulName,
    this.gearType,
    this.maxRide,
    this.distanceDriven,
    this.carOpt,
    this.carOptList,
    this.userSubInfoList,
  });

  @JsonKey(name: r'shareServiceSeq', required: false, includeIfNull: false)
  final String? shareServiceSeq;

  @JsonKey(name: r'carName', required: false, includeIfNull: false)
  final String? carName;

  @JsonKey(name: r'carMadeCom', required: false, includeIfNull: false)
  final String? carMadeCom;

  @JsonKey(name: r'type', required: false, includeIfNull: false)
  final String? type;

  @JsonKey(name: r'fulName', required: false, includeIfNull: false)
  final String? fulName;

  @JsonKey(name: r'gearType', required: false, includeIfNull: false)
  final String? gearType;

  @JsonKey(name: r'maxRide', required: false, includeIfNull: false)
  final String? maxRide;

  @JsonKey(name: r'distanceDriven', required: false, includeIfNull: false)
  final String? distanceDriven;

  @JsonKey(name: r'carOpt', required: false, includeIfNull: false)
  final String? carOpt;

  @JsonKey(name: r'carOptList', required: false, includeIfNull: false)
  final List<DeviceOption>? carOptList;

  @JsonKey(name: r'userSubInfoList', required: false, includeIfNull: false)
  final List<UserSubInfo>? userSubInfoList;

  factory ServiceDetail.fromJson(Map<String, dynamic> json) =>
      _$ServiceDetailFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceDetailToJson(this);

  @override
  bool get stringify => true;
}
