// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_control_history_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CarControlHistoryModel extends CarControlHistoryModel {
  @override
  final int? seq;
  @override
  final DateTime? createdAt;
  @override
  final int? terminalSeq;
  @override
  final String? carNum;
  @override
  final String? accountId;
  @override
  final String? context;
  @override
  final String? successYn;

  factory _$CarControlHistoryModel(
          [void Function(CarControlHistoryModelBuilder)? updates]) =>
      (new CarControlHistoryModelBuilder()..update(updates))._build();

  _$CarControlHistoryModel._(
      {this.seq,
      this.createdAt,
      this.terminalSeq,
      this.carNum,
      this.accountId,
      this.context,
      this.successYn})
      : super._();

  @override
  CarControlHistoryModel rebuild(
          void Function(CarControlHistoryModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarControlHistoryModelBuilder toBuilder() =>
      new CarControlHistoryModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarControlHistoryModel &&
        seq == other.seq &&
        createdAt == other.createdAt &&
        terminalSeq == other.terminalSeq &&
        carNum == other.carNum &&
        accountId == other.accountId &&
        context == other.context &&
        successYn == other.successYn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, terminalSeq.hashCode);
    _$hash = $jc(_$hash, carNum.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, context.hashCode);
    _$hash = $jc(_$hash, successYn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarControlHistoryModel')
          ..add('seq', seq)
          ..add('createdAt', createdAt)
          ..add('terminalSeq', terminalSeq)
          ..add('carNum', carNum)
          ..add('accountId', accountId)
          ..add('context', context)
          ..add('successYn', successYn))
        .toString();
  }
}

class CarControlHistoryModelBuilder
    implements Builder<CarControlHistoryModel, CarControlHistoryModelBuilder> {
  _$CarControlHistoryModel? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _terminalSeq;
  int? get terminalSeq => _$this._terminalSeq;
  set terminalSeq(int? terminalSeq) => _$this._terminalSeq = terminalSeq;

  String? _carNum;
  String? get carNum => _$this._carNum;
  set carNum(String? carNum) => _$this._carNum = carNum;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _context;
  String? get context => _$this._context;
  set context(String? context) => _$this._context = context;

  String? _successYn;
  String? get successYn => _$this._successYn;
  set successYn(String? successYn) => _$this._successYn = successYn;

  CarControlHistoryModelBuilder() {
    CarControlHistoryModel._defaults(this);
  }

  CarControlHistoryModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _createdAt = $v.createdAt;
      _terminalSeq = $v.terminalSeq;
      _carNum = $v.carNum;
      _accountId = $v.accountId;
      _context = $v.context;
      _successYn = $v.successYn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarControlHistoryModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarControlHistoryModel;
  }

  @override
  void update(void Function(CarControlHistoryModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarControlHistoryModel build() => _build();

  _$CarControlHistoryModel _build() {
    final _$result = _$v ??
        new _$CarControlHistoryModel._(
            seq: seq,
            createdAt: createdAt,
            terminalSeq: terminalSeq,
            carNum: carNum,
            accountId: accountId,
            context: context,
            successYn: successYn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
