// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'terminal_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TerminalRequest extends Equatable {
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

  factory TerminalRequest.fromJson(Map<String, dynamic> json) =>
      _$TerminalRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: 'carNum', required: false, includeIfNull: false)
  final String? carNum;

  @JsonKey(name: 'phoneNumber', required: false, includeIfNull: false)
  final String? phoneNumber;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  Map<String, dynamic> toJson() => _$TerminalRequestToJson(this);

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
      ];
}
