// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_sub_info.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UserSubInfo extends Equatable {
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

  factory UserSubInfo.fromJson(Map<String, dynamic> json) =>
      _$UserSubInfoFromJson(json);

  Map<String, dynamic> toJson() => _$UserSubInfoToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => ['userId', 'serviceSeq', 'weekInfo', 'timeInfo'];
}
