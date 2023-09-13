// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'update_push_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdatePushRequest extends Equatable {
  /// Returns a new [UpdatePushRequest] instance.
  UpdatePushRequest({
    this.seq,
    this.title,
    this.content,
    this.link,
    this.bm,
    this.delYn,
  });

  factory UpdatePushRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdatePushRequestFromJson(json);

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

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @override
  List<Object?> get props => [
        seq,
        title,
        content,
        link,
        bm,
        delYn,
      ];

  Map<String, dynamic> toJson() => _$UpdatePushRequestToJson(this);

  @override
  bool get stringify => true;
}
