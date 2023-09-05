// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'qn_a.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QnA extends Equatable {
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

  factory QnA.fromJson(Map<String, dynamic> json) => _$QnAFromJson(json);

  Map<String, dynamic> toJson() => _$QnAToJson(this);

  @override
  bool get stringify => true;
  @override
  List<Object?> get props => [
        'seq',
        'delYn',
        'createdAt',
        'updatedAt',
        'category',
        'title',
        'content',
        'file',
        'answer',
        'status',
        'createdBy',
        'answeredAt'
      ];
}
