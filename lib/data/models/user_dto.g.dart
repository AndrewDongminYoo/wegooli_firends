// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDTO extends UserDTO {
  @override
  final int? seq;
  @override
  final String? name;
  @override
  final String? add1;
  @override
  final String? add2;
  @override
  final String? zipCode;
  @override
  final String? phoneNumber;
  @override
  final String? email;
  @override
  final String? birthDay;
  @override
  final String? sex;
  @override
  final String? delYn;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? id;
  @override
  final int? memberSeq;
  @override
  final String? password;
  @override
  final String? delimit;
  @override
  final String? nickname;
  @override
  final String? profilePicture;
  @override
  final String? deleteAt;
  @override
  final String? color;
  @override
  final String? customerKey;
  @override
  final String? activeYn;

  factory _$UserDTO([void Function(UserDTOBuilder)? updates]) =>
      (new UserDTOBuilder()..update(updates))._build();

  _$UserDTO._(
      {this.seq,
      this.name,
      this.add1,
      this.add2,
      this.zipCode,
      this.phoneNumber,
      this.email,
      this.birthDay,
      this.sex,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.id,
      this.memberSeq,
      this.password,
      this.delimit,
      this.nickname,
      this.profilePicture,
      this.deleteAt,
      this.color,
      this.customerKey,
      this.activeYn})
      : super._();

  @override
  UserDTO rebuild(void Function(UserDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDTOBuilder toBuilder() => new UserDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDTO &&
        seq == other.seq &&
        name == other.name &&
        add1 == other.add1 &&
        add2 == other.add2 &&
        zipCode == other.zipCode &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        birthDay == other.birthDay &&
        sex == other.sex &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        id == other.id &&
        memberSeq == other.memberSeq &&
        password == other.password &&
        delimit == other.delimit &&
        nickname == other.nickname &&
        profilePicture == other.profilePicture &&
        deleteAt == other.deleteAt &&
        color == other.color &&
        customerKey == other.customerKey &&
        activeYn == other.activeYn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, add1.hashCode);
    _$hash = $jc(_$hash, add2.hashCode);
    _$hash = $jc(_$hash, zipCode.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, birthDay.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, memberSeq.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, delimit.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jc(_$hash, deleteAt.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, customerKey.hashCode);
    _$hash = $jc(_$hash, activeYn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserDTO')
          ..add('seq', seq)
          ..add('name', name)
          ..add('add1', add1)
          ..add('add2', add2)
          ..add('zipCode', zipCode)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('birthDay', birthDay)
          ..add('sex', sex)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('id', id)
          ..add('memberSeq', memberSeq)
          ..add('password', password)
          ..add('delimit', delimit)
          ..add('nickname', nickname)
          ..add('profilePicture', profilePicture)
          ..add('deleteAt', deleteAt)
          ..add('color', color)
          ..add('customerKey', customerKey)
          ..add('activeYn', activeYn))
        .toString();
  }
}

class UserDTOBuilder implements Builder<UserDTO, UserDTOBuilder> {
  _$UserDTO? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

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

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _birthDay;
  String? get birthDay => _$this._birthDay;
  set birthDay(String? birthDay) => _$this._birthDay = birthDay;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

  String? _delYn;
  String? get delYn => _$this._delYn;
  set delYn(String? delYn) => _$this._delYn = delYn;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

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

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  String? _profilePicture;
  String? get profilePicture => _$this._profilePicture;
  set profilePicture(String? profilePicture) =>
      _$this._profilePicture = profilePicture;

  String? _deleteAt;
  String? get deleteAt => _$this._deleteAt;
  set deleteAt(String? deleteAt) => _$this._deleteAt = deleteAt;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _customerKey;
  String? get customerKey => _$this._customerKey;
  set customerKey(String? customerKey) => _$this._customerKey = customerKey;

  String? _activeYn;
  String? get activeYn => _$this._activeYn;
  set activeYn(String? activeYn) => _$this._activeYn = activeYn;

  UserDTOBuilder() {
    UserDTO._defaults(this);
  }

  UserDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _name = $v.name;
      _add1 = $v.add1;
      _add2 = $v.add2;
      _zipCode = $v.zipCode;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _birthDay = $v.birthDay;
      _sex = $v.sex;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _id = $v.id;
      _memberSeq = $v.memberSeq;
      _password = $v.password;
      _delimit = $v.delimit;
      _nickname = $v.nickname;
      _profilePicture = $v.profilePicture;
      _deleteAt = $v.deleteAt;
      _color = $v.color;
      _customerKey = $v.customerKey;
      _activeYn = $v.activeYn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDTO;
  }

  @override
  void update(void Function(UserDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserDTO build() => _build();

  _$UserDTO _build() {
    final _$result = _$v ??
        new _$UserDTO._(
            seq: seq,
            name: name,
            add1: add1,
            add2: add2,
            zipCode: zipCode,
            phoneNumber: phoneNumber,
            email: email,
            birthDay: birthDay,
            sex: sex,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            id: id,
            memberSeq: memberSeq,
            password: password,
            delimit: delimit,
            nickname: nickname,
            profilePicture: profilePicture,
            deleteAt: deleteAt,
            color: color,
            customerKey: customerKey,
            activeYn: activeYn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
