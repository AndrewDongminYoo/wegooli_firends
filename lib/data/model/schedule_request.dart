// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'schedule_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScheduleRequest extends Equatable {
  /// Returns a new [ScheduleRequest] instance.
  ScheduleRequest({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.teamSeq,
    this.accountId,
    this.startAt,
    this.endAt,
  });

  factory ScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: 'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: 'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: 'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: 'endAt', required: false, includeIfNull: false)
  final String? endAt;

  Map<String, dynamic> toJson() => _$ScheduleRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [seq, delYn, createdAt, updatedAt, teamSeq, accountId, startAt, endAt];
}
