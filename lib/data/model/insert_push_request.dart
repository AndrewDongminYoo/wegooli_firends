// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'insert_push_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InsertPushRequest extends Equatable {
  /// Returns a new [InsertPushRequest] instance.
  InsertPushRequest({
    this.seq,
    this.title,
    this.content,
    this.link,
    this.bm,
    this.createdBy,
  });

  factory InsertPushRequest.fromJson(Map<String, dynamic> json) =>
      _$InsertPushRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'link', required: false, includeIfNull: false)
  final String? link;

  @JsonKey(name: 'bm', required: false, includeIfNull: false)
  final String? bm;

  @JsonKey(name: 'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  Map<String, dynamic> toJson() => _$InsertPushRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [seq, title, content, link, bm, createdBy];
}
