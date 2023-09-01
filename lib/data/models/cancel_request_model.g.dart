// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_request_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CancelRequestModel extends CancelRequestModel {
  @override
  final String? cancelReason;

  factory _$CancelRequestModel(
          [void Function(CancelRequestModelBuilder)? updates]) =>
      (new CancelRequestModelBuilder()..update(updates))._build();

  _$CancelRequestModel._({this.cancelReason}) : super._();

  @override
  CancelRequestModel rebuild(
          void Function(CancelRequestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelRequestModelBuilder toBuilder() =>
      new CancelRequestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelRequestModel && cancelReason == other.cancelReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, cancelReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CancelRequestModel')
          ..add('cancelReason', cancelReason))
        .toString();
  }
}

class CancelRequestModelBuilder
    implements Builder<CancelRequestModel, CancelRequestModelBuilder> {
  _$CancelRequestModel? _$v;

  String? _cancelReason;
  String? get cancelReason => _$this._cancelReason;
  set cancelReason(String? cancelReason) => _$this._cancelReason = cancelReason;

  CancelRequestModelBuilder() {
    CancelRequestModel._defaults(this);
  }

  CancelRequestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _cancelReason = $v.cancelReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelRequestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelRequestModel;
  }

  @override
  void update(void Function(CancelRequestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelRequestModel build() => _build();

  _$CancelRequestModel _build() {
    final _$result =
        _$v ?? new _$CancelRequestModel._(cancelReason: cancelReason);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
