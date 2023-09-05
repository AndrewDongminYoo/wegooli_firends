// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'device_option.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeviceOption extends Equatable {
  /// Returns a new [DeviceOption] instance.
  DeviceOption({
    this.seq,
    this.optName,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'optName', required: false, includeIfNull: false)
  final String? optName;

  factory DeviceOption.fromJson(Map<String, dynamic> json) =>
      _$DeviceOptionFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceOptionToJson(this);

  @override
  bool get stringify => true;
}
