// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_notice_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateNoticeRequest extends Equatable {
  /// Returns a new [UpdateNoticeRequest] instance.
  UpdateNoticeRequest({
    this.seq,
    this.title,
    this.content,
    this.file,
    this.bm,
    this.delYn,
  });

  factory UpdateNoticeRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateNoticeRequestFromJson(json);

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

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @override
  List<Object?> get props => [
        seq,
        title,
        content,
        file,
        bm,
        delYn,
      ];

  Map<String, dynamic> toJson() => _$UpdateNoticeRequestToJson(this);

  @override
  bool get stringify => true;
}
