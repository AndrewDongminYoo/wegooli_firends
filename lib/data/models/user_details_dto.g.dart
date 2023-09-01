// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_details_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDetailsDTO extends UserDetailsDTO {
  @override
  final UserDTO? userDto;
  @override
  final BuiltList<GrantedAuthority>? authorities;
  @override
  final String? name;
  @override
  final String? id;
  @override
  final bool? enabled;
  @override
  final String? color;
  @override
  final String? password;
  @override
  final String? delYn;
  @override
  final int? memberSeq;
  @override
  final int? seq;
  @override
  final String? username;
  @override
  final String? delimit;
  @override
  final String? updatedAt;
  @override
  final String? customerKey;
  @override
  final String? phoneNumber;
  @override
  final String? add2;
  @override
  final String? zipCode;
  @override
  final String? email;
  @override
  final String? sex;
  @override
  final String? birthDay;
  @override
  final String? nickname;
  @override
  final String? profilePicture;
  @override
  final String? add1;
  @override
  final String? createdAt;
  @override
  final String? deleteAt;
  @override
  final String? activeYn;
  @override
  final bool? accountNonExpired;
  @override
  final bool? accountNonLocked;
  @override
  final bool? credentialsNonExpired;

  factory _$UserDetailsDTO([void Function(UserDetailsDTOBuilder)? updates]) =>
      (new UserDetailsDTOBuilder()..update(updates))._build();

  _$UserDetailsDTO._(
      {this.userDto,
      this.authorities,
      this.name,
      this.id,
      this.enabled,
      this.color,
      this.password,
      this.delYn,
      this.memberSeq,
      this.seq,
      this.username,
      this.delimit,
      this.updatedAt,
      this.customerKey,
      this.phoneNumber,
      this.add2,
      this.zipCode,
      this.email,
      this.sex,
      this.birthDay,
      this.nickname,
      this.profilePicture,
      this.add1,
      this.createdAt,
      this.deleteAt,
      this.activeYn,
      this.accountNonExpired,
      this.accountNonLocked,
      this.credentialsNonExpired})
      : super._();

  @override
  UserDetailsDTO rebuild(void Function(UserDetailsDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDetailsDTOBuilder toBuilder() =>
      new UserDetailsDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDetailsDTO &&
        userDto == other.userDto &&
        authorities == other.authorities &&
        name == other.name &&
        id == other.id &&
        enabled == other.enabled &&
        color == other.color &&
        password == other.password &&
        delYn == other.delYn &&
        memberSeq == other.memberSeq &&
        seq == other.seq &&
        username == other.username &&
        delimit == other.delimit &&
        updatedAt == other.updatedAt &&
        customerKey == other.customerKey &&
        phoneNumber == other.phoneNumber &&
        add2 == other.add2 &&
        zipCode == other.zipCode &&
        email == other.email &&
        sex == other.sex &&
        birthDay == other.birthDay &&
        nickname == other.nickname &&
        profilePicture == other.profilePicture &&
        add1 == other.add1 &&
        createdAt == other.createdAt &&
        deleteAt == other.deleteAt &&
        activeYn == other.activeYn &&
        accountNonExpired == other.accountNonExpired &&
        accountNonLocked == other.accountNonLocked &&
        credentialsNonExpired == other.credentialsNonExpired;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userDto.hashCode);
    _$hash = $jc(_$hash, authorities.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, enabled.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, memberSeq.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, delimit.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, customerKey.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, add2.hashCode);
    _$hash = $jc(_$hash, zipCode.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, birthDay.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jc(_$hash, add1.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, deleteAt.hashCode);
    _$hash = $jc(_$hash, activeYn.hashCode);
    _$hash = $jc(_$hash, accountNonExpired.hashCode);
    _$hash = $jc(_$hash, accountNonLocked.hashCode);
    _$hash = $jc(_$hash, credentialsNonExpired.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDetailsDTO')
          ..add('userDto', userDto)
          ..add('authorities', authorities)
          ..add('name', name)
          ..add('id', id)
          ..add('enabled', enabled)
          ..add('color', color)
          ..add('password', password)
          ..add('delYn', delYn)
          ..add('memberSeq', memberSeq)
          ..add('seq', seq)
          ..add('username', username)
          ..add('delimit', delimit)
          ..add('updatedAt', updatedAt)
          ..add('customerKey', customerKey)
          ..add('phoneNumber', phoneNumber)
          ..add('add2', add2)
          ..add('zipCode', zipCode)
          ..add('email', email)
          ..add('sex', sex)
          ..add('birthDay', birthDay)
          ..add('nickname', nickname)
          ..add('profilePicture', profilePicture)
          ..add('add1', add1)
          ..add('createdAt', createdAt)
          ..add('deleteAt', deleteAt)
          ..add('activeYn', activeYn)
          ..add('accountNonExpired', accountNonExpired)
          ..add('accountNonLocked', accountNonLocked)
          ..add('credentialsNonExpired', credentialsNonExpired))
        .toString();
  }
}

