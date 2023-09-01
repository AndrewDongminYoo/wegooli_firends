// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentCardModel extends PaymentCardModel {
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
  final String? cardNumber;
  @override
  final String? defaultYn;
  @override
  final String? password;
  @override
  final String? rrn;
  @override
  final String? crn;
  @override
  final String? expirationMonth;
  @override
  final String? expirationYear;
  @override
  final String? billingKey;

  factory _$PaymentCardModel(
          [void Function(PaymentCardModelBuilder)? updates]) =>
      (new PaymentCardModelBuilder()..update(updates))._build();

  _$PaymentCardModel._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.memberSeq,
      this.cardNumber,
      this.defaultYn,
      this.password,
      this.rrn,
      this.crn,
      this.expirationMonth,
      this.expirationYear,
      this.billingKey})
      : super._();

  @override
  PaymentCardModel rebuild(void Function(PaymentCardModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentCardModelBuilder toBuilder() =>
      new PaymentCardModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentCardModel &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        memberSeq == other.memberSeq &&
        cardNumber == other.cardNumber &&
        defaultYn == other.defaultYn &&
        password == other.password &&
        rrn == other.rrn &&
        crn == other.crn &&
        expirationMonth == other.expirationMonth &&
        expirationYear == other.expirationYear &&
        billingKey == other.billingKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, memberSeq.hashCode);
    _$hash = $jc(_$hash, cardNumber.hashCode);
    _$hash = $jc(_$hash, defaultYn.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, rrn.hashCode);
    _$hash = $jc(_$hash, crn.hashCode);
    _$hash = $jc(_$hash, expirationMonth.hashCode);
    _$hash = $jc(_$hash, expirationYear.hashCode);
    _$hash = $jc(_$hash, billingKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentCardModel')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('memberSeq', memberSeq)
          ..add('cardNumber', cardNumber)
          ..add('defaultYn', defaultYn)
          ..add('password', password)
          ..add('rrn', rrn)
          ..add('crn', crn)
          ..add('expirationMonth', expirationMonth)
          ..add('expirationYear', expirationYear)
          ..add('billingKey', billingKey))
        .toString();
  }
}

class PaymentCardModelBuilder
    implements Builder<PaymentCardModel, PaymentCardModelBuilder> {
  _$PaymentCardModel? _$v;

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

  String? _cardNumber;
  String? get cardNumber => _$this._cardNumber;
  set cardNumber(String? cardNumber) => _$this._cardNumber = cardNumber;

  String? _defaultYn;
  String? get defaultYn => _$this._defaultYn;
  set defaultYn(String? defaultYn) => _$this._defaultYn = defaultYn;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _rrn;
  String? get rrn => _$this._rrn;
  set rrn(String? rrn) => _$this._rrn = rrn;

  String? _crn;
  String? get crn => _$this._crn;
  set crn(String? crn) => _$this._crn = crn;

  String? _expirationMonth;
  String? get expirationMonth => _$this._expirationMonth;
  set expirationMonth(String? expirationMonth) =>
      _$this._expirationMonth = expirationMonth;

  String? _expirationYear;
  String? get expirationYear => _$this._expirationYear;
  set expirationYear(String? expirationYear) =>
      _$this._expirationYear = expirationYear;

  String? _billingKey;
  String? get billingKey => _$this._billingKey;
  set billingKey(String? billingKey) => _$this._billingKey = billingKey;

  PaymentCardModelBuilder() {
    PaymentCardModel._defaults(this);
  }

  PaymentCardModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _memberSeq = $v.memberSeq;
      _cardNumber = $v.cardNumber;
      _defaultYn = $v.defaultYn;
      _password = $v.password;
      _rrn = $v.rrn;
      _crn = $v.crn;
      _expirationMonth = $v.expirationMonth;
      _expirationYear = $v.expirationYear;
      _billingKey = $v.billingKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentCardModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentCardModel;
  }

  @override
  void update(void Function(PaymentCardModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentCardModel build() => _build();

  _$PaymentCardModel _build() {
    final _$result = _$v ??
        new _$PaymentCardModel._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            memberSeq: memberSeq,
            cardNumber: cardNumber,
            defaultYn: defaultYn,
            password: password,
            rrn: rrn,
            crn: crn,
            expirationMonth: expirationMonth,
            expirationYear: expirationYear,
            billingKey: billingKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
