// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_key_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BillingKeyRequestModel extends BillingKeyRequestModel {
  @override
  final String? cardExpirationMonth;
  @override
  final String? cardExpirationYear;
  @override
  final String? cardNumber;
  @override
  final String? customerIdentityNumber;
  @override
  final String? customerKey;

  factory _$BillingKeyRequestModel(
          [void Function(BillingKeyRequestModelBuilder)? updates]) =>
      (new BillingKeyRequestModelBuilder()..update(updates))._build();

  _$BillingKeyRequestModel._(
      {this.cardExpirationMonth,
      this.cardExpirationYear,
      this.cardNumber,
      this.customerIdentityNumber,
      this.customerKey})
      : super._();

  @override
  BillingKeyRequestModel rebuild(
          void Function(BillingKeyRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BillingKeyRequestModelBuilder toBuilder() =>
      new BillingKeyRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BillingKeyRequestModel &&
        cardExpirationMonth == other.cardExpirationMonth &&
        cardExpirationYear == other.cardExpirationYear &&
        cardNumber == other.cardNumber &&
        customerIdentityNumber == other.customerIdentityNumber &&
        customerKey == other.customerKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cardExpirationMonth.hashCode);
    _$hash = $jc(_$hash, cardExpirationYear.hashCode);
    _$hash = $jc(_$hash, cardNumber.hashCode);
    _$hash = $jc(_$hash, customerIdentityNumber.hashCode);
    _$hash = $jc(_$hash, customerKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BillingKeyRequestModel')
          ..add('cardExpirationMonth', cardExpirationMonth)
          ..add('cardExpirationYear', cardExpirationYear)
          ..add('cardNumber', cardNumber)
          ..add('customerIdentityNumber', customerIdentityNumber)
          ..add('customerKey', customerKey))
        .toString();
  }
}

class BillingKeyRequestModelBuilder
    implements Builder<BillingKeyRequestModel, BillingKeyRequestModelBuilder> {
  _$BillingKeyRequestModel? _$v;

  String? _cardExpirationMonth;
  String? get cardExpirationMonth => _$this._cardExpirationMonth;
  set cardExpirationMonth(String? cardExpirationMonth) =>
      _$this._cardExpirationMonth = cardExpirationMonth;

  String? _cardExpirationYear;
  String? get cardExpirationYear => _$this._cardExpirationYear;
  set cardExpirationYear(String? cardExpirationYear) =>
      _$this._cardExpirationYear = cardExpirationYear;

  String? _cardNumber;
  String? get cardNumber => _$this._cardNumber;
  set cardNumber(String? cardNumber) => _$this._cardNumber = cardNumber;

  String? _customerIdentityNumber;
  String? get customerIdentityNumber => _$this._customerIdentityNumber;
  set customerIdentityNumber(String? customerIdentityNumber) =>
      _$this._customerIdentityNumber = customerIdentityNumber;

  String? _customerKey;
  String? get customerKey => _$this._customerKey;
  set customerKey(String? customerKey) => _$this._customerKey = customerKey;

  BillingKeyRequestModelBuilder() {
    BillingKeyRequestModel._defaults(this);
  }

  BillingKeyRequestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cardExpirationMonth = $v.cardExpirationMonth;
      _cardExpirationYear = $v.cardExpirationYear;
      _cardNumber = $v.cardNumber;
      _customerIdentityNumber = $v.customerIdentityNumber;
      _customerKey = $v.customerKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BillingKeyRequestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BillingKeyRequestModel;
  }

  @override
  void update(void Function(BillingKeyRequestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BillingKeyRequestModel build() => _build();

  _$BillingKeyRequestModel _build() {
    final _$result = _$v ??
        new _$BillingKeyRequestModel._(
            cardExpirationMonth: cardExpirationMonth,
            cardExpirationYear: cardExpirationYear,
            cardNumber: cardNumber,
            customerIdentityNumber: customerIdentityNumber,
            customerKey: customerKey);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
