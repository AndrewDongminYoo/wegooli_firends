// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'select_push_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectPushRequest extends Equatable {
  /// Returns a new [SelectPushRequest] instance.
  const SelectPushRequest({
    this.title,
    this.content,
    this.bm,
    this.delYn,
  });

  factory SelectPushRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectPushRequestFromJson(json);

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'bm', required: false, includeIfNull: false)
  final String? bm;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  Map<String, dynamic> toJson() => _$SelectPushRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [title, content, bm, delYn];
}
