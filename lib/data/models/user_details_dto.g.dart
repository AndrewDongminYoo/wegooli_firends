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
  final String? email;
  @override
  final String? sex;
  @override
  final String? delimit;
  @override
  final String? customerKey;
  @override
  final int? seq;
  @override
  final int? memberSeq;
  @override
  final String? delYn;
  @override
  final String? nickname;
  @override
  final String? profilePicture;
  @override
  final String? username;
  @override
  final String? add1;
  @override
  final String? add2;
  @override
  final String? zipCode;
  @override
  final String? phoneNumber;
  @override
  final bool? accountNonExpired;
  @override
  final String? birthDay;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? deleteAt;
  @override
  final String? updateAt;
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
      this.email,
      this.sex,
      this.delimit,
      this.customerKey,
      this.seq,
      this.memberSeq,
      this.delYn,
      this.nickname,
      this.profilePicture,
      this.username,
      this.add1,
      this.add2,
      this.zipCode,
      this.phoneNumber,
      this.accountNonExpired,
      this.birthDay,
      this.createdAt,
      this.updatedAt,
      this.deleteAt,
      this.updateAt,
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
        email == other.email &&
        sex == other.sex &&
        delimit == other.delimit &&
        customerKey == other.customerKey &&
        seq == other.seq &&
        memberSeq == other.memberSeq &&
        delYn == other.delYn &&
        nickname == other.nickname &&
        profilePicture == other.profilePicture &&
        username == other.username &&
        add1 == other.add1 &&
        add2 == other.add2 &&
        zipCode == other.zipCode &&
        phoneNumber == other.phoneNumber &&
        accountNonExpired == other.accountNonExpired &&
        birthDay == other.birthDay &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deleteAt == other.deleteAt &&
        updateAt == other.updateAt &&
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
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, delimit.hashCode);
    _$hash = $jc(_$hash, customerKey.hashCode);
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, memberSeq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jc(_$hash, username.hashCode);
    _$hash = $jc(_$hash, add1.hashCode);
    _$hash = $jc(_$hash, add2.hashCode);
    _$hash = $jc(_$hash, zipCode.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, accountNonExpired.hashCode);
    _$hash = $jc(_$hash, birthDay.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, deleteAt.hashCode);
    _$hash = $jc(_$hash, updateAt.hashCode);
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
          ..add('email', email)
          ..add('sex', sex)
          ..add('delimit', delimit)
          ..add('customerKey', customerKey)
          ..add('seq', seq)
          ..add('memberSeq', memberSeq)
          ..add('delYn', delYn)
          ..add('nickname', nickname)
          ..add('profilePicture', profilePicture)
          ..add('username', username)
          ..add('add1', add1)
          ..add('add2', add2)
          ..add('zipCode', zipCode)
          ..add('phoneNumber', phoneNumber)
          ..add('accountNonExpired', accountNonExpired)
          ..add('birthDay', birthDay)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('deleteAt', deleteAt)
          ..add('updateAt', updateAt)
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

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _delimit;
  String? get delimit => _$this._delimit;
  set delimit(String? delimit) => _$this._delimit = delimit;

  String? _customerKey;
  String? get customerKey => _$this._customerKey;
  set customerKey(String? customerKey) => _$this._customerKey = customerKey;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _memberSeq;
  int? get memberSeq => _$this._memberSeq;
  set memberSeq(int? memberSeq) => _$this._memberSeq = memberSeq;

  String? _delYn;
  String? get delYn => _$this._delYn;
  set delYn(String? delYn) => _$this._delYn = delYn;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  String? _profilePicture;
  String? get profilePicture => _$this._profilePicture;
  set profilePicture(String? profilePicture) =>
      _$this._profilePicture = profilePicture;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _add1;
  String? get add1 => _$this._add1;
  set add1(String? add1) => _$this._add1 = add1;

  String? _add2;
  String? get add2 => _$this._add2;
  set add2(String? add2) => _$this._add2 = add2;

  String? _zipCode;
  String? get zipCode => _$this._zipCode;
  set zipCode(String? zipCode) => _$this._zipCode = zipCode;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool? _accountNonExpired;
  bool? get accountNonExpired => _$this._accountNonExpired;
  set accountNonExpired(bool? accountNonExpired) =>
      _$this._accountNonExpired = accountNonExpired;

  String? _birthDay;
  String? get birthDay => _$this._birthDay;
  set birthDay(String? birthDay) => _$this._birthDay = birthDay;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  String? _deleteAt;
  String? get deleteAt => _$this._deleteAt;
  set deleteAt(String? deleteAt) => _$this._deleteAt = deleteAt;

  String? _updateAt;
  String? get updateAt => _$this._updateAt;
  set updateAt(String? updateAt) => _$this._updateAt = updateAt;

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
      _email = $v.email;
      _sex = $v.sex;
      _delimit = $v.delimit;
      _customerKey = $v.customerKey;
      _seq = $v.seq;
      _memberSeq = $v.memberSeq;
      _delYn = $v.delYn;
      _nickname = $v.nickname;
      _profilePicture = $v.profilePicture;
      _username = $v.username;
      _add1 = $v.add1;
      _add2 = $v.add2;
      _zipCode = $v.zipCode;
      _phoneNumber = $v.phoneNumber;
      _accountNonExpired = $v.accountNonExpired;
      _birthDay = $v.birthDay;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _deleteAt = $v.deleteAt;
      _updateAt = $v.updateAt;
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
              email: email,
              sex: sex,
              delimit: delimit,
              customerKey: customerKey,
              seq: seq,
              memberSeq: memberSeq,
              delYn: delYn,
              nickname: nickname,
              profilePicture: profilePicture,
              username: username,
              add1: add1,
              add2: add2,
              zipCode: zipCode,
              phoneNumber: phoneNumber,
              accountNonExpired: accountNonExpired,
              birthDay: birthDay,
              createdAt: createdAt,
              updatedAt: updatedAt,
              deleteAt: deleteAt,
              updateAt: updateAt,
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
