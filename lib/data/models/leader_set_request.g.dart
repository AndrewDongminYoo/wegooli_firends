// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leader_set_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LeaderSetRequest extends LeaderSetRequest {
  @override
  final String? userId;
  @override
  final String? serviceSeq;
  @override
  final String? maxSub;

  factory _$LeaderSetRequest(
          [void Function(LeaderSetRequestBuilder)? updates]) =>
      (new LeaderSetRequestBuilder()..update(updates))._build();

  _$LeaderSetRequest._({this.userId, this.serviceSeq, this.maxSub}) : super._();

  @override
  LeaderSetRequest rebuild(void Function(LeaderSetRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LeaderSetRequestBuilder toBuilder() =>
      new LeaderSetRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LeaderSetRequest &&
        userId == other.userId &&
        serviceSeq == other.serviceSeq &&
        maxSub == other.maxSub;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, serviceSeq.hashCode);
    _$hash = $jc(_$hash, maxSub.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LeaderSetRequest')
          ..add('userId', userId)
          ..add('serviceSeq', serviceSeq)
          ..add('maxSub', maxSub))
        .toString();
  }
}

class LeaderSetRequestBuilder
    implements Builder<LeaderSetRequest, LeaderSetRequestBuilder> {
  _$LeaderSetRequest? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _serviceSeq;
  String? get serviceSeq => _$this._serviceSeq;
  set serviceSeq(String? serviceSeq) => _$this._serviceSeq = serviceSeq;

  String? _maxSub;
  String? get maxSub => _$this._maxSub;
  set maxSub(String? maxSub) => _$this._maxSub = maxSub;

  LeaderSetRequestBuilder() {
    LeaderSetRequest._defaults(this);
  }

  LeaderSetRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _serviceSeq = $v.serviceSeq;
      _maxSub = $v.maxSub;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LeaderSetRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LeaderSetRequest;
  }

  @override
  void update(void Function(LeaderSetRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LeaderSetRequest build() => _build();

  _$LeaderSetRequest _build() {
    final _$result = _$v ??
        new _$LeaderSetRequest._(
            userId: userId, serviceSeq: serviceSeq, maxSub: maxSub);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
