// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ScheduleRequest extends ScheduleRequest {
  @override
  final int? seq;
  @override
  final String? delYn;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? teamSeq;
  @override
  final String? accountId;
  @override
  final String? startAt;
  @override
  final String? endAt;

  factory _$ScheduleRequest([void Function(ScheduleRequestBuilder)? updates]) =>
      (new ScheduleRequestBuilder()..update(updates))._build();

  _$ScheduleRequest._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.teamSeq,
      this.accountId,
      this.startAt,
      this.endAt})
      : super._();

  @override
  ScheduleRequest rebuild(void Function(ScheduleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleRequestBuilder toBuilder() =>
      new ScheduleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleRequest &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        teamSeq == other.teamSeq &&
        accountId == other.accountId &&
        startAt == other.startAt &&
        endAt == other.endAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, teamSeq.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, startAt.hashCode);
    _$hash = $jc(_$hash, endAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ScheduleRequest')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('teamSeq', teamSeq)
          ..add('accountId', accountId)
          ..add('startAt', startAt)
          ..add('endAt', endAt))
        .toString();
  }
}

class ScheduleRequestBuilder
    implements Builder<ScheduleRequest, ScheduleRequestBuilder> {
  _$ScheduleRequest? _$v;

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

  int? _teamSeq;
  int? get teamSeq => _$this._teamSeq;
  set teamSeq(int? teamSeq) => _$this._teamSeq = teamSeq;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _startAt;
  String? get startAt => _$this._startAt;
  set startAt(String? startAt) => _$this._startAt = startAt;

  String? _endAt;
  String? get endAt => _$this._endAt;
  set endAt(String? endAt) => _$this._endAt = endAt;

  ScheduleRequestBuilder() {
    ScheduleRequest._defaults(this);
  }

  ScheduleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _teamSeq = $v.teamSeq;
      _accountId = $v.accountId;
      _startAt = $v.startAt;
      _endAt = $v.endAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScheduleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ScheduleRequest;
  }

  @override
  void update(void Function(ScheduleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ScheduleRequest build() => _build();

  _$ScheduleRequest _build() {
    final _$result = _$v ??
        new _$ScheduleRequest._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            teamSeq: teamSeq,
            accountId: accountId,
            startAt: startAt,
            endAt: endAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
