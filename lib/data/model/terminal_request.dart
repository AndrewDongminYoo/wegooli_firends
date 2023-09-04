// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'terminal_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TerminalRequest {
  /// Returns a new [TerminalRequest] instance.
  TerminalRequest({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.carNum,
    this.phoneNumber,
    this.status,
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TerminalRequest &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.carNum == carNum &&
          other.phoneNumber == phoneNumber &&
          other.status == status;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      carNum.hashCode +
      phoneNumber.hashCode +
      status.hashCode;

  factory TerminalRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalRequestFromJson(json);

  Map<String, dynamic> toJson() => _$TerminalRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
