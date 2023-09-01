// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CarModel extends CarModel {
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
  final String? model;
  @override
  final String? status;
  @override
  final int? seats;
  @override
  final String? fuelType;
  @override
  final String? segment;
  @override
  final int? fee;

  factory _$CarModel([void Function(CarModelBuilder)? updates]) =>
      (new CarModelBuilder()..update(updates))._build();

  _$CarModel._(
      {this.seq,
      this.delYn,
      this.createdAt,
      this.updatedAt,
      this.carNum,
      this.model,
      this.status,
      this.seats,
      this.fuelType,
      this.segment,
      this.fee})
      : super._();

  @override
  CarModel rebuild(void Function(CarModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarModelBuilder toBuilder() => new CarModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarModel &&
        seq == other.seq &&
        delYn == other.delYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        carNum == other.carNum &&
        model == other.model &&
        status == other.status &&
        seats == other.seats &&
        fuelType == other.fuelType &&
        segment == other.segment &&
        fee == other.fee;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, carNum.hashCode);
    _$hash = $jc(_$hash, model.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, seats.hashCode);
    _$hash = $jc(_$hash, fuelType.hashCode);
    _$hash = $jc(_$hash, segment.hashCode);
    _$hash = $jc(_$hash, fee.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarModel')
          ..add('seq', seq)
          ..add('delYn', delYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('carNum', carNum)
          ..add('model', model)
          ..add('status', status)
          ..add('seats', seats)
          ..add('fuelType', fuelType)
          ..add('segment', segment)
          ..add('fee', fee))
        .toString();
  }
}

class CarModelBuilder implements Builder<CarModel, CarModelBuilder> {
  _$CarModel? _$v;

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

  String? _model;
  String? get model => _$this._model;
  set model(String? model) => _$this._model = model;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _seats;
  int? get seats => _$this._seats;
  set seats(int? seats) => _$this._seats = seats;

  String? _fuelType;
  String? get fuelType => _$this._fuelType;
  set fuelType(String? fuelType) => _$this._fuelType = fuelType;

  String? _segment;
  String? get segment => _$this._segment;
  set segment(String? segment) => _$this._segment = segment;

  int? _fee;
  int? get fee => _$this._fee;
  set fee(int? fee) => _$this._fee = fee;

  CarModelBuilder() {
    CarModel._defaults(this);
  }

  CarModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _delYn = $v.delYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _carNum = $v.carNum;
      _model = $v.model;
      _status = $v.status;
      _seats = $v.seats;
      _fuelType = $v.fuelType;
      _segment = $v.segment;
      _fee = $v.fee;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarModel;
  }

  @override
  void update(void Function(CarModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarModel build() => _build();

  _$CarModel _build() {
    final _$result = _$v ??
        new _$CarModel._(
            seq: seq,
            delYn: delYn,
            createdAt: createdAt,
            updatedAt: updatedAt,
            carNum: carNum,
            model: model,
            status: status,
            seats: seats,
            fuelType: fuelType,
            segment: segment,
            fee: fee);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
