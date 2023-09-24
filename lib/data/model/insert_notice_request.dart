// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'insert_notice_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InsertNoticeRequest extends Equatable {
  /// Returns a new [InsertNoticeRequest] instance.
  const InsertNoticeRequest({
    this.seq,
    this.title,
    this.content,
    this.file,
    this.bm,
    this.createdBy,
  });

  factory InsertNoticeRequest.fromJson(Map<String, dynamic> json) =>
      _$InsertNoticeRequestFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'file', required: false, includeIfNull: false)
  final String? file;

  @JsonKey(name: 'bm', required: false, includeIfNull: false)
  final String? bm;

  @JsonKey(name: 'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  Map<String, dynamic> toJson() => _$InsertNoticeRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [seq, title, content, file, bm, createdBy];
}
