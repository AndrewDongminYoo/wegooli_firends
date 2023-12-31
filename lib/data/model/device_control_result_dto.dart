// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_control_result_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceControlResultDto extends Equatable {
  /// Returns a new [DeviceControlResultDto] instance.
  const DeviceControlResultDto({
    this.userId,
    this.terTelNum,
    this.t42,
    this.t1,
    this.t5,
    this.t0,
    this.t2,
    this.t3,
    this.t4,
    this.t6,
    this.t7,
    this.t8,
    this.t9,
    this.t10,
    this.t11,
    this.t12,
    this.t14,
    this.t15,
    this.t16,
    this.t17,
    this.t18,
    this.t19,
    this.t20,
    this.t21,
    this.t22,
    this.t41,
    this.t51,
    this.t61,
    this.ucp,
    this.nsdur,
  });

  factory DeviceControlResultDto.fromJson(Map<String, dynamic> json) =>
      _$DeviceControlResultDtoFromJson(json);

  @JsonKey(name: 'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: 'terTelNum', required: false, includeIfNull: false)
  final String? terTelNum;

  @JsonKey(name: 't42', required: false, includeIfNull: false)
  final String? t42;

  @JsonKey(name: 't1', required: false, includeIfNull: false)
  final String? t1;

  @JsonKey(name: 't5', required: false, includeIfNull: false)
  final String? t5;

  @JsonKey(name: 't0', required: false, includeIfNull: false)
  final String? t0;

  @JsonKey(name: 't2', required: false, includeIfNull: false)
  final String? t2;

  @JsonKey(name: 't3', required: false, includeIfNull: false)
  final String? t3;

  @JsonKey(name: 't4', required: false, includeIfNull: false)
  final String? t4;

  @JsonKey(name: 't6', required: false, includeIfNull: false)
  final String? t6;

  @JsonKey(name: 't7', required: false, includeIfNull: false)
  final String? t7;

  @JsonKey(name: 't8', required: false, includeIfNull: false)
  final String? t8;

  @JsonKey(name: 't9', required: false, includeIfNull: false)
  final String? t9;

  @JsonKey(name: 't10', required: false, includeIfNull: false)
  final String? t10;

  @JsonKey(name: 't11', required: false, includeIfNull: false)
  final String? t11;

  @JsonKey(name: 't12', required: false, includeIfNull: false)
  final String? t12;

  @JsonKey(name: 't14', required: false, includeIfNull: false)
  final String? t14;

  @JsonKey(name: 't15', required: false, includeIfNull: false)
  final String? t15;

  @JsonKey(name: 't16', required: false, includeIfNull: false)
  final String? t16;

  @JsonKey(name: 't17', required: false, includeIfNull: false)
  final String? t17;

  @JsonKey(name: 't18', required: false, includeIfNull: false)
  final String? t18;

  @JsonKey(name: 't19', required: false, includeIfNull: false)
  final String? t19;

  @JsonKey(name: 't20', required: false, includeIfNull: false)
  final String? t20;

  @JsonKey(name: 't21', required: false, includeIfNull: false)
  final String? t21;

  @JsonKey(name: 't22', required: false, includeIfNull: false)
  final String? t22;

  @JsonKey(name: 't41', required: false, includeIfNull: false)
  final String? t41;

  @JsonKey(name: 't51', required: false, includeIfNull: false)
  final String? t51;

  @JsonKey(name: 't61', required: false, includeIfNull: false)
  final String? t61;

  @JsonKey(name: 'ucp', required: false, includeIfNull: false)
  final String? ucp;

  @JsonKey(name: 'nsdur', required: false, includeIfNull: false)
  final String? nsdur;

  Map<String, dynamic> toJson() => _$DeviceControlResultDtoToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        userId,
        terTelNum,
        t42,
        t1,
        t5,
        t0,
        t2,
        t3,
        t4,
        t6,
        t7,
        t8,
        t9,
        t10,
        t11,
        t12,
        t14,
        t15,
        t16,
        t17,
        t18,
        t19,
        t20,
        t21,
        t22,
        t41,
        t51,
        t61,
        ucp,
        nsdur,
      ];
}
