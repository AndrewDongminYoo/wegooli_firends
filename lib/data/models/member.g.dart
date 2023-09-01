// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Member extends Member {
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

  factory _$Member([void Function(MemberBuilder)? updates]) =>
      (new MemberBuilder()..update(updates))._build();

  _$Member._(
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
      this.updatedAt})
      : super._();

  @override
  Member rebuild(void Function(MemberBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MemberBuilder toBuilder() => new MemberBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Member &&
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
        updatedAt == other.updatedAt;
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
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Member')
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
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class MemberBuilder implements Builder<Member, MemberBuilder> {
  _$Member? _$v;

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

  MemberBuilder() {
    Member._defaults(this);
  }

  MemberBuilder get _$this {
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
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Member other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Member;
  }

  @override
  void update(void Function(MemberBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Member build() => _build();

  _$Member _build() {
    final _$result = _$v ??
        new _$Member._(
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
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
