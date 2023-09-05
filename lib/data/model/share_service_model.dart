// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'share_service_model.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ShareServiceModel extends Equatable {
  /// Returns a new [ShareServiceModel] instance.
  ShareServiceModel({
    this.shareServiceSeq,
    this.serviceName,
    this.serviceDes,
    this.carSeq,
    this.carName,
    this.carImg,
    this.monthlyPay,
    this.personalPay,
    this.nowSub,
    this.maxSub,
  });

  @JsonKey(name: r'shareServiceSeq', required: false, includeIfNull: false)
  final int? shareServiceSeq;

  @JsonKey(name: r'serviceName', required: false, includeIfNull: false)
  final String? serviceName;

  @JsonKey(name: r'serviceDes', required: false, includeIfNull: false)
  final String? serviceDes;

  @JsonKey(name: r'carSeq', required: false, includeIfNull: false)
  final String? carSeq;

  @JsonKey(name: r'carName', required: false, includeIfNull: false)
  final String? carName;

  @JsonKey(name: r'carImg', required: false, includeIfNull: false)
  final String? carImg;

  @JsonKey(name: r'monthlyPay', required: false, includeIfNull: false)
  final String? monthlyPay;

  @JsonKey(name: r'personalPay', required: false, includeIfNull: false)
  final String? personalPay;

  @JsonKey(name: r'nowSub', required: false, includeIfNull: false)
  final String? nowSub;

  @JsonKey(name: r'maxSub', required: false, includeIfNull: false)
  final String? maxSub;

  factory ShareServiceModel.fromJson(Map<String, dynamic> json) =>
      _$ShareServiceModelFromJson(json);

  Map<String, dynamic> toJson() => _$ShareServiceModelToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        'shareServiceSeq',
        'serviceName',
        'serviceDes',
        'carSeq',
        'carName',
        'carImg',
        'monthlyPay',
        'personalPay',
        'nowSub',
        'maxSub'
      ];
}
