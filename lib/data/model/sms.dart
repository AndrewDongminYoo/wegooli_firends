// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'sms.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Sms {
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Sms &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.title == title &&
          other.content == content &&
          other.file == file &&
          other.bm == bm &&
          other.createdBy == createdBy;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      title.hashCode +
      content.hashCode +
      file.hashCode +
      bm.hashCode +
      createdBy.hashCode;

  factory Sms.fromJson(Map<String, dynamic> json) => _$SmsFromJson(json);

  Map<String, dynamic> toJson() => _$SmsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
