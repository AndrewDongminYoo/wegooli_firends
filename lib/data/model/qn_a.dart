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

  factory QnA.fromJson(Map<String, dynamic> json) => _$QnAFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: 'category', required: false, includeIfNull: false)
  final String? category;

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'file', required: false, includeIfNull: false)
  final String? file;

  @JsonKey(name: 'answer', required: false, includeIfNull: false)
  final String? answer;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: 'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  @JsonKey(name: 'answeredAt', required: false, includeIfNull: false)
  final DateTime? answeredAt;

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
        'answeredAt',
      ];
}
