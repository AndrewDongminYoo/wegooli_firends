// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_connection_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamAccountConnectionResponse extends TeamAccountConnectionResponse {
  @override
  final int? seq;
  @override
  final int? teamSeq;
  @override
  final BuiltList<TeamAccountModel>? account;
  @override
  final String? joinedAt;
  @override
  final String? leavedAt;

  factory _$TeamAccountConnectionResponse(
          [void Function(TeamAccountConnectionResponseBuilder)? updates]) =>
      (new TeamAccountConnectionResponseBuilder()..update(updates))._build();

  _$TeamAccountConnectionResponse._(
      {this.seq, this.teamSeq, this.account, this.joinedAt, this.leavedAt})
      : super._();

  @override
  TeamAccountConnectionResponse rebuild(
          void Function(TeamAccountConnectionResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamAccountConnectionResponseBuilder toBuilder() =>
      new TeamAccountConnectionResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamAccountConnectionResponse &&
        seq == other.seq &&
        teamSeq == other.teamSeq &&
        account == other.account &&
        joinedAt == other.joinedAt &&
        leavedAt == other.leavedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, teamSeq.hashCode);
    _$hash = $jc(_$hash, account.hashCode);
    _$hash = $jc(_$hash, joinedAt.hashCode);
    _$hash = $jc(_$hash, leavedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamAccountConnectionResponse')
          ..add('seq', seq)
          ..add('teamSeq', teamSeq)
          ..add('account', account)
          ..add('joinedAt', joinedAt)
          ..add('leavedAt', leavedAt))
        .toString();
  }
}

class TeamAccountConnectionResponseBuilder
    implements
        Builder<TeamAccountConnectionResponse,
            TeamAccountConnectionResponseBuilder> {
  _$TeamAccountConnectionResponse? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _teamSeq;
  int? get teamSeq => _$this._teamSeq;
  set teamSeq(int? teamSeq) => _$this._teamSeq = teamSeq;

  ListBuilder<TeamAccountModel>? _account;
  ListBuilder<TeamAccountModel> get account =>
      _$this._account ??= new ListBuilder<TeamAccountModel>();
  set account(ListBuilder<TeamAccountModel>? account) =>
      _$this._account = account;

  String? _joinedAt;
  String? get joinedAt => _$this._joinedAt;
  set joinedAt(String? joinedAt) => _$this._joinedAt = joinedAt;

  String? _leavedAt;
  String? get leavedAt => _$this._leavedAt;
  set leavedAt(String? leavedAt) => _$this._leavedAt = leavedAt;

  TeamAccountConnectionResponseBuilder() {
    TeamAccountConnectionResponse._defaults(this);
  }

  TeamAccountConnectionResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _teamSeq = $v.teamSeq;
      _account = $v.account?.toBuilder();
      _joinedAt = $v.joinedAt;
      _leavedAt = $v.leavedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamAccountConnectionResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamAccountConnectionResponse;
  }

  @override
  void update(void Function(TeamAccountConnectionResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamAccountConnectionResponse build() => _build();

  _$TeamAccountConnectionResponse _build() {
    _$TeamAccountConnectionResponse _$result;
    try {
      _$result = _$v ??
          new _$TeamAccountConnectionResponse._(
              seq: seq,
              teamSeq: teamSeq,
              account: _account?.build(),
              joinedAt: joinedAt,
              leavedAt: leavedAt);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'account';
        _account?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'TeamAccountConnectionResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
