// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_option.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviceOption extends DeviceOption {
  @override
  final int? seq;
  @override
  final String? optName;

  factory _$DeviceOption([void Function(DeviceOptionBuilder)? updates]) =>
      (new DeviceOptionBuilder()..update(updates))._build();

  _$DeviceOption._({this.seq, this.optName}) : super._();

  @override
  DeviceOption rebuild(void Function(DeviceOptionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviceOptionBuilder toBuilder() => new DeviceOptionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviceOption &&
        seq == other.seq &&
        optName == other.optName;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, optName.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviceOption')
          ..add('seq', seq)
          ..add('optName', optName))
        .toString();
  }
}

class DeviceOptionBuilder
    implements Builder<DeviceOption, DeviceOptionBuilder> {
  _$DeviceOption? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  String? _optName;
  String? get optName => _$this._optName;
  set optName(String? optName) => _$this._optName = optName;

  DeviceOptionBuilder() {
    DeviceOption._defaults(this);
  }

  DeviceOptionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _optName = $v.optName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviceOption other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DeviceOption;
  }

  @override
  void update(void Function(DeviceOptionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviceOption build() => _build();

  _$DeviceOption _build() {
    final _$result = _$v ?? new _$DeviceOption._(seq: seq, optName: optName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
