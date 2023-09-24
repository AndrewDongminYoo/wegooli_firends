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
  const UserSubInfo({
    this.userId,
    this.serviceSeq,
    this.weekInfo,
    this.timeInfo,
  });

  factory UserSubInfo.fromJson(Map<String, dynamic> json) =>
      _$UserSubInfoFromJson(json);

  @JsonKey(name: 'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: 'serviceSeq', required: false, includeIfNull: false)
  final String? serviceSeq;

  @JsonKey(name: 'weekInfo', required: false, includeIfNull: false)
  final String? weekInfo;

  @JsonKey(name: 'timeInfo', required: false, includeIfNull: false)
  final String? timeInfo;

  Map<String, dynamic> toJson() => _$UserSubInfoToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [userId, serviceSeq, weekInfo, timeInfo];
}
