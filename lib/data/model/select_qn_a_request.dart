// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'select_qn_a_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectQnARequest extends Equatable {
  /// Returns a new [SelectQnARequest] instance.
  const SelectQnARequest({
    this.category,
    this.title,
    this.content,
    this.answer,
    this.status,
    this.createdBy,
    this.delYn,
  });

  factory SelectQnARequest.fromJson(Map<String, dynamic> json) =>
      _$SelectQnARequestFromJson(json);

  @JsonKey(name: 'category', required: false, includeIfNull: false)
  final String? category;

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'answer', required: false, includeIfNull: false)
  final String? answer;

  @JsonKey(name: 'status', required: false, includeIfNull: false)
  final String? status;

  @JsonKey(name: 'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  Map<String, dynamic> toJson() => _$SelectQnARequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [category, title, content, answer, status, createdBy, delYn];
}
