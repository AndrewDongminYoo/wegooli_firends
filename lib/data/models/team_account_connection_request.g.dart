// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamAccountConnectionRequest extends TeamAccountConnectionRequest {
  @override
  final int? teamSeq;
  @override
  final String? accountId;
  @override
  final String? joinedAt;
  @override
  final String? leavedAt;

  factory _$TeamAccountConnectionRequest(
          [void Function(TeamAccountConnectionRequestBuilder)? updates]) =>
      (new TeamAccountConnectionRequestBuilder()..update(updates))._build();

  _$TeamAccountConnectionRequest._(
      {this.teamSeq, this.accountId, this.joinedAt, this.leavedAt})
      : super._();

  @override
  TeamAccountConnectionRequest rebuild(
          void Function(TeamAccountConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamAccountConnectionRequestBuilder toBuilder() =>
      new TeamAccountConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamAccountConnectionRequest &&
        teamSeq == other.teamSeq &&
        accountId == other.accountId &&
        joinedAt == other.joinedAt &&
        leavedAt == other.leavedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, teamSeq.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, joinedAt.hashCode);
    _$hash = $jc(_$hash, leavedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamAccountConnectionRequest')
          ..add('teamSeq', teamSeq)
          ..add('accountId', accountId)
          ..add('joinedAt', joinedAt)
          ..add('leavedAt', leavedAt))
        .toString();
  }
}

class TeamAccountConnectionRequestBuilder
    implements
        Builder<TeamAccountConnectionRequest,
            TeamAccountConnectionRequestBuilder> {
  _$TeamAccountConnectionRequest? _$v;

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

  TeamAccountConnectionRequestBuilder() {
    TeamAccountConnectionRequest._defaults(this);
  }

  TeamAccountConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamSeq = $v.teamSeq;
      _accountId = $v.accountId;
      _joinedAt = $v.joinedAt;
      _leavedAt = $v.leavedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamAccountConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamAccountConnectionRequest;
  }

  @override
  void update(void Function(TeamAccountConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamAccountConnectionRequest build() => _build();

  _$TeamAccountConnectionRequest _build() {
    final _$result = _$v ??
        new _$TeamAccountConnectionRequest._(
            teamSeq: teamSeq,
            accountId: accountId,
            joinedAt: joinedAt,
            leavedAt: leavedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
