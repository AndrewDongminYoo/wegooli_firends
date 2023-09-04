// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'qn_a.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QnA {
  /// Returns a new [QnA] instance.
  QnA({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.category,
    this.title,
    this.content,
    this.file,
    this.answer,
    this.status,
    this.createdBy,
    this.answeredAt,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'category', required: false, includeIfNull: false)
  final String? category;

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: r'file', required: false, includeIfNull: false)
  final String? file;

  @JsonKey(name: r'answer', required: false, includeIfNull: false)
  final String? answer;

  @JsonKey(name: r'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: r'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  @JsonKey(name: r'answeredAt', required: false, includeIfNull: false)
  final DateTime? answeredAt;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QnA &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.category == category &&
          other.title == title &&
          other.content == content &&
          other.file == file &&
          other.answer == answer &&
          other.status == status &&
          other.createdBy == createdBy &&
          other.answeredAt == answeredAt;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      category.hashCode +
      title.hashCode +
      content.hashCode +
      file.hashCode +
      answer.hashCode +
      status.hashCode +
      createdBy.hashCode +
      answeredAt.hashCode;

  factory QnA.fromJson(Map<String, dynamic> json) => _$QnAFromJson(json);

  Map<String, dynamic> toJson() => _$QnAToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
