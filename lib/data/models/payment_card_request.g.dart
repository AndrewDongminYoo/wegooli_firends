// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentCardRequest extends PaymentCardRequest {
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

  factory _$PaymentCardRequest(
          [void Function(PaymentCardRequestBuilder)? updates]) =>
      (new PaymentCardRequestBuilder()..update(updates))._build();

  _$PaymentCardRequest._(
      {this.memberSeq,
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
  PaymentCardRequest rebuild(
          void Function(PaymentCardRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentCardRequestBuilder toBuilder() =>
      new PaymentCardRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentCardRequest &&
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
    return (newBuiltValueToStringHelper(r'PaymentCardRequest')
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

class PaymentCardRequestBuilder
    implements Builder<PaymentCardRequest, PaymentCardRequestBuilder> {
  _$PaymentCardRequest? _$v;

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

  PaymentCardRequestBuilder() {
    PaymentCardRequest._defaults(this);
  }

  PaymentCardRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(PaymentCardRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentCardRequest;
  }

  @override
  void update(void Function(PaymentCardRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentCardRequest build() => _build();

  _$PaymentCardRequest _build() {
    final _$result = _$v ??
        new _$PaymentCardRequest._(
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
