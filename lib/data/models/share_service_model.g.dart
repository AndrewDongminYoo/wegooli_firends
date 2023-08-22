// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_service_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareServiceModel extends ShareServiceModel {
  @override
  final int? shareServiceSeq;
  @override
  final String? serviceName;
  @override
  final String? serviceDes;
  @override
  final String? carSeq;
  @override
  final String? carName;
  @override
  final String? carImg;
  @override
  final String? monthlyPay;
  @override
  final String? personalPay;
  @override
  final String? nowSub;
  @override
  final String? maxSub;

  factory _$ShareServiceModel(
          [void Function(ShareServiceModelBuilder)? updates]) =>
      (new ShareServiceModelBuilder()..update(updates))._build();

  _$ShareServiceModel._(
      {this.shareServiceSeq,
      this.serviceName,
      this.serviceDes,
      this.carSeq,
      this.carName,
      this.carImg,
      this.monthlyPay,
      this.personalPay,
      this.nowSub,
      this.maxSub})
      : super._();

  @override
  ShareServiceModel rebuild(void Function(ShareServiceModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareServiceModelBuilder toBuilder() =>
      new ShareServiceModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareServiceModel &&
        shareServiceSeq == other.shareServiceSeq &&
        serviceName == other.serviceName &&
        serviceDes == other.serviceDes &&
        carSeq == other.carSeq &&
        carName == other.carName &&
        carImg == other.carImg &&
        monthlyPay == other.monthlyPay &&
        personalPay == other.personalPay &&
        nowSub == other.nowSub &&
        maxSub == other.maxSub;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, shareServiceSeq.hashCode);
    _$hash = $jc(_$hash, serviceName.hashCode);
    _$hash = $jc(_$hash, serviceDes.hashCode);
    _$hash = $jc(_$hash, carSeq.hashCode);
    _$hash = $jc(_$hash, carName.hashCode);
    _$hash = $jc(_$hash, carImg.hashCode);
    _$hash = $jc(_$hash, monthlyPay.hashCode);
    _$hash = $jc(_$hash, personalPay.hashCode);
    _$hash = $jc(_$hash, nowSub.hashCode);
    _$hash = $jc(_$hash, maxSub.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareServiceModel')
          ..add('shareServiceSeq', shareServiceSeq)
          ..add('serviceName', serviceName)
          ..add('serviceDes', serviceDes)
          ..add('carSeq', carSeq)
          ..add('carName', carName)
          ..add('carImg', carImg)
          ..add('monthlyPay', monthlyPay)
          ..add('personalPay', personalPay)
          ..add('nowSub', nowSub)
          ..add('maxSub', maxSub))
        .toString();
  }
}

class ShareServiceModelBuilder
    implements Builder<ShareServiceModel, ShareServiceModelBuilder> {
  _$ShareServiceModel? _$v;

  int? _shareServiceSeq;
  int? get shareServiceSeq => _$this._shareServiceSeq;
  set shareServiceSeq(int? shareServiceSeq) =>
      _$this._shareServiceSeq = shareServiceSeq;

  String? _serviceName;
  String? get serviceName => _$this._serviceName;
  set serviceName(String? serviceName) => _$this._serviceName = serviceName;

  String? _serviceDes;
  String? get serviceDes => _$this._serviceDes;
  set serviceDes(String? serviceDes) => _$this._serviceDes = serviceDes;

  String? _carSeq;
  String? get carSeq => _$this._carSeq;
  set carSeq(String? carSeq) => _$this._carSeq = carSeq;

  String? _carName;
  String? get carName => _$this._carName;
  set carName(String? carName) => _$this._carName = carName;

  String? _carImg;
  String? get carImg => _$this._carImg;
  set carImg(String? carImg) => _$this._carImg = carImg;

  String? _monthlyPay;
  String? get monthlyPay => _$this._monthlyPay;
  set monthlyPay(String? monthlyPay) => _$this._monthlyPay = monthlyPay;

  String? _personalPay;
  String? get personalPay => _$this._personalPay;
  set personalPay(String? personalPay) => _$this._personalPay = personalPay;

  String? _nowSub;
  String? get nowSub => _$this._nowSub;
  set nowSub(String? nowSub) => _$this._nowSub = nowSub;

  String? _maxSub;
  String? get maxSub => _$this._maxSub;
  set maxSub(String? maxSub) => _$this._maxSub = maxSub;

  ShareServiceModelBuilder() {
    ShareServiceModel._defaults(this);
  }

  ShareServiceModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shareServiceSeq = $v.shareServiceSeq;
      _serviceName = $v.serviceName;
      _serviceDes = $v.serviceDes;
      _carSeq = $v.carSeq;
      _carName = $v.carName;
      _carImg = $v.carImg;
      _monthlyPay = $v.monthlyPay;
      _personalPay = $v.personalPay;
      _nowSub = $v.nowSub;
      _maxSub = $v.maxSub;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareServiceModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ShareServiceModel;
  }

  @override
  void update(void Function(ShareServiceModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareServiceModel build() => _build();

  _$ShareServiceModel _build() {
    final _$result = _$v ??
        new _$ShareServiceModel._(
            shareServiceSeq: shareServiceSeq,
            serviceName: serviceName,
            serviceDes: serviceDes,
            carSeq: carSeq,
            carName: carName,
            carImg: carImg,
            monthlyPay: monthlyPay,
            personalPay: personalPay,
            nowSub: nowSub,
            maxSub: maxSub);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
