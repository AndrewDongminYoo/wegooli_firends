// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pay_billing_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PayBillingRequestModel extends PayBillingRequestModel {
  @override
  final int? amount;
  @override
  final String? customerKey;
  @override
  final String? orderId;
  @override
  final String? orderName;

  factory _$PayBillingRequestModel(
          [void Function(PayBillingRequestModelBuilder)? updates]) =>
      (new PayBillingRequestModelBuilder()..update(updates))._build();

  _$PayBillingRequestModel._(
      {this.amount, this.customerKey, this.orderId, this.orderName})
      : super._();

  @override
  PayBillingRequestModel rebuild(
          void Function(PayBillingRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PayBillingRequestModelBuilder toBuilder() =>
      new PayBillingRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PayBillingRequestModel &&
        amount == other.amount &&
        customerKey == other.customerKey &&
        orderId == other.orderId &&
        orderName == other.orderName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, amount.hashCode);
    _$hash = $jc(_$hash, customerKey.hashCode);
    _$hash = $jc(_$hash, orderId.hashCode);
    _$hash = $jc(_$hash, orderName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PayBillingRequestModel')
          ..add('amount', amount)
          ..add('customerKey', customerKey)
          ..add('orderId', orderId)
          ..add('orderName', orderName))
        .toString();
  }
}

class PayBillingRequestModelBuilder
    implements Builder<PayBillingRequestModel, PayBillingRequestModelBuilder> {
  _$PayBillingRequestModel? _$v;

  int? _amount;
  int? get amount => _$this._amount;
  set amount(int? amount) => _$this._amount = amount;

  String? _customerKey;
  String? get customerKey => _$this._customerKey;
  set customerKey(String? customerKey) => _$this._customerKey = customerKey;

  String? _orderId;
  String? get orderId => _$this._orderId;
  set orderId(String? orderId) => _$this._orderId = orderId;

  String? _orderName;
  String? get orderName => _$this._orderName;
  set orderName(String? orderName) => _$this._orderName = orderName;

  PayBillingRequestModelBuilder() {
    PayBillingRequestModel._defaults(this);
  }

  PayBillingRequestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amount = $v.amount;
      _customerKey = $v.customerKey;
      _orderId = $v.orderId;
      _orderName = $v.orderName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PayBillingRequestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PayBillingRequestModel;
  }

  @override
  void update(void Function(PayBillingRequestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PayBillingRequestModel build() => _build();

  _$PayBillingRequestModel _build() {
    final _$result = _$v ??
        new _$PayBillingRequestModel._(
            amount: amount,
            customerKey: customerKey,
            orderId: orderId,
            orderName: orderName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
