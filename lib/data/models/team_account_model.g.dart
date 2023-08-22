// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team_account_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TeamAccountModel extends TeamAccountModel {
  @override
  final String? accountId;
  @override
  final String? color;
  @override
  final String? nickname;
  @override
  final String? profilePicture;

  factory _$TeamAccountModel(
          [void Function(TeamAccountModelBuilder)? updates]) =>
      (new TeamAccountModelBuilder()..update(updates))._build();

  _$TeamAccountModel._(
      {this.accountId, this.color, this.nickname, this.profilePicture})
      : super._();

  @override
  TeamAccountModel rebuild(void Function(TeamAccountModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamAccountModelBuilder toBuilder() =>
      new TeamAccountModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamAccountModel &&
        accountId == other.accountId &&
        color == other.color &&
        nickname == other.nickname &&
        profilePicture == other.profilePicture;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TeamAccountModel')
          ..add('accountId', accountId)
          ..add('color', color)
          ..add('nickname', nickname)
          ..add('profilePicture', profilePicture))
        .toString();
  }
}

class TeamAccountModelBuilder
    implements Builder<TeamAccountModel, TeamAccountModelBuilder> {
  _$TeamAccountModel? _$v;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  String? _profilePicture;
  String? get profilePicture => _$this._profilePicture;
  set profilePicture(String? profilePicture) =>
      _$this._profilePicture = profilePicture;

  TeamAccountModelBuilder() {
    TeamAccountModel._defaults(this);
  }

  TeamAccountModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accountId = $v.accountId;
      _color = $v.color;
      _nickname = $v.nickname;
      _profilePicture = $v.profilePicture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamAccountModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TeamAccountModel;
  }

  @override
  void update(void Function(TeamAccountModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TeamAccountModel build() => _build();

  _$TeamAccountModel _build() {
    final _$result = _$v ??
        new _$TeamAccountModel._(
            accountId: accountId,
            color: color,
            nickname: nickname,
            profilePicture: profilePicture);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
