// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'push.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Push {
  /// Returns a new [Push] instance.
  Push({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.content,
    this.link,
    this.bm,
    this.createdBy,
  });

  @JsonKey(name: r'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: r'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: r'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: r'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

  @JsonKey(name: r'title', required: false, includeIfNull: false)
  final String? title;

  @JsonKey(name: r'content', required: false, includeIfNull: false)
  final String? content;

  @JsonKey(name: r'link', required: false, includeIfNull: false)
  final String? link;

  @JsonKey(name: r'bm', required: false, includeIfNull: false)
  final String? bm;

  @JsonKey(name: r'createdBy', required: false, includeIfNull: false)
  final String? createdBy;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Push &&
          other.seq == seq &&
          other.delYn == delYn &&
          other.createdAt == createdAt &&
          other.updatedAt == updatedAt &&
          other.title == title &&
          other.content == content &&
          other.link == link &&
          other.bm == bm &&
          other.createdBy == createdBy;

  @override
  int get hashCode =>
      seq.hashCode +
      delYn.hashCode +
      createdAt.hashCode +
      updatedAt.hashCode +
      title.hashCode +
      content.hashCode +
      link.hashCode +
      bm.hashCode +
      createdBy.hashCode;

  factory Push.fromJson(Map<String, dynamic> json) => _$PushFromJson(json);

  Map<String, dynamic> toJson() => _$PushToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }
}
