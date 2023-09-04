// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'terminal_update_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TerminalUpdateRequest {
  /// Returns a new [TerminalUpdateRequest] instance.
  TerminalUpdateRequest({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.carNum,
    this.phoneNumber,
    this.status,
    this.carNickName,
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

  @JsonKey(name: r'carNickName', required: false, includeIfNull: false)
  final String? carNickName;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TerminalUpdateRequest &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.carNum == carNum &&
          other.phoneNumber == phoneNumber &&
          other.status == status &&
          other.carNickName == carNickName;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      carNum.hashCode +
      phoneNumber.hashCode +
      status.hashCode +
      carNickName.hashCode;

  factory TerminalUpdateRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
