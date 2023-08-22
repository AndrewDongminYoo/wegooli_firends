// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamModel extends TeamModel {
  @override
  final int? seq;
  @override
  final String? delYn;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? accountId;
  @override
  final String? teamCode;
  @override
  final String? name;
  @override
  final String? contract;

  factory _$TeamModel([void Function(TeamModelBuilder)? updates]) =>
      (new TeamModelBuilder()..update(updates))._build();

  _$TeamModel._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.accountId,
      this.teamCode,
      this.name,
      this.contract})
      : super._();

  @override
  TeamModel rebuild(void Function(TeamModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamModelBuilder toBuilder() => new TeamModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamModel &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        accountId == other.accountId &&
        teamCode == other.teamCode &&
        name == other.name &&
        contract == other.contract;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, teamCode.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, contract.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamModel')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('accountId', accountId)
          ..add('teamCode', teamCode)
          ..add('name', name)
          ..add('contract', contract))
        .toString();
  }
}

class TeamModelBuilder implements Builder<TeamModel, TeamModelBuilder> {
  _$TeamModel? _$v;

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

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _teamCode;
  String? get teamCode => _$this._teamCode;
  set teamCode(String? teamCode) => _$this._teamCode = teamCode;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _contract;
  String? get contract => _$this._contract;
  set contract(String? contract) => _$this._contract = contract;

  TeamModelBuilder() {
    TeamModel._defaults(this);
  }

  TeamModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _accountId = $v.accountId;
      _teamCode = $v.teamCode;
      _name = $v.name;
      _contract = $v.contract;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamModel;
  }

  @override
  void update(void Function(TeamModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamModel build() => _build();

  _$TeamModel _build() {
    final _$result = _$v ??
        new _$TeamModel._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            accountId: accountId,
            teamCode: teamCode,
            name: name,
            contract: contract);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
