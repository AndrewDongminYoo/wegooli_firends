// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_car_connection.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamCarConnection extends TeamCarConnection {
  @override
  final int? seq;
  @override
  final int? teamSeq;
  @override
  final String? carNum;
  @override
  final String? startAt;
  @override
  final String? endAt;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? activeYn;

  factory _$TeamCarConnection(
          [void Function(TeamCarConnectionBuilder)? updates]) =>
      (new TeamCarConnectionBuilder()..update(updates))._build();

  _$TeamCarConnection._(
      {this.seq,
      this.teamSeq,
      this.carNum,
      this.startAt,
      this.endAt,
      this.createdAt,
      this.updatedAt,
      this.activeYn})
      : super._();

  @override
  TeamCarConnection rebuild(void Function(TeamCarConnectionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamCarConnectionBuilder toBuilder() =>
      new TeamCarConnectionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamCarConnection &&
        seq == other.seq &&
        teamSeq == other.teamSeq &&
        carNum == other.carNum &&
        startAt == other.startAt &&
        endAt == other.endAt &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        activeYn == other.activeYn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, teamSeq.hashCode);
    _$hash = $jc(_$hash, carNum.hashCode);
    _$hash = $jc(_$hash, startAt.hashCode);
    _$hash = $jc(_$hash, endAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, activeYn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamCarConnection')
          ..add('seq', seq)
          ..add('teamSeq', teamSeq)
          ..add('carNum', carNum)
          ..add('startAt', startAt)
          ..add('endAt', endAt)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('activeYn', activeYn))
        .toString();
  }
}

class TeamCarConnectionBuilder
    implements Builder<TeamCarConnection, TeamCarConnectionBuilder> {
  _$TeamCarConnection? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _teamSeq;
  int? get teamSeq => _$this._teamSeq;
  set teamSeq(int? teamSeq) => _$this._teamSeq = teamSeq;

  String? _carNum;
  String? get carNum => _$this._carNum;
  set carNum(String? carNum) => _$this._carNum = carNum;

  String? _startAt;
  String? get startAt => _$this._startAt;
  set startAt(String? startAt) => _$this._startAt = startAt;

  String? _endAt;
  String? get endAt => _$this._endAt;
  set endAt(String? endAt) => _$this._endAt = endAt;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _activeYn;
  String? get activeYn => _$this._activeYn;
  set activeYn(String? activeYn) => _$this._activeYn = activeYn;

  TeamCarConnectionBuilder() {
    TeamCarConnection._defaults(this);
  }

  TeamCarConnectionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _teamSeq = $v.teamSeq;
      _carNum = $v.carNum;
      _startAt = $v.startAt;
      _endAt = $v.endAt;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _activeYn = $v.activeYn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamCarConnection other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamCarConnection;
  }

  @override
  void update(void Function(TeamCarConnectionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamCarConnection build() => _build();

  _$TeamCarConnection _build() {
    final _$result = _$v ??
        new _$TeamCarConnection._(
            seq: seq,
            teamSeq: teamSeq,
            carNum: carNum,
            startAt: startAt,
            endAt: endAt,
            createdAt: createdAt,
            updatedAt: updatedAt,
            activeYn: activeYn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
