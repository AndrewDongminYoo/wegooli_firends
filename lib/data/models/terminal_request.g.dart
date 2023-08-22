// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TerminalRequest extends TerminalRequest {
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

  factory _$TerminalRequest([void Function(TerminalRequestBuilder)? updates]) =>
      (new TerminalRequestBuilder()..update(updates))._build();

  _$TerminalRequest._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.carNum,
      this.phoneNumber,
      this.status})
      : super._();

  @override
  TerminalRequest rebuild(void Function(TerminalRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TerminalRequestBuilder toBuilder() =>
      new TerminalRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TerminalRequest &&
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
    return (newBuiltValueToStringHelper(r'TerminalRequest')
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

class TerminalRequestBuilder
    implements Builder<TerminalRequest, TerminalRequestBuilder> {
  _$TerminalRequest? _$v;

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

  TerminalRequestBuilder() {
    TerminalRequest._defaults(this);
  }

  TerminalRequestBuilder get _$this {
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
  void replace(TerminalRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TerminalRequest;
  }

  @override
  void update(void Function(TerminalRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TerminalRequest build() => _build();

  _$TerminalRequest _build() {
    final _$result = _$v ??
        new _$TerminalRequest._(
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
