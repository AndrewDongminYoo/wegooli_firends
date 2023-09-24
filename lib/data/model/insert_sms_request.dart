// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'insert_sms_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class InsertSmsRequest extends Equatable {
  /// Returns a new [InsertSmsRequest] instance.
  const InsertSmsRequest({
    this.seq,
    this.title,
    this.content,
    this.file,
    this.bm,
    this.createdBy,
  });

  factory InsertSmsRequest.fromJson(Map<String, dynamic> json) =>
      _$InsertSmsRequestFromJson(json);

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

  Map<String, dynamic> toJson() => _$InsertSmsRequestToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [seq, title, content, file, bm, createdBy];
}
