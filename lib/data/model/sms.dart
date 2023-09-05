// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sms.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Sms extends Equatable {
  /// Returns a new [Sms] instance.
  Sms({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.content,
    this.file,
    this.bm,
    this.createdBy,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: r'file', required: false, includeIfNull: false)
  final String? file;

  @JsonKey(name: r'bm', required: false, includeIfNull: false)
  final String? bm;

  @JsonKey(name: r'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  factory Sms.fromJson(Map<String, dynamic> json) => _$SmsFromJson(json);

  Map<String, dynamic> toJson() => _$SmsToJson(this);

  @override
  bool get stringify => true;
}
