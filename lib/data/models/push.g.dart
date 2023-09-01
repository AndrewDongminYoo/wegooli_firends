// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'push.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Push extends Push {
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
  final String? link;
  @override
  final String? bm;
  @override
  final String? createdBy;

  factory _$Push([void Function(PushBuilder)? updates]) =>
      (new PushBuilder()..update(updates))._build();

  _$Push._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.content,
      this.link,
      this.bm,
      this.createdBy})
      : super._();

  @override
  Push rebuild(void Function(PushBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PushBuilder toBuilder() => new PushBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Push &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        title == other.title &&
        content == other.content &&
        link == other.link &&
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
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, bm.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Push')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('title', title)
          ..add('content', content)
          ..add('link', link)
          ..add('bm', bm)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class PushBuilder implements Builder<Push, PushBuilder> {
  _$Push? _$v;

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

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _bm;
  String? get bm => _$this._bm;
  set bm(String? bm) => _$this._bm = bm;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  PushBuilder() {
    Push._defaults(this);
  }

  PushBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _title = $v.title;
      _content = $v.content;
      _link = $v.link;
      _bm = $v.bm;
      _createdBy = $v.createdBy;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Push other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Push;
  }

  @override
  void update(void Function(PushBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Push build() => _build();

  _$Push _build() {
    final _$result = _$v ??
        new _$Push._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            title: title,
            content: content,
            link: link,
            bm: bm,
            createdBy: createdBy);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
