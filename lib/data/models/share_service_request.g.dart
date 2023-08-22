// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_service_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareServiceRequest extends ShareServiceRequest {
  @override
  final String? startMonthlyAmount;
  @override
  final String? endMonthlyAmount;

  factory _$ShareServiceRequest(
          [void Function(ShareServiceRequestBuilder)? updates]) =>
      (new ShareServiceRequestBuilder()..update(updates))._build();

  _$ShareServiceRequest._({this.startMonthlyAmount, this.endMonthlyAmount})
      : super._();

  @override
  ShareServiceRequest rebuild(
          void Function(ShareServiceRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareServiceRequestBuilder toBuilder() =>
      new ShareServiceRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareServiceRequest &&
        startMonthlyAmount == other.startMonthlyAmount &&
        endMonthlyAmount == other.endMonthlyAmount;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startMonthlyAmount.hashCode);
    _$hash = $jc(_$hash, endMonthlyAmount.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareServiceRequest')
          ..add('startMonthlyAmount', startMonthlyAmount)
          ..add('endMonthlyAmount', endMonthlyAmount))
        .toString();
  }
}

class ShareServiceRequestBuilder
    implements Builder<ShareServiceRequest, ShareServiceRequestBuilder> {
  _$ShareServiceRequest? _$v;

  String? _startMonthlyAmount;
  String? get startMonthlyAmount => _$this._startMonthlyAmount;
  set startMonthlyAmount(String? startMonthlyAmount) =>
      _$this._startMonthlyAmount = startMonthlyAmount;

  String? _endMonthlyAmount;
  String? get endMonthlyAmount => _$this._endMonthlyAmount;
  set endMonthlyAmount(String? endMonthlyAmount) =>
      _$this._endMonthlyAmount = endMonthlyAmount;

  ShareServiceRequestBuilder() {
    ShareServiceRequest._defaults(this);
  }

  ShareServiceRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startMonthlyAmount = $v.startMonthlyAmount;
      _endMonthlyAmount = $v.endMonthlyAmount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareServiceRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShareServiceRequest;
  }

  @override
  void update(void Function(ShareServiceRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareServiceRequest build() => _build();

  _$ShareServiceRequest _build() {
    final _$result = _$v ??
        new _$ShareServiceRequest._(
            startMonthlyAmount: startMonthlyAmount,
            endMonthlyAmount: endMonthlyAmount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
