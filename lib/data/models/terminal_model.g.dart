// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TerminalModel extends TerminalModel {
  @override
  final int? seq;
  @override
  final String? delYn;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? carNum;
  @override
  final String? phoneNumber;
  @override
  final String? status;

  factory _$TerminalModel([void Function(TerminalModelBuilder)? updates]) =>
      (new TerminalModelBuilder()..update(updates))._build();

  _$TerminalModel._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.carNum,
      this.phoneNumber,
      this.status})
      : super._();

  @override
  TerminalModel rebuild(void Function(TerminalModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminalModelBuilder toBuilder() => new TerminalModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminalModel &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        carNum == other.carNum &&
        phoneNumber == other.phoneNumber &&
        status == other.status;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, carNum.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TerminalModel')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('carNum', carNum)
          ..add('phoneNumber', phoneNumber)
          ..add('status', status))
        .toString();
  }
}

class TerminalModelBuilder
    implements Builder<TerminalModel, TerminalModelBuilder> {
  _$TerminalModel? _$v;

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

  String? _carNum;
  String? get carNum => _$this._carNum;
  set carNum(String? carNum) => _$this._carNum = carNum;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  TerminalModelBuilder() {
    TerminalModel._defaults(this);
  }

  TerminalModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _carNum = $v.carNum;
      _phoneNumber = $v.phoneNumber;
      _status = $v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TerminalModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminalModel;
  }

  @override
  void update(void Function(TerminalModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerminalModel build() => _build();

  _$TerminalModel _build() {
    final _$result = _$v ??
        new _$TerminalModel._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            carNum: carNum,
            phoneNumber: phoneNumber,
            status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
