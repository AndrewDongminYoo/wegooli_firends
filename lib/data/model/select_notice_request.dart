// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'select_notice_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectNoticeRequest extends Equatable {
  /// Returns a new [SelectNoticeRequest] instance.
  SelectNoticeRequest({
    this.title,
    this.content,
    this.bm,
    this.delYn,
  });

  factory SelectNoticeRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectNoticeRequestFromJson(json);

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'bm', required: false, includeIfNull: false)
  final String? bm;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  Map<String, dynamic> toJson() => _$SelectNoticeRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [title, content, bm, delYn];
}
