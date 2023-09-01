// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qn_a.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$QnA extends QnA {
  @override
  final int? seq;
  @override
  final String? delYn;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? category;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? file;
  @override
  final String? answer;
  @override
  final String? status;
  @override
  final String? createdBy;
  @override
  final DateTime? answeredAt;

  factory _$QnA([void Function(QnABuilder)? updates]) =>
      (new QnABuilder()..update(updates))._build();

  _$QnA._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.category,
      this.title,
      this.content,
      this.file,
      this.answer,
      this.status,
      this.createdBy,
      this.answeredAt})
      : super._();

  @override
  QnA rebuild(void Function(QnABuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  QnABuilder toBuilder() => new QnABuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is QnA &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        category == other.category &&
        title == other.title &&
        content == other.content &&
        file == other.file &&
        answer == other.answer &&
        status == other.status &&
        createdBy == other.createdBy &&
        answeredAt == other.answeredAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, file.hashCode);
    _$hash = $jc(_$hash, answer.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, answeredAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'QnA')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('category', category)
          ..add('title', title)
          ..add('content', content)
          ..add('file', file)
          ..add('answer', answer)
          ..add('status', status)
          ..add('createdBy', createdBy)
          ..add('answeredAt', answeredAt))
        .toString();
  }
}

class QnABuilder implements Builder<QnA, QnABuilder> {
  _$QnA? _$v;

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

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _file;
  String? get file => _$this._file;
  set file(String? file) => _$this._file = file;

  String? _answer;
  String? get answer => _$this._answer;
  set answer(String? answer) => _$this._answer = answer;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _createdBy;
  String? get createdBy => _$this._createdBy;
  set createdBy(String? createdBy) => _$this._createdBy = createdBy;

  DateTime? _answeredAt;
  DateTime? get answeredAt => _$this._answeredAt;
  set answeredAt(DateTime? answeredAt) => _$this._answeredAt = answeredAt;

  QnABuilder() {
    QnA._defaults(this);
  }

  QnABuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _category = $v.category;
      _title = $v.title;
      _content = $v.content;
      _file = $v.file;
      _answer = $v.answer;
      _status = $v.status;
      _createdBy = $v.createdBy;
      _answeredAt = $v.answeredAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(QnA other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$QnA;
  }

  @override
  void update(void Function(QnABuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  QnA build() => _build();

  _$QnA _build() {
    final _$result = _$v ??
        new _$QnA._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            category: category,
            title: title,
            content: content,
            file: file,
            answer: answer,
            status: status,
            createdBy: createdBy,
            answeredAt: answeredAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
