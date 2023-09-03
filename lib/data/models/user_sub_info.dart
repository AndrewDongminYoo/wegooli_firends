// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'user_sub_info.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserSubInfo {
  /// Returns a new [UserSubInfo] instance.
  UserSubInfo({
    this.userId,
    this.serviceSeq,
    this.weekInfo,
    this.timeInfo,
  });

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'serviceSeq', required: false, includeIfNull: false)
  final String? serviceSeq;

  @JsonKey(name: r'weekInfo', required: false, includeIfNull: false)
  final String? weekInfo;

  @JsonKey(name: r'timeInfo', required: false, includeIfNull: false)
  final String? timeInfo;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserSubInfo &&
          other.userId == userId &&
          other.serviceSeq == serviceSeq &&
          other.weekInfo == weekInfo &&
          other.timeInfo == timeInfo;

  @override
  int get hashCode =>
      userId.hashCode +
      serviceSeq.hashCode +
      weekInfo.hashCode +
      timeInfo.hashCode;

  factory UserSubInfo.fromJson(Map<String, dynamic> json) =>
      _$UserSubInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserSubInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
