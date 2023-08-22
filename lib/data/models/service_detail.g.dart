// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ServiceDetail extends ServiceDetail {
  @override
  final String? shareServiceSeq;
  @override
  final String? carName;
  @override
  final String? carMadeCom;
  @override
  final String? type;
  @override
  final String? fulName;
  @override
  final String? gearType;
  @override
  final String? maxRide;
  @override
  final String? distanceDriven;
  @override
  final String? carOpt;
  @override
  final BuiltList<DeviceOption>? carOptList;
  @override
  final BuiltList<UserSubInfo>? userSubInfoList;

  factory _$ServiceDetail([void Function(ServiceDetailBuilder)? updates]) =>
      (new ServiceDetailBuilder()..update(updates))._build();

  _$ServiceDetail._(
      {this.shareServiceSeq,
      this.carName,
      this.carMadeCom,
      this.type,
      this.fulName,
      this.gearType,
      this.maxRide,
      this.distanceDriven,
      this.carOpt,
      this.carOptList,
      this.userSubInfoList})
      : super._();

  @override
  ServiceDetail rebuild(void Function(ServiceDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ServiceDetailBuilder toBuilder() => new ServiceDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ServiceDetail &&
        shareServiceSeq == other.shareServiceSeq &&
        carName == other.carName &&
        carMadeCom == other.carMadeCom &&
        type == other.type &&
        fulName == other.fulName &&
        gearType == other.gearType &&
        maxRide == other.maxRide &&
        distanceDriven == other.distanceDriven &&
        carOpt == other.carOpt &&
        carOptList == other.carOptList &&
        userSubInfoList == other.userSubInfoList;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shareServiceSeq.hashCode);
    _$hash = $jc(_$hash, carName.hashCode);
    _$hash = $jc(_$hash, carMadeCom.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, fulName.hashCode);
    _$hash = $jc(_$hash, gearType.hashCode);
    _$hash = $jc(_$hash, maxRide.hashCode);
    _$hash = $jc(_$hash, distanceDriven.hashCode);
    _$hash = $jc(_$hash, carOpt.hashCode);
    _$hash = $jc(_$hash, carOptList.hashCode);
    _$hash = $jc(_$hash, userSubInfoList.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ServiceDetail')
          ..add('shareServiceSeq', shareServiceSeq)
          ..add('carName', carName)
          ..add('carMadeCom', carMadeCom)
          ..add('type', type)
          ..add('fulName', fulName)
          ..add('gearType', gearType)
          ..add('maxRide', maxRide)
          ..add('distanceDriven', distanceDriven)
          ..add('carOpt', carOpt)
          ..add('carOptList', carOptList)
          ..add('userSubInfoList', userSubInfoList))
        .toString();
  }
}

class ServiceDetailBuilder
    implements Builder<ServiceDetail, ServiceDetailBuilder> {
  _$ServiceDetail? _$v;

  String? _shareServiceSeq;
  String? get shareServiceSeq => _$this._shareServiceSeq;
  set shareServiceSeq(String? shareServiceSeq) =>
      _$this._shareServiceSeq = shareServiceSeq;

  String? _carName;
  String? get carName => _$this._carName;
  set carName(String? carName) => _$this._carName = carName;

  String? _carMadeCom;
  String? get carMadeCom => _$this._carMadeCom;
  set carMadeCom(String? carMadeCom) => _$this._carMadeCom = carMadeCom;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _fulName;
  String? get fulName => _$this._fulName;
  set fulName(String? fulName) => _$this._fulName = fulName;

  String? _gearType;
  String? get gearType => _$this._gearType;
  set gearType(String? gearType) => _$this._gearType = gearType;

  String? _maxRide;
  String? get maxRide => _$this._maxRide;
  set maxRide(String? maxRide) => _$this._maxRide = maxRide;

  String? _distanceDriven;
  String? get distanceDriven => _$this._distanceDriven;
  set distanceDriven(String? distanceDriven) =>
      _$this._distanceDriven = distanceDriven;

  String? _carOpt;
  String? get carOpt => _$this._carOpt;
  set carOpt(String? carOpt) => _$this._carOpt = carOpt;

  ListBuilder<DeviceOption>? _carOptList;
  ListBuilder<DeviceOption> get carOptList =>
      _$this._carOptList ??= new ListBuilder<DeviceOption>();
  set carOptList(ListBuilder<DeviceOption>? carOptList) =>
      _$this._carOptList = carOptList;

  ListBuilder<UserSubInfo>? _userSubInfoList;
  ListBuilder<UserSubInfo> get userSubInfoList =>
      _$this._userSubInfoList ??= new ListBuilder<UserSubInfo>();
  set userSubInfoList(ListBuilder<UserSubInfo>? userSubInfoList) =>
      _$this._userSubInfoList = userSubInfoList;

  ServiceDetailBuilder() {
    ServiceDetail._defaults(this);
  }

  ServiceDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shareServiceSeq = $v.shareServiceSeq;
      _carName = $v.carName;
      _carMadeCom = $v.carMadeCom;
      _type = $v.type;
      _fulName = $v.fulName;
      _gearType = $v.gearType;
      _maxRide = $v.maxRide;
      _distanceDriven = $v.distanceDriven;
      _carOpt = $v.carOpt;
      _carOptList = $v.carOptList?.toBuilder();
      _userSubInfoList = $v.userSubInfoList?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ServiceDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ServiceDetail;
  }

  @override
  void update(void Function(ServiceDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ServiceDetail build() => _build();

  _$ServiceDetail _build() {
    _$ServiceDetail _$result;
    try {
      _$result = _$v ??
          new _$ServiceDetail._(
              shareServiceSeq: shareServiceSeq,
              carName: carName,
              carMadeCom: carMadeCom,
              type: type,
              fulName: fulName,
              gearType: gearType,
              maxRide: maxRide,
              distanceDriven: distanceDriven,
              carOpt: carOpt,
              carOptList: _carOptList?.build(),
              userSubInfoList: _userSubInfoList?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'carOptList';
        _carOptList?.build();
        _$failedField = 'userSubInfoList';
        _userSubInfoList?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ServiceDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