class UserDetailsDTOBuilder
    implements Builder<UserDetailsDTO, UserDetailsDTOBuilder> {
  _$UserDetailsDTO? _$v;

  UserDTOBuilder? _userDto;
  UserDTOBuilder get userDto => _$this._userDto ??= new UserDTOBuilder();
  set userDto(UserDTOBuilder? userDto) => _$this._userDto = userDto;

  ListBuilder<GrantedAuthority>? _authorities;
  ListBuilder<GrantedAuthority> get authorities =>
      _$this._authorities ??= new ListBuilder<GrantedAuthority>();
  set authorities(ListBuilder<GrantedAuthority>? authorities) =>
      _$this._authorities = authorities;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  bool? _enabled;
  bool? get enabled => _$this._enabled;
  set enabled(bool? enabled) => _$this._enabled = enabled;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _delYn;
  String? get delYn => _$this._delYn;
  set delYn(String? delYn) => _$this._delYn = delYn;

  int? _memberSeq;
  int? get memberSeq => _$this._memberSeq;
  set memberSeq(int? memberSeq) => _$this._memberSeq = memberSeq;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _delimit;
  String? get delimit => _$this._delimit;
  set delimit(String? delimit) => _$this._delimit = delimit;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _customerKey;
  String? get customerKey => _$this._customerKey;
  set customerKey(String? customerKey) => _$this._customerKey = customerKey;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _add2;
  String? get add2 => _$this._add2;
  set add2(String? add2) => _$this._add2 = add2;

  String? _zipCode;
  String? get zipCode => _$this._zipCode;
  set zipCode(String? zipCode) => _$this._zipCode = zipCode;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _birthDay;
  String? get birthDay => _$this._birthDay;
  set birthDay(String? birthDay) => _$this._birthDay = birthDay;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  String? _profilePicture;
  String? get profilePicture => _$this._profilePicture;
  set profilePicture(String? profilePicture) =>
      _$this._profilePicture = profilePicture;

  String? _add1;
  String? get add1 => _$this._add1;
  set add1(String? add1) => _$this._add1 = add1;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _deleteAt;
  String? get deleteAt => _$this._deleteAt;
  set deleteAt(String? deleteAt) => _$this._deleteAt = deleteAt;

  String? _activeYn;
  String? get activeYn => _$this._activeYn;
  set activeYn(String? activeYn) => _$this._activeYn = activeYn;

  bool? _accountNonExpired;
  bool? get accountNonExpired => _$this._accountNonExpired;
  set accountNonExpired(bool? accountNonExpired) =>
      _$this._accountNonExpired = accountNonExpired;

  bool? _accountNonLocked;
  bool? get accountNonLocked => _$this._accountNonLocked;
  set accountNonLocked(bool? accountNonLocked) =>
      _$this._accountNonLocked = accountNonLocked;

  bool? _credentialsNonExpired;
  bool? get credentialsNonExpired => _$this._credentialsNonExpired;
  set credentialsNonExpired(bool? credentialsNonExpired) =>
      _$this._credentialsNonExpired = credentialsNonExpired;

  UserDetailsDTOBuilder() {
    UserDetailsDTO._defaults(this);
  }

  UserDetailsDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userDto = $v.userDto?.toBuilder();
      _authorities = $v.authorities?.toBuilder();
      _name = $v.name;
      _id = $v.id;
      _enabled = $v.enabled;
      _color = $v.color;
      _password = $v.password;
      _delYn = $v.delYn;
      _memberSeq = $v.memberSeq;
      _seq = $v.seq;
      _username = $v.username;
      _delimit = $v.delimit;
      _updatedAt = $v.updatedAt;
      _customerKey = $v.customerKey;
      _phoneNumber = $v.phoneNumber;
      _add2 = $v.add2;
      _zipCode = $v.zipCode;
      _email = $v.email;
      _sex = $v.sex;
      _birthDay = $v.birthDay;
      _nickname = $v.nickname;
      _profilePicture = $v.profilePicture;
      _add1 = $v.add1;
      _createdAt = $v.createdAt;
      _deleteAt = $v.deleteAt;
      _activeYn = $v.activeYn;
      _accountNonExpired = $v.accountNonExpired;
      _accountNonLocked = $v.accountNonLocked;
      _credentialsNonExpired = $v.credentialsNonExpired;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDetailsDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDetailsDTO;
  }

  @override
  void update(void Function(UserDetailsDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDetailsDTO build() => _build();

  _$UserDetailsDTO _build() {
    _$UserDetailsDTO _$result;
    try {
      _$result = _$v ??
          new _$UserDetailsDTO._(
              userDto: _userDto?.build(),
              authorities: _authorities?.build(),
              name: name,
              id: id,
              enabled: enabled,
              color: color,
              password: password,
              delYn: delYn,
              memberSeq: memberSeq,
              seq: seq,
              username: username,
              delimit: delimit,
              updatedAt: updatedAt,
              customerKey: customerKey,
              phoneNumber: phoneNumber,
              add2: add2,
              zipCode: zipCode,
              email: email,
              sex: sex,
              birthDay: birthDay,
              nickname: nickname,
              profilePicture: profilePicture,
              add1: add1,
              createdAt: createdAt,
              deleteAt: deleteAt,
              activeYn: activeYn,
              accountNonExpired: accountNonExpired,
              accountNonLocked: accountNonLocked,
              credentialsNonExpired: credentialsNonExpired);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userDto';
        _userDto?.build();
        _$failedField = 'authorities';
        _authorities?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserDetailsDTO', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
