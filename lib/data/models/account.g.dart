// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Account extends Account {
  @override
  final String? id;
  @override
  final int? memberSeq;
  @override
  final String? password;
  @override
  final String? delimit;
  @override
  final String? delYn;
  @override
  final String? deleteAt;
  @override
  final String? createdAt;
  @override
  final String? updateAt;
  @override
  final String? color;
  @override
  final String? nickname;
  @override
  final String? profilePicture;

  factory _$Account([void Function(AccountBuilder)? updates]) =>
      (new AccountBuilder()..update(updates))._build();

  _$Account._(
      {this.id,
      this.memberSeq,
      this.password,
      this.delimit,
      this.delYn,
      this.deleteAt,
      this.createdAt,
      this.updateAt,
      this.color,
      this.nickname,
      this.profilePicture})
      : super._();

  @override
  Account rebuild(void Function(AccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountBuilder toBuilder() => new AccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Account &&
        id == other.id &&
        memberSeq == other.memberSeq &&
        password == other.password &&
        delimit == other.delimit &&
        delYn == other.delYn &&
        deleteAt == other.deleteAt &&
        createdAt == other.createdAt &&
        updateAt == other.updateAt &&
        color == other.color &&
        nickname == other.nickname &&
        profilePicture == other.profilePicture;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, memberSeq.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, delimit.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, deleteAt.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updateAt.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Account')
          ..add('id', id)
          ..add('memberSeq', memberSeq)
          ..add('password', password)
          ..add('delimit', delimit)
          ..add('delYn', delYn)
          ..add('deleteAt', deleteAt)
          ..add('createdAt', createdAt)
          ..add('updateAt', updateAt)
          ..add('color', color)
          ..add('nickname', nickname)
          ..add('profilePicture', profilePicture))
        .toString();
  }
}

class AccountBuilder implements Builder<Account, AccountBuilder> {
  _$Account? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _memberSeq;
  int? get memberSeq => _$this._memberSeq;
  set memberSeq(int? memberSeq) => _$this._memberSeq = memberSeq;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _delimit;
  String? get delimit => _$this._delimit;
  set delimit(String? delimit) => _$this._delimit = delimit;

  String? _delYn;
  String? get delYn => _$this._delYn;
  set delYn(String? delYn) => _$this._delYn = delYn;

  String? _deleteAt;
  String? get deleteAt => _$this._deleteAt;
  set deleteAt(String? deleteAt) => _$this._deleteAt = deleteAt;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updateAt;
  String? get updateAt => _$this._updateAt;
  set updateAt(String? updateAt) => _$this._updateAt = updateAt;

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

  AccountBuilder() {
    Account._defaults(this);
  }

  AccountBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _memberSeq = $v.memberSeq;
      _password = $v.password;
      _delimit = $v.delimit;
      _delYn = $v.delYn;
      _deleteAt = $v.deleteAt;
      _createdAt = $v.createdAt;
      _updateAt = $v.updateAt;
      _color = $v.color;
      _nickname = $v.nickname;
      _profilePicture = $v.profilePicture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Account other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Account;
  }

  @override
  void update(void Function(AccountBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Account build() => _build();

  _$Account _build() {
    final _$result = _$v ??
        new _$Account._(
            id: id,
            memberSeq: memberSeq,
            password: password,
            delimit: delimit,
            delYn: delYn,
            deleteAt: deleteAt,
            createdAt: createdAt,
            updateAt: updateAt,
            color: color,
            nickname: nickname,
            profilePicture: profilePicture);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
