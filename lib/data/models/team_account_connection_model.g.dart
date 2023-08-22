// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_connection_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamAccountConnectionModel extends TeamAccountConnectionModel {
  @override
  final int? seq;
  @override
  final int? teamSeq;
  @override
  final String? accountId;
  @override
  final String? joinedAt;
  @override
  final String? leavedAt;

  factory _$TeamAccountConnectionModel(
          [void Function(TeamAccountConnectionModelBuilder)? updates]) =>
      (new TeamAccountConnectionModelBuilder()..update(updates))._build();

  _$TeamAccountConnectionModel._(
      {this.seq, this.teamSeq, this.accountId, this.joinedAt, this.leavedAt})
      : super._();

  @override
  TeamAccountConnectionModel rebuild(
          void Function(TeamAccountConnectionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamAccountConnectionModelBuilder toBuilder() =>
      new TeamAccountConnectionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamAccountConnectionModel &&
        seq == other.seq &&
        teamSeq == other.teamSeq &&
        accountId == other.accountId &&
        joinedAt == other.joinedAt &&
        leavedAt == other.leavedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, teamSeq.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, joinedAt.hashCode);
    _$hash = $jc(_$hash, leavedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamAccountConnectionModel')
          ..add('seq', seq)
          ..add('teamSeq', teamSeq)
          ..add('accountId', accountId)
          ..add('joinedAt', joinedAt)
          ..add('leavedAt', leavedAt))
        .toString();
  }
}

class TeamAccountConnectionModelBuilder
    implements
        Builder<TeamAccountConnectionModel, TeamAccountConnectionModelBuilder> {
  _$TeamAccountConnectionModel? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _teamSeq;
  int? get teamSeq => _$this._teamSeq;
  set teamSeq(int? teamSeq) => _$this._teamSeq = teamSeq;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _joinedAt;
  String? get joinedAt => _$this._joinedAt;
  set joinedAt(String? joinedAt) => _$this._joinedAt = joinedAt;

  String? _leavedAt;
  String? get leavedAt => _$this._leavedAt;
  set leavedAt(String? leavedAt) => _$this._leavedAt = leavedAt;

  TeamAccountConnectionModelBuilder() {
    TeamAccountConnectionModel._defaults(this);
  }

  TeamAccountConnectionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _teamSeq = $v.teamSeq;
      _accountId = $v.accountId;
      _joinedAt = $v.joinedAt;
      _leavedAt = $v.leavedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamAccountConnectionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamAccountConnectionModel;
  }

  @override
  void update(void Function(TeamAccountConnectionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamAccountConnectionModel build() => _build();

  _$TeamAccountConnectionModel _build() {
    final _$result = _$v ??
        new _$TeamAccountConnectionModel._(
            seq: seq,
            teamSeq: teamSeq,
            accountId: accountId,
            joinedAt: joinedAt,
            leavedAt: leavedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
