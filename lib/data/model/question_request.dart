// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuestionRequest extends Equatable {
  /// Returns a new [QuestionRequest] instance.
  QuestionRequest({
    this.seq,
    this.category,
    this.title,
    this.content,
    this.file,
  });

  factory QuestionRequest.fromJson(Map<String, dynamic> json) =>
      _$QuestionRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'category', required: false, includeIfNull: false)
  final String? category;

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'file', required: false, includeIfNull: false)
  final String? file;

  @override
  List<Object?> get props => [
        seq,
        category,
        title,
        content,
        file,
      ];

  Map<String, dynamic> toJson() => _$QuestionRequestToJson(this);

  @override
  bool get stringify => true;
}
