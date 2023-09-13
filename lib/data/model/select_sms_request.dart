// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'select_sms_request.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SelectSmsRequest extends Equatable {
  /// Returns a new [SelectSmsRequest] instance.
  SelectSmsRequest({
    this.title,
    this.content,
    this.bm,
    this.delYn,
  });

  factory SelectSmsRequest.fromJson(Map<String, dynamic> json) =>
      _$SelectSmsRequestFromJson(json);

  @JsonKey(name: 'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: 'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: 'bm', required: false, includeIfNull: false)
  final String? bm;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @override
  List<Object?> get props => [
        title,
        content,
        bm,
        delYn,
      ];

  Map<String, dynamic> toJson() => _$SelectSmsRequestToJson(this);

  @override
  bool get stringify => true;
}
