// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_history_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CarHistoryDTO extends CarHistoryDTO {
  @override
  final int? seq;
  @override
  final int? terminalSeq;
  @override
  final String? carNum;
  @override
  final String? status;
  @override
  final String? lat;
  @override
  final String? lon;
  @override
  final int? volt;
  @override
  final int? fuel;
  @override
  final String? flDoorClose;
  @override
  final String? frDoorClose;
  @override
  final String? blDoorClose;
  @override
  final String? brDoorClose;
  @override
  final int? distance;
  @override
  final int? speed;
  @override
  final String? flDoorLock;
  @override
  final String? frDoorLock;
  @override
  final String? blDoorLock;
  @override
  final String? brDoorLock;
  @override
  final String? createdAt;

  factory _$CarHistoryDTO([void Function(CarHistoryDTOBuilder)? updates]) =>
      (new CarHistoryDTOBuilder()..update(updates))._build();

  _$CarHistoryDTO._(
      {this.seq,
      this.terminalSeq,
      this.carNum,
      this.status,
      this.lat,
      this.lon,
      this.volt,
      this.fuel,
      this.flDoorClose,
      this.frDoorClose,
      this.blDoorClose,
      this.brDoorClose,
      this.distance,
      this.speed,
      this.flDoorLock,
      this.frDoorLock,
      this.blDoorLock,
      this.brDoorLock,
      this.createdAt})
      : super._();

  @override
  CarHistoryDTO rebuild(void Function(CarHistoryDTOBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CarHistoryDTOBuilder toBuilder() => new CarHistoryDTOBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CarHistoryDTO &&
        seq == other.seq &&
        terminalSeq == other.terminalSeq &&
        carNum == other.carNum &&
        status == other.status &&
        lat == other.lat &&
        lon == other.lon &&
        volt == other.volt &&
        fuel == other.fuel &&
        flDoorClose == other.flDoorClose &&
        frDoorClose == other.frDoorClose &&
        blDoorClose == other.blDoorClose &&
        brDoorClose == other.brDoorClose &&
        distance == other.distance &&
        speed == other.speed &&
        flDoorLock == other.flDoorLock &&
        frDoorLock == other.frDoorLock &&
        blDoorLock == other.blDoorLock &&
        brDoorLock == other.brDoorLock &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, terminalSeq.hashCode);
    _$hash = $jc(_$hash, carNum.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lon.hashCode);
    _$hash = $jc(_$hash, volt.hashCode);
    _$hash = $jc(_$hash, fuel.hashCode);
    _$hash = $jc(_$hash, flDoorClose.hashCode);
    _$hash = $jc(_$hash, frDoorClose.hashCode);
    _$hash = $jc(_$hash, blDoorClose.hashCode);
    _$hash = $jc(_$hash, brDoorClose.hashCode);
    _$hash = $jc(_$hash, distance.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, flDoorLock.hashCode);
    _$hash = $jc(_$hash, frDoorLock.hashCode);
    _$hash = $jc(_$hash, blDoorLock.hashCode);
    _$hash = $jc(_$hash, brDoorLock.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CarHistoryDTO')
          ..add('seq', seq)
          ..add('terminalSeq', terminalSeq)
          ..add('carNum', carNum)
          ..add('status', status)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('volt', volt)
          ..add('fuel', fuel)
          ..add('flDoorClose', flDoorClose)
          ..add('frDoorClose', frDoorClose)
          ..add('blDoorClose', blDoorClose)
          ..add('brDoorClose', brDoorClose)
          ..add('distance', distance)
          ..add('speed', speed)
          ..add('flDoorLock', flDoorLock)
          ..add('frDoorLock', frDoorLock)
          ..add('blDoorLock', blDoorLock)
          ..add('brDoorLock', brDoorLock)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class CarHistoryDTOBuilder
    implements Builder<CarHistoryDTO, CarHistoryDTOBuilder> {
  _$CarHistoryDTO? _$v;

  int? _seq;
  int? get seq => _$this._seq;
  set seq(int? seq) => _$this._seq = seq;

  int? _terminalSeq;
  int? get terminalSeq => _$this._terminalSeq;
  set terminalSeq(int? terminalSeq) => _$this._terminalSeq = terminalSeq;

  String? _carNum;
  String? get carNum => _$this._carNum;
  set carNum(String? carNum) => _$this._carNum = carNum;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lon;
  String? get lon => _$this._lon;
  set lon(String? lon) => _$this._lon = lon;

  int? _volt;
  int? get volt => _$this._volt;
  set volt(int? volt) => _$this._volt = volt;

  int? _fuel;
  int? get fuel => _$this._fuel;
  set fuel(int? fuel) => _$this._fuel = fuel;

  String? _flDoorClose;
  String? get flDoorClose => _$this._flDoorClose;
  set flDoorClose(String? flDoorClose) => _$this._flDoorClose = flDoorClose;

  String? _frDoorClose;
  String? get frDoorClose => _$this._frDoorClose;
  set frDoorClose(String? frDoorClose) => _$this._frDoorClose = frDoorClose;

  String? _blDoorClose;
  String? get blDoorClose => _$this._blDoorClose;
  set blDoorClose(String? blDoorClose) => _$this._blDoorClose = blDoorClose;

  String? _brDoorClose;
  String? get brDoorClose => _$this._brDoorClose;
  set brDoorClose(String? brDoorClose) => _$this._brDoorClose = brDoorClose;

  int? _distance;
  int? get distance => _$this._distance;
  set distance(int? distance) => _$this._distance = distance;

  int? _speed;
  int? get speed => _$this._speed;
  set speed(int? speed) => _$this._speed = speed;

  String? _flDoorLock;
  String? get flDoorLock => _$this._flDoorLock;
  set flDoorLock(String? flDoorLock) => _$this._flDoorLock = flDoorLock;

  String? _frDoorLock;
  String? get frDoorLock => _$this._frDoorLock;
  set frDoorLock(String? frDoorLock) => _$this._frDoorLock = frDoorLock;

  String? _blDoorLock;
  String? get blDoorLock => _$this._blDoorLock;
  set blDoorLock(String? blDoorLock) => _$this._blDoorLock = blDoorLock;

  String? _brDoorLock;
  String? get brDoorLock => _$this._brDoorLock;
  set brDoorLock(String? brDoorLock) => _$this._brDoorLock = brDoorLock;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  CarHistoryDTOBuilder() {
    CarHistoryDTO._defaults(this);
  }

  CarHistoryDTOBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _terminalSeq = $v.terminalSeq;
      _carNum = $v.carNum;
      _status = $v.status;
      _lat = $v.lat;
      _lon = $v.lon;
      _volt = $v.volt;
      _fuel = $v.fuel;
      _flDoorClose = $v.flDoorClose;
      _frDoorClose = $v.frDoorClose;
      _blDoorClose = $v.blDoorClose;
      _brDoorClose = $v.brDoorClose;
      _distance = $v.distance;
      _speed = $v.speed;
      _flDoorLock = $v.flDoorLock;
      _frDoorLock = $v.frDoorLock;
      _blDoorLock = $v.blDoorLock;
      _brDoorLock = $v.brDoorLock;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CarHistoryDTO other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CarHistoryDTO;
  }

  @override
  void update(void Function(CarHistoryDTOBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CarHistoryDTO build() => _build();

  _$CarHistoryDTO _build() {
    final _$result = _$v ??
        new _$CarHistoryDTO._(
            seq: seq,
            terminalSeq: terminalSeq,
            carNum: carNum,
            status: status,
            lat: lat,
            lon: lon,
            volt: volt,
            fuel: fuel,
            flDoorClose: flDoorClose,
            frDoorClose: frDoorClose,
            blDoorClose: blDoorClose,
            brDoorClose: brDoorClose,
            distance: distance,
            speed: speed,
            flDoorLock: flDoorLock,
            frDoorLock: frDoorLock,
            blDoorLock: blDoorLock,
            brDoorLock: brDoorLock,
            createdAt: createdAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
