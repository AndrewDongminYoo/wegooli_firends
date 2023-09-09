// ignore_for_file: unused_element

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

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'teamSeq', required: false, includeIfNull: false)
  final int? teamSeq;

  @JsonKey(name: r'accountId', required: false, includeIfNull: false)
  final String? accountId;

  @JsonKey(name: r'startAt', required: false, includeIfNull: false)
  final String? startAt;

  @JsonKey(name: r'endAt', required: false, includeIfNull: false)
  final String? endAt;

  factory ScheduleRequest.fromJson(Map<String, dynamic> json) =>
      _$ScheduleRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ScheduleRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [
        seq,
        delYn,
        createdAt,
        updatedAt,
        teamSeq,
        accountId,
        startAt,
        endAt,
      ];
}
