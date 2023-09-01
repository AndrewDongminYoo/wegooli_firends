// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PaymentModel extends PaymentModel {
  @override
  final String? paymentKey;
  @override
  final String? status;
  @override
  final String? lastTransactionKey;
  @override
  final String? orderId;
  @override
  final String? orderName;
  @override
  final String? requestedAt;
  @override
  final String? approvedAt;
  @override
  final String? cancelReason;
  @override
  final String? canceledAt;
  @override
  final int? cancelAmount;
  @override
  final String? type;
  @override
  final String? currency;
  @override
  final int? totalAmount;
  @override
  final int? balanceAmount;
  @override
  final int? suppliedAmount;
  @override
  final int? vat;
  @override
  final int? taxFreeAmount;
  @override
  final int? taxExemptionAmount;
  @override
  final String? method;

  factory _$PaymentModel([void Function(PaymentModelBuilder)? updates]) =>
      (new PaymentModelBuilder()..update(updates))._build();

  _$PaymentModel._(
      {this.paymentKey,
      this.status,
      this.lastTransactionKey,
      this.orderId,
      this.orderName,
      this.requestedAt,
      this.approvedAt,
      this.cancelReason,
      this.canceledAt,
      this.cancelAmount,
      this.type,
      this.currency,
      this.totalAmount,
      this.balanceAmount,
      this.suppliedAmount,
      this.vat,
      this.taxFreeAmount,
      this.taxExemptionAmount,
      this.method})
      : super._();

  @override
  PaymentModel rebuild(void Function(PaymentModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentModelBuilder toBuilder() => new PaymentModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentModel &&
        paymentKey == other.paymentKey &&
        status == other.status &&
        lastTransactionKey == other.lastTransactionKey &&
        orderId == other.orderId &&
        orderName == other.orderName &&
        requestedAt == other.requestedAt &&
        approvedAt == other.approvedAt &&
        cancelReason == other.cancelReason &&
        canceledAt == other.canceledAt &&
        cancelAmount == other.cancelAmount &&
        type == other.type &&
        currency == other.currency &&
        totalAmount == other.totalAmount &&
        balanceAmount == other.balanceAmount &&
        suppliedAmount == other.suppliedAmount &&
        vat == other.vat &&
        taxFreeAmount == other.taxFreeAmount &&
        taxExemptionAmount == other.taxExemptionAmount &&
        method == other.method;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paymentKey.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, lastTransactionKey.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderName.hashCode);
    _$hash = $jc(_$hash, requestedAt.hashCode);
    _$hash = $jc(_$hash, approvedAt.hashCode);
    _$hash = $jc(_$hash, cancelReason.hashCode);
    _$hash = $jc(_$hash, canceledAt.hashCode);
    _$hash = $jc(_$hash, cancelAmount.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, currency.hashCode);
    _$hash = $jc(_$hash, totalAmount.hashCode);
    _$hash = $jc(_$hash, balanceAmount.hashCode);
    _$hash = $jc(_$hash, suppliedAmount.hashCode);
    _$hash = $jc(_$hash, vat.hashCode);
    _$hash = $jc(_$hash, taxFreeAmount.hashCode);
    _$hash = $jc(_$hash, taxExemptionAmount.hashCode);
    _$hash = $jc(_$hash, method.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentModel')
          ..add('paymentKey', paymentKey)
          ..add('status', status)
          ..add('lastTransactionKey', lastTransactionKey)
          ..add('orderId', orderId)
          ..add('orderName', orderName)
          ..add('requestedAt', requestedAt)
          ..add('approvedAt', approvedAt)
          ..add('cancelReason', cancelReason)
          ..add('canceledAt', canceledAt)
          ..add('cancelAmount', cancelAmount)
          ..add('type', type)
          ..add('currency', currency)
          ..add('totalAmount', totalAmount)
          ..add('balanceAmount', balanceAmount)
          ..add('suppliedAmount', suppliedAmount)
          ..add('vat', vat)
          ..add('taxFreeAmount', taxFreeAmount)
          ..add('taxExemptionAmount', taxExemptionAmount)
          ..add('method', method))
        .toString();
  }
}

