// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sub_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSubInfo extends UserSubInfo {
  @override
  final String? userId;
  @override
  final String? serviceSeq;
  @override
  final String? weekInfo;
  @override
  final String? timeInfo;

  factory _$UserSubInfo([void Function(UserSubInfoBuilder)? updates]) =>
      (new UserSubInfoBuilder()..update(updates))._build();

  _$UserSubInfo._({this.userId, this.serviceSeq, this.weekInfo, this.timeInfo})
      : super._();

  @override
  UserSubInfo rebuild(void Function(UserSubInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSubInfoBuilder toBuilder() => new UserSubInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSubInfo &&
        userId == other.userId &&
        serviceSeq == other.serviceSeq &&
        weekInfo == other.weekInfo &&
        timeInfo == other.timeInfo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, serviceSeq.hashCode);
    _$hash = $jc(_$hash, weekInfo.hashCode);
    _$hash = $jc(_$hash, timeInfo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSubInfo')
          ..add('userId', userId)
          ..add('serviceSeq', serviceSeq)
          ..add('weekInfo', weekInfo)
          ..add('timeInfo', timeInfo))
        .toString();
  }
}

class UserSubInfoBuilder implements Builder<UserSubInfo, UserSubInfoBuilder> {
  _$UserSubInfo? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _serviceSeq;
  String? get serviceSeq => _$this._serviceSeq;
  set serviceSeq(String? serviceSeq) => _$this._serviceSeq = serviceSeq;

  String? _weekInfo;
  String? get weekInfo => _$this._weekInfo;
  set weekInfo(String? weekInfo) => _$this._weekInfo = weekInfo;

  String? _timeInfo;
  String? get timeInfo => _$this._timeInfo;
  set timeInfo(String? timeInfo) => _$this._timeInfo = timeInfo;

  UserSubInfoBuilder() {
    UserSubInfo._defaults(this);
  }

  UserSubInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _serviceSeq = $v.serviceSeq;
      _weekInfo = $v.weekInfo;
      _timeInfo = $v.timeInfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSubInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSubInfo;
  }

  @override
  void update(void Function(UserSubInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSubInfo build() => _build();

  _$UserSubInfo _build() {
    final _$result = _$v ??
        new _$UserSubInfo._(
            userId: userId,
            serviceSeq: serviceSeq,
            weekInfo: weekInfo,
            timeInfo: timeInfo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
