// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'terminal_update_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TerminalUpdateRequest extends Equatable {
  /// Returns a new [TerminalUpdateRequest] instance.
  TerminalUpdateRequest({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.carNum,
    this.phoneNumber,
    this.status,
    this.carNickname,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: r'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'carNickname', required: false, includeIfNull: false)
  final String? carNickname;

  factory TerminalUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalUpdateRequestToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        seq,
        delYn,
        createdAt,
        updatedAt,
        carNum,
        phoneNumber,
        status,
        carNickname,
      ];
}
