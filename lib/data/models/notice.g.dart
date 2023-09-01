// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Notice extends Notice {
  @override
  final int? seq;
  @override
  final String? delYn;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? file;
  @override
  final String? bm;
  @override
  final String? createdBy;

  factory _$Notice([void Function(NoticeBuilder)? updates]) =>
      (new NoticeBuilder()..update(updates))._build();

  _$Notice._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.content,
      this.file,
      this.bm,
      this.createdBy})
      : super._();

  @override
  Notice rebuild(void Function(NoticeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoticeBuilder toBuilder() => new NoticeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Notice &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        title == other.title &&
        content == other.content &&
        file == other.file &&
        bm == other.bm &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, bm.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Notice')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('title', title)
          ..add('content', content)
          ..add('file', file)
          ..add('bm', bm)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class NoticeBuilder implements Builder<Notice, NoticeBuilder> {
  _$Notice? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _delYn;
  String? get delYn => _$this._delYn;
  set delYn(String? delYn) => _$this._delYn = delYn;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _bm;
  String? get bm => _$this._bm;
  set bm(String? bm) => _$this._bm = bm;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  NoticeBuilder() {
    Notice._defaults(this);
  }

  NoticeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _title = $v.title;
      _content = $v.content;
      _file = $v.file;
      _bm = $v.bm;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Notice other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Notice;
  }

  @override
  void update(void Function(NoticeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Notice build() => _build();

  _$Notice _build() {
    final _$result = _$v ??
        new _$Notice._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            title: title,
            content: content,
            file: file,
            bm: bm,
            createdBy: createdBy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
