// 📦 Package imports:
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'notice.g.dart';

@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Notice extends Equatable {
  /// Returns a new [Notice] instance.
  const Notice({
    this.seq,
    this.delYn,
    this.createdAt,
    this.updatedAt,
    this.title,
    this.content,
    this.file,
    this.bm,
    this.createdBy,
  });

  factory Notice.fromJson(Map<String, dynamic> json) => _$NoticeFromJson(json);

  @JsonKey(name: 'seq', required: false, includeIfNull: false)
  final int? seq;

  @JsonKey(name: 'delYn', required: false, includeIfNull: false)
  final String? delYn;

  @JsonKey(name: 'createdAt', required: false, includeIfNull: false)
  final DateTime? createdAt;

  @JsonKey(name: 'updatedAt', required: false, includeIfNull: false)
  final DateTime? updatedAt;

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

  Map<String, dynamic> toJson() => _$NoticeToJson(this);

  @override
  bool get stringify => true;

  @override
  List<Object?> get props =>
      [seq, delYn, createdAt, updatedAt, title, content, file, bm, createdBy];
}
