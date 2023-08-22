// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiResponseObject extends ApiResponseObject {
  @override
  final JsonObject? result;
  @override
  final int? resultCode;
  @override
  final String? resultMsg;

  factory _$ApiResponseObject(
          [void Function(ApiResponseObjectBuilder)? updates]) =>
      (new ApiResponseObjectBuilder()..update(updates))._build();

  _$ApiResponseObject._({this.result, this.resultCode, this.resultMsg})
      : super._();

  @override
  ApiResponseObject rebuild(void Function(ApiResponseObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiResponseObjectBuilder toBuilder() =>
      new ApiResponseObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiResponseObject &&
        result == other.result &&
        resultCode == other.resultCode &&
        resultMsg == other.resultMsg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jc(_$hash, resultCode.hashCode);
    _$hash = $jc(_$hash, resultMsg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiResponseObject')
          ..add('result', result)
          ..add('resultCode', resultCode)
          ..add('resultMsg', resultMsg))
        .toString();
  }
}

class ApiResponseObjectBuilder
    implements Builder<ApiResponseObject, ApiResponseObjectBuilder> {
  _$ApiResponseObject? _$v;

  JsonObject? _result;
  JsonObject? get result => _$this._result;
  set result(JsonObject? result) => _$this._result = result;

  int? _resultCode;
  int? get resultCode => _$this._resultCode;
  set resultCode(int? resultCode) => _$this._resultCode = resultCode;

  String? _resultMsg;
  String? get resultMsg => _$this._resultMsg;
  set resultMsg(String? resultMsg) => _$this._resultMsg = resultMsg;

  ApiResponseObjectBuilder() {
    ApiResponseObject._defaults(this);
  }

  ApiResponseObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _result = $v.result;
      _resultCode = $v.resultCode;
      _resultMsg = $v.resultMsg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiResponseObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ApiResponseObject;
  }

  @override
  void update(void Function(ApiResponseObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiResponseObject build() => _build();

  _$ApiResponseObject _build() {
    final _$result = _$v ??
        new _$ApiResponseObject._(
            result: result, resultCode: resultCode, resultMsg: resultMsg);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
