// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SelectUserDTO extends SelectUserDTO {
  @override
  final String? id;
  @override
  final int? memberSeq;
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
  final String? birthday;
  @override
  final String? sex;
  @override
  final String? delimit;
  @override
  final String? nickname;
  @override
  final String? profilePicture;
  @override
  final String? color;
  @override
  final String? deleteAt;
  @override
  final String? delYnMember;
  @override
  final String? delYnAccount;
  @override
  final String? createdAtMember;
  @override
  final String? createdAtAccount;

  factory _$SelectUserDTO([void Function(SelectUserDTOBuilder)? updates]) =>
      (new SelectUserDTOBuilder()..update(updates))._build();

  _$SelectUserDTO._(
      {this.id,
      this.memberSeq,
      this.name,
      this.add1,
      this.add2,
      this.zipCode,
      this.phoneNumber,
      this.email,
      this.birthday,
      this.sex,
      this.delimit,
      this.nickname,
      this.profilePicture,
      this.color,
      this.deleteAt,
      this.delYnMember,
      this.delYnAccount,
      this.createdAtMember,
      this.createdAtAccount})
      : super._();

  @override
  SelectUserDTO rebuild(void Function(SelectUserDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SelectUserDTOBuilder toBuilder() => new SelectUserDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectUserDTO &&
        id == other.id &&
        memberSeq == other.memberSeq &&
        name == other.name &&
        add1 == other.add1 &&
        add2 == other.add2 &&
        zipCode == other.zipCode &&
        phoneNumber == other.phoneNumber &&
        email == other.email &&
        birthday == other.birthday &&
        sex == other.sex &&
        delimit == other.delimit &&
        nickname == other.nickname &&
        profilePicture == other.profilePicture &&
        color == other.color &&
        deleteAt == other.deleteAt &&
        delYnMember == other.delYnMember &&
        delYnAccount == other.delYnAccount &&
        createdAtMember == other.createdAtMember &&
        createdAtAccount == other.createdAtAccount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, memberSeq.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, add1.hashCode);
    _$hash = $jc(_$hash, add2.hashCode);
    _$hash = $jc(_$hash, zipCode.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, birthday.hashCode);
    _$hash = $jc(_$hash, sex.hashCode);
    _$hash = $jc(_$hash, delimit.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, profilePicture.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, deleteAt.hashCode);
    _$hash = $jc(_$hash, delYnMember.hashCode);
    _$hash = $jc(_$hash, delYnAccount.hashCode);
    _$hash = $jc(_$hash, createdAtMember.hashCode);
    _$hash = $jc(_$hash, createdAtAccount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SelectUserDTO')
          ..add('id', id)
          ..add('memberSeq', memberSeq)
          ..add('name', name)
          ..add('add1', add1)
          ..add('add2', add2)
          ..add('zipCode', zipCode)
          ..add('phoneNumber', phoneNumber)
          ..add('email', email)
          ..add('birthday', birthday)
          ..add('sex', sex)
          ..add('delimit', delimit)
          ..add('nickname', nickname)
          ..add('profilePicture', profilePicture)
          ..add('color', color)
          ..add('deleteAt', deleteAt)
          ..add('delYnMember', delYnMember)
          ..add('delYnAccount', delYnAccount)
          ..add('createdAtMember', createdAtMember)
          ..add('createdAtAccount', createdAtAccount))
        .toString();
  }
}

class SelectUserDTOBuilder
    implements Builder<SelectUserDTO, SelectUserDTOBuilder> {
  _$SelectUserDTO? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _memberSeq;
  int? get memberSeq => _$this._memberSeq;
  set memberSeq(int? memberSeq) => _$this._memberSeq = memberSeq;

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

  String? _birthday;
  String? get birthday => _$this._birthday;
  set birthday(String? birthday) => _$this._birthday = birthday;

  String? _sex;
  String? get sex => _$this._sex;
  set sex(String? sex) => _$this._sex = sex;

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

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  String? _deleteAt;
  String? get deleteAt => _$this._deleteAt;
  set deleteAt(String? deleteAt) => _$this._deleteAt = deleteAt;

  String? _delYnMember;
  String? get delYnMember => _$this._delYnMember;
  set delYnMember(String? delYnMember) => _$this._delYnMember = delYnMember;

  String? _delYnAccount;
  String? get delYnAccount => _$this._delYnAccount;
  set delYnAccount(String? delYnAccount) => _$this._delYnAccount = delYnAccount;

  String? _createdAtMember;
  String? get createdAtMember => _$this._createdAtMember;
  set createdAtMember(String? createdAtMember) =>
      _$this._createdAtMember = createdAtMember;

  String? _createdAtAccount;
  String? get createdAtAccount => _$this._createdAtAccount;
  set createdAtAccount(String? createdAtAccount) =>
      _$this._createdAtAccount = createdAtAccount;

  SelectUserDTOBuilder() {
    SelectUserDTO._defaults(this);
  }

  SelectUserDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _memberSeq = $v.memberSeq;
      _name = $v.name;
      _add1 = $v.add1;
      _add2 = $v.add2;
      _zipCode = $v.zipCode;
      _phoneNumber = $v.phoneNumber;
      _email = $v.email;
      _birthday = $v.birthday;
      _sex = $v.sex;
      _delimit = $v.delimit;
      _nickname = $v.nickname;
      _profilePicture = $v.profilePicture;
      _color = $v.color;
      _deleteAt = $v.deleteAt;
      _delYnMember = $v.delYnMember;
      _delYnAccount = $v.delYnAccount;
      _createdAtMember = $v.createdAtMember;
      _createdAtAccount = $v.createdAtAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectUserDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectUserDTO;
  }

  @override
  void update(void Function(SelectUserDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SelectUserDTO build() => _build();

  _$SelectUserDTO _build() {
    final _$result = _$v ??
        new _$SelectUserDTO._(
            id: id,
            memberSeq: memberSeq,
            name: name,
            add1: add1,
            add2: add2,
            zipCode: zipCode,
            phoneNumber: phoneNumber,
            email: email,
            birthday: birthday,
            sex: sex,
            delimit: delimit,
            nickname: nickname,
            profilePicture: profilePicture,
            color: color,
            deleteAt: deleteAt,
            delYnMember: delYnMember,
            delYnAccount: delYnAccount,
            createdAtMember: createdAtMember,
            createdAtAccount: createdAtAccount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
