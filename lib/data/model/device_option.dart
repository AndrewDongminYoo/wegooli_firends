// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'device_option.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceOption {
  /// Returns a new [DeviceOption] instance.
  DeviceOption({
    this.seq,
    this.optName,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'optName', required: false, includeIfNull: false)
  final String? optName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeviceOption && other.seq == seq && other.optName == optName;

  @override
  int get hashCode => seq.hashCode + optName.hashCode;

  factory DeviceOption.fromJson(Map<String, dynamic> json) =>
      _$DeviceOptionFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceOptionToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
