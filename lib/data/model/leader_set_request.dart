// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'leader_set_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LeaderSetRequest extends Equatable {
  /// Returns a new [LeaderSetRequest] instance.
  LeaderSetRequest({
    this.userId,
    this.serviceSeq,
    this.maxSub,
  });

  @JsonKey(name: r'userId', required: false, includeIfNull: false)
  final String? userId;

  @JsonKey(name: r'serviceSeq', required: false, includeIfNull: false)
  final String? serviceSeq;

  @JsonKey(name: r'maxSub', required: false, includeIfNull: false)
  final String? maxSub;

  factory LeaderSetRequest.fromJson(Map<String, dynamic> json) =>
      _$LeaderSetRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LeaderSetRequestToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [userId, serviceSeq, maxSub];
}
