// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'device_control_result_dto.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceControlResultDTO {
  /// Returns a new [DeviceControlResultDTO] instance.
  DeviceControlResultDTO({
    this.userId,
    this.terTelNum,
    this.t42,
    this.t5,
    this.t0,
    this.t1,
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

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'terTelNum', required: false, includeIfNull: false)
  final String? terTelNum;

  @JsonKey(name: r't42', required: false, includeIfNull: false)
  final String? t42;

  @JsonKey(name: r't5', required: false, includeIfNull: false)
  final String? t5;

  @JsonKey(name: r't0', required: false, includeIfNull: false)
  final String? t0;

  @JsonKey(name: r't1', required: false, includeIfNull: false)
  final String? t1;

  @JsonKey(name: r't2', required: false, includeIfNull: false)
  final String? t2;

  @JsonKey(name: r't3', required: false, includeIfNull: false)
  final String? t3;

  @JsonKey(name: r't4', required: false, includeIfNull: false)
  final String? t4;

  @JsonKey(name: r't6', required: false, includeIfNull: false)
  final String? t6;

  @JsonKey(name: r't7', required: false, includeIfNull: false)
  final String? t7;

  @JsonKey(name: r't8', required: false, includeIfNull: false)
  final String? t8;

  @JsonKey(name: r't9', required: false, includeIfNull: false)
  final String? t9;

  @JsonKey(name: r't10', required: false, includeIfNull: false)
  final String? t10;

  @JsonKey(name: r't11', required: false, includeIfNull: false)
  final String? t11;

  @JsonKey(name: r't12', required: false, includeIfNull: false)
  final String? t12;

  @JsonKey(name: r't14', required: false, includeIfNull: false)
  final String? t14;

  @JsonKey(name: r't15', required: false, includeIfNull: false)
  final String? t15;

  @JsonKey(name: r't16', required: false, includeIfNull: false)
  final String? t16;

  @JsonKey(name: r't17', required: false, includeIfNull: false)
  final String? t17;

  @JsonKey(name: r't18', required: false, includeIfNull: false)
  final String? t18;

  @JsonKey(name: r't19', required: false, includeIfNull: false)
  final String? t19;

  @JsonKey(name: r't20', required: false, includeIfNull: false)
  final String? t20;

  @JsonKey(name: r't21', required: false, includeIfNull: false)
  final String? t21;

  @JsonKey(name: r't22', required: false, includeIfNull: false)
  final String? t22;

  @JsonKey(name: r't41', required: false, includeIfNull: false)
  final String? t41;

  @JsonKey(name: r't51', required: false, includeIfNull: false)
  final String? t51;

  @JsonKey(name: r't61', required: false, includeIfNull: false)
  final String? t61;

  @JsonKey(name: r'ucp', required: false, includeIfNull: false)
  final String? ucp;

  @JsonKey(name: r'nsdur', required: false, includeIfNull: false)
  final String? nsdur;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceControlResultDTO &&
          other.userId == userId &&
          other.terTelNum == terTelNum &&
          other.t42 == t42 &&
          other.t5 == t5 &&
          other.t0 == t0 &&
          other.t1 == t1 &&
          other.t2 == t2 &&
          other.t3 == t3 &&
          other.t4 == t4 &&
          other.t6 == t6 &&
          other.t7 == t7 &&
          other.t8 == t8 &&
          other.t9 == t9 &&
          other.t10 == t10 &&
          other.t11 == t11 &&
          other.t12 == t12 &&
          other.t14 == t14 &&
          other.t15 == t15 &&
          other.t16 == t16 &&
          other.t17 == t17 &&
          other.t18 == t18 &&
          other.t19 == t19 &&
          other.t20 == t20 &&
          other.t21 == t21 &&
          other.t22 == t22 &&
          other.t41 == t41 &&
          other.t51 == t51 &&
          other.t61 == t61 &&
          other.ucp == ucp &&
          other.nsdur == nsdur;

  @override
  int get hashCode =>
      userId.hashCode +
      terTelNum.hashCode +
      t42.hashCode +
      t5.hashCode +
      t0.hashCode +
      t1.hashCode +
      t2.hashCode +
      t3.hashCode +
      t4.hashCode +
      t6.hashCode +
      t7.hashCode +
      t8.hashCode +
      t9.hashCode +
      t10.hashCode +
      t11.hashCode +
      t12.hashCode +
      t14.hashCode +
      t15.hashCode +
      t16.hashCode +
      t17.hashCode +
      t18.hashCode +
      t19.hashCode +
      t20.hashCode +
      t21.hashCode +
      t22.hashCode +
      t41.hashCode +
      t51.hashCode +
      t61.hashCode +
      ucp.hashCode +
      nsdur.hashCode;

  factory DeviceControlResultDTO.fromJson(Map<String, dynamic> json) =>
      _$DeviceControlResultDTOFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceControlResultDTOToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
