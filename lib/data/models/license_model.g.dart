// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LicenseModel extends LicenseModel {
  @override
  final int? seq;
  @override
  final String? delYn;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? memberSeq;
  @override
  final String? koreanYn;
  @override
  final String? licenseClass;
  @override
  final String? licenseArea;
  @override
  final String? licenseYear;
  @override
  final String? licenseNum;
  @override
  final String? expiredDate;
  @override
  final String? issuedDate;
  @override
  final String? signature;

  factory _$LicenseModel([void Function(LicenseModelBuilder)? updates]) =>
      (new LicenseModelBuilder()..update(updates))._build();

  _$LicenseModel._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.memberSeq,
      this.koreanYn,
      this.licenseClass,
      this.licenseArea,
      this.licenseYear,
      this.licenseNum,
      this.expiredDate,
      this.issuedDate,
      this.signature})
      : super._();

  @override
  LicenseModel rebuild(void Function(LicenseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseModelBuilder toBuilder() => new LicenseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LicenseModel &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        memberSeq == other.memberSeq &&
        koreanYn == other.koreanYn &&
        licenseClass == other.licenseClass &&
        licenseArea == other.licenseArea &&
        licenseYear == other.licenseYear &&
        licenseNum == other.licenseNum &&
        expiredDate == other.expiredDate &&
        issuedDate == other.issuedDate &&
        signature == other.signature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, memberSeq.hashCode);
    _$hash = $jc(_$hash, koreanYn.hashCode);
    _$hash = $jc(_$hash, licenseClass.hashCode);
    _$hash = $jc(_$hash, licenseArea.hashCode);
    _$hash = $jc(_$hash, licenseYear.hashCode);
    _$hash = $jc(_$hash, licenseNum.hashCode);
    _$hash = $jc(_$hash, expiredDate.hashCode);
    _$hash = $jc(_$hash, issuedDate.hashCode);
    _$hash = $jc(_$hash, signature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LicenseModel')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('memberSeq', memberSeq)
          ..add('koreanYn', koreanYn)
          ..add('licenseClass', licenseClass)
          ..add('licenseArea', licenseArea)
          ..add('licenseYear', licenseYear)
          ..add('licenseNum', licenseNum)
          ..add('expiredDate', expiredDate)
          ..add('issuedDate', issuedDate)
          ..add('signature', signature))
        .toString();
  }
}

class LicenseModelBuilder
    implements Builder<LicenseModel, LicenseModelBuilder> {
  _$LicenseModel? _$v;

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

  int? _memberSeq;
  int? get memberSeq => _$this._memberSeq;
  set memberSeq(int? memberSeq) => _$this._memberSeq = memberSeq;

  String? _koreanYn;
  String? get koreanYn => _$this._koreanYn;
  set koreanYn(String? koreanYn) => _$this._koreanYn = koreanYn;

  String? _licenseClass;
  String? get licenseClass => _$this._licenseClass;
  set licenseClass(String? licenseClass) => _$this._licenseClass = licenseClass;

  String? _licenseArea;
  String? get licenseArea => _$this._licenseArea;
  set licenseArea(String? licenseArea) => _$this._licenseArea = licenseArea;

  String? _licenseYear;
  String? get licenseYear => _$this._licenseYear;
  set licenseYear(String? licenseYear) => _$this._licenseYear = licenseYear;

  String? _licenseNum;
  String? get licenseNum => _$this._licenseNum;
  set licenseNum(String? licenseNum) => _$this._licenseNum = licenseNum;

  String? _expiredDate;
  String? get expiredDate => _$this._expiredDate;
  set expiredDate(String? expiredDate) => _$this._expiredDate = expiredDate;

  String? _issuedDate;
  String? get issuedDate => _$this._issuedDate;
  set issuedDate(String? issuedDate) => _$this._issuedDate = issuedDate;

  String? _signature;
  String? get signature => _$this._signature;
  set signature(String? signature) => _$this._signature = signature;

  LicenseModelBuilder() {
    LicenseModel._defaults(this);
  }

  LicenseModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _memberSeq = $v.memberSeq;
      _koreanYn = $v.koreanYn;
      _licenseClass = $v.licenseClass;
      _licenseArea = $v.licenseArea;
      _licenseYear = $v.licenseYear;
      _licenseNum = $v.licenseNum;
      _expiredDate = $v.expiredDate;
      _issuedDate = $v.issuedDate;
      _signature = $v.signature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LicenseModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LicenseModel;
  }

  @override
  void update(void Function(LicenseModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LicenseModel build() => _build();

  _$LicenseModel _build() {
    final _$result = _$v ??
        new _$LicenseModel._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            memberSeq: memberSeq,
            koreanYn: koreanYn,
            licenseClass: licenseClass,
            licenseArea: licenseArea,
            licenseYear: licenseYear,
            licenseNum: licenseNum,
            expiredDate: expiredDate,
            issuedDate: issuedDate,
            signature: signature);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