class PaymentModelBuilder
    implements Builder<PaymentModel, PaymentModelBuilder> {
  _$PaymentModel? _$v;

  String? _paymentKey;
  String? get paymentKey => _$this._paymentKey;
  set paymentKey(String? paymentKey) => _$this._paymentKey = paymentKey;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _lastTransactionKey;
  String? get lastTransactionKey => _$this._lastTransactionKey;
  set lastTransactionKey(String? lastTransactionKey) =>
      _$this._lastTransactionKey = lastTransactionKey;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _orderName;
  String? get orderName => _$this._orderName;
  set orderName(String? orderName) => _$this._orderName = orderName;

  String? _requestedAt;
  String? get requestedAt => _$this._requestedAt;
  set requestedAt(String? requestedAt) => _$this._requestedAt = requestedAt;

  String? _approvedAt;
  String? get approvedAt => _$this._approvedAt;
  set approvedAt(String? approvedAt) => _$this._approvedAt = approvedAt;

  String? _cancelReason;
  String? get cancelReason => _$this._cancelReason;
  set cancelReason(String? cancelReason) => _$this._cancelReason = cancelReason;

  String? _canceledAt;
  String? get canceledAt => _$this._canceledAt;
  set canceledAt(String? canceledAt) => _$this._canceledAt = canceledAt;

  int? _cancelAmount;
  int? get cancelAmount => _$this._cancelAmount;
  set cancelAmount(int? cancelAmount) => _$this._cancelAmount = cancelAmount;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  int? _totalAmount;
  int? get totalAmount => _$this._totalAmount;
  set totalAmount(int? totalAmount) => _$this._totalAmount = totalAmount;

  int? _balanceAmount;
  int? get balanceAmount => _$this._balanceAmount;
  set balanceAmount(int? balanceAmount) =>
      _$this._balanceAmount = balanceAmount;

  int? _suppliedAmount;
  int? get suppliedAmount => _$this._suppliedAmount;
  set suppliedAmount(int? suppliedAmount) =>
      _$this._suppliedAmount = suppliedAmount;

  int? _vat;
  int? get vat => _$this._vat;
  set vat(int? vat) => _$this._vat = vat;

  int? _taxFreeAmount;
  int? get taxFreeAmount => _$this._taxFreeAmount;
  set taxFreeAmount(int? taxFreeAmount) =>
      _$this._taxFreeAmount = taxFreeAmount;

  int? _taxExemptionAmount;
  int? get taxExemptionAmount => _$this._taxExemptionAmount;
  set taxExemptionAmount(int? taxExemptionAmount) =>
      _$this._taxExemptionAmount = taxExemptionAmount;

  String? _method;
  String? get method => _$this._method;
  set method(String? method) => _$this._method = method;

  PaymentModelBuilder() {
    PaymentModel._defaults(this);
  }

  PaymentModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentKey = $v.paymentKey;
      _status = $v.status;
      _lastTransactionKey = $v.lastTransactionKey;
      _orderId = $v.orderId;
      _orderName = $v.orderName;
      _requestedAt = $v.requestedAt;
      _approvedAt = $v.approvedAt;
      _cancelReason = $v.cancelReason;
      _canceledAt = $v.canceledAt;
      _cancelAmount = $v.cancelAmount;
      _type = $v.type;
      _currency = $v.currency;
      _totalAmount = $v.totalAmount;
      _balanceAmount = $v.balanceAmount;
      _suppliedAmount = $v.suppliedAmount;
      _vat = $v.vat;
      _taxFreeAmount = $v.taxFreeAmount;
      _taxExemptionAmount = $v.taxExemptionAmount;
      _method = $v.method;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PaymentModel;
  }

  @override
  void update(void Function(PaymentModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentModel build() => _build();

  _$PaymentModel _build() {
    final _$result = _$v ??
        new _$PaymentModel._(
            paymentKey: paymentKey,
            status: status,
            lastTransactionKey: lastTransactionKey,
            orderId: orderId,
            orderName: orderName,
            requestedAt: requestedAt,
            approvedAt: approvedAt,
            cancelReason: cancelReason,
            canceledAt: canceledAt,
            cancelAmount: cancelAmount,
            type: type,
            currency: currency,
            totalAmount: totalAmount,
            balanceAmount: balanceAmount,
            suppliedAmount: suppliedAmount,
            vat: vat,
            taxFreeAmount: taxFreeAmount,
            taxExemptionAmount: taxExemptionAmount,
            method: method);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
