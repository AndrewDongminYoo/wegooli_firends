// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_car_detail_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceCarDetailRequest extends ServiceCarDetailRequest {
  @override
  final String? serviceSeq;

  factory _$ServiceCarDetailRequest(
          [void Function(ServiceCarDetailRequestBuilder)? updates]) =>
      (new ServiceCarDetailRequestBuilder()..update(updates))._build();

  _$ServiceCarDetailRequest._({this.serviceSeq}) : super._();

  @override
  ServiceCarDetailRequest rebuild(
          void Function(ServiceCarDetailRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceCarDetailRequestBuilder toBuilder() =>
      new ServiceCarDetailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceCarDetailRequest && serviceSeq == other.serviceSeq;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, serviceSeq.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceCarDetailRequest')
          ..add('serviceSeq', serviceSeq))
        .toString();
  }
}

class ServiceCarDetailRequestBuilder
    implements
        Builder<ServiceCarDetailRequest, ServiceCarDetailRequestBuilder> {
  _$ServiceCarDetailRequest? _$v;

  String? _serviceSeq;
  String? get serviceSeq => _$this._serviceSeq;
  set serviceSeq(String? serviceSeq) => _$this._serviceSeq = serviceSeq;

  ServiceCarDetailRequestBuilder() {
    ServiceCarDetailRequest._defaults(this);
  }

  ServiceCarDetailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _serviceSeq = $v.serviceSeq;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceCarDetailRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceCarDetailRequest;
  }

  @override
  void update(void Function(ServiceCarDetailRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceCarDetailRequest build() => _build();

  _$ServiceCarDetailRequest _build() {
    final _$result =
        _$v ?? new _$ServiceCarDetailRequest._(serviceSeq: serviceSeq);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
