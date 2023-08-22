// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamRequest extends TeamRequest {
  @override
  final String? accountId;
  @override
  final String? name;
  @override
  final String? contract;

  factory _$TeamRequest([void Function(TeamRequestBuilder)? updates]) =>
      (new TeamRequestBuilder()..update(updates))._build();

  _$TeamRequest._({this.accountId, this.name, this.contract}) : super._();

  @override
  TeamRequest rebuild(void Function(TeamRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamRequestBuilder toBuilder() => new TeamRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamRequest &&
        accountId == other.accountId &&
        name == other.name &&
        contract == other.contract;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamRequest')
          ..add('accountId', accountId)
          ..add('name', name)
          ..add('contract', contract))
        .toString();
  }
}

class TeamRequestBuilder implements Builder<TeamRequest, TeamRequestBuilder> {
  _$TeamRequest? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  TeamRequestBuilder() {
    TeamRequest._defaults(this);
  }

  TeamRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _name = $v.name;
      _contract = $v.contract;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamRequest;
  }

  @override
  void update(void Function(TeamRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamRequest build() => _build();

  _$TeamRequest _build() {
    final _$result = _$v ??
        new _$TeamRequest._(
            accountId: accountId, name: name, contract: contract);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
