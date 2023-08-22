// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_team_account_connection_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectTeamAccountConnectionRequest
    extends SelectTeamAccountConnectionRequest {
  @override
  final int? teamSeq;
  @override
  final String? accountId;
  @override
  final String? startJoinedAt;
  @override
  final String? endJoinedAt;
  @override
  final String? startLeavedAt;
  @override
  final String? endLeavedAt;
  @override
  final String? isLeaved;

  factory _$SelectTeamAccountConnectionRequest(
          [void Function(SelectTeamAccountConnectionRequestBuilder)?
              updates]) =>
      (new SelectTeamAccountConnectionRequestBuilder()..update(updates))
          ._build();

  _$SelectTeamAccountConnectionRequest._(
      {this.teamSeq,
      this.accountId,
      this.startJoinedAt,
      this.endJoinedAt,
      this.startLeavedAt,
      this.endLeavedAt,
      this.isLeaved})
      : super._();

  @override
  SelectTeamAccountConnectionRequest rebuild(
          void Function(SelectTeamAccountConnectionRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectTeamAccountConnectionRequestBuilder toBuilder() =>
      new SelectTeamAccountConnectionRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectTeamAccountConnectionRequest &&
        teamSeq == other.teamSeq &&
        accountId == other.accountId &&
        startJoinedAt == other.startJoinedAt &&
        endJoinedAt == other.endJoinedAt &&
        startLeavedAt == other.startLeavedAt &&
        endLeavedAt == other.endLeavedAt &&
        isLeaved == other.isLeaved;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, teamSeq.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, startJoinedAt.hashCode);
    _$hash = $jc(_$hash, endJoinedAt.hashCode);
    _$hash = $jc(_$hash, startLeavedAt.hashCode);
    _$hash = $jc(_$hash, endLeavedAt.hashCode);
    _$hash = $jc(_$hash, isLeaved.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectTeamAccountConnectionRequest')
          ..add('teamSeq', teamSeq)
          ..add('accountId', accountId)
          ..add('startJoinedAt', startJoinedAt)
          ..add('endJoinedAt', endJoinedAt)
          ..add('startLeavedAt', startLeavedAt)
          ..add('endLeavedAt', endLeavedAt)
          ..add('isLeaved', isLeaved))
        .toString();
  }
}

class SelectTeamAccountConnectionRequestBuilder
    implements
        Builder<SelectTeamAccountConnectionRequest,
            SelectTeamAccountConnectionRequestBuilder> {
  _$SelectTeamAccountConnectionRequest? _$v;

  int? _teamSeq;
  int? get teamSeq => _$this._teamSeq;
  set teamSeq(int? teamSeq) => _$this._teamSeq = teamSeq;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _startJoinedAt;
  String? get startJoinedAt => _$this._startJoinedAt;
  set startJoinedAt(String? startJoinedAt) =>
      _$this._startJoinedAt = startJoinedAt;

  String? _endJoinedAt;
  String? get endJoinedAt => _$this._endJoinedAt;
  set endJoinedAt(String? endJoinedAt) => _$this._endJoinedAt = endJoinedAt;

  String? _startLeavedAt;
  String? get startLeavedAt => _$this._startLeavedAt;
  set startLeavedAt(String? startLeavedAt) =>
      _$this._startLeavedAt = startLeavedAt;

  String? _endLeavedAt;
  String? get endLeavedAt => _$this._endLeavedAt;
  set endLeavedAt(String? endLeavedAt) => _$this._endLeavedAt = endLeavedAt;

  String? _isLeaved;
  String? get isLeaved => _$this._isLeaved;
  set isLeaved(String? isLeaved) => _$this._isLeaved = isLeaved;

  SelectTeamAccountConnectionRequestBuilder() {
    SelectTeamAccountConnectionRequest._defaults(this);
  }

  SelectTeamAccountConnectionRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _teamSeq = $v.teamSeq;
      _accountId = $v.accountId;
      _startJoinedAt = $v.startJoinedAt;
      _endJoinedAt = $v.endJoinedAt;
      _startLeavedAt = $v.startLeavedAt;
      _endLeavedAt = $v.endLeavedAt;
      _isLeaved = $v.isLeaved;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectTeamAccountConnectionRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectTeamAccountConnectionRequest;
  }

  @override
  void update(
      void Function(SelectTeamAccountConnectionRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectTeamAccountConnectionRequest build() => _build();

  _$SelectTeamAccountConnectionRequest _build() {
    final _$result = _$v ??
        new _$SelectTeamAccountConnectionRequest._(
            teamSeq: teamSeq,
            accountId: accountId,
            startJoinedAt: startJoinedAt,
            endJoinedAt: endJoinedAt,
            startLeavedAt: startLeavedAt,
            endLeavedAt: endLeavedAt,
            isLeaved: isLeaved);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
