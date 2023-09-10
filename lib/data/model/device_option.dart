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

  factory DeviceOption.fromJson(Map<String, dynamic> json) =>
      _$DeviceOptionFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'optName', required: false, includeIfNull: false)
  final String? optName;

  Map<String, dynamic> toJson() => _$DeviceOptionToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [seq, optName];
}
