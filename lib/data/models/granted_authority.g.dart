// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'granted_authority.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GrantedAuthority extends GrantedAuthority {
  @override
  final String? authority;

  factory _$GrantedAuthority(
          [void Function(GrantedAuthorityBuilder)? updates]) =>
      (new GrantedAuthorityBuilder()..update(updates))._build();

  _$GrantedAuthority._({this.authority}) : super._();

  @override
  GrantedAuthority rebuild(void Function(GrantedAuthorityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GrantedAuthorityBuilder toBuilder() =>
      new GrantedAuthorityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrantedAuthority && authority == other.authority;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authority.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GrantedAuthority')
          ..add('authority', authority))
        .toString();
  }
}

class GrantedAuthorityBuilder
    implements Builder<GrantedAuthority, GrantedAuthorityBuilder> {
  _$GrantedAuthority? _$v;

  String? _authority;
  String? get authority => _$this._authority;
  set authority(String? authority) => _$this._authority = authority;

  GrantedAuthorityBuilder() {
    GrantedAuthority._defaults(this);
  }

  GrantedAuthorityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authority = $v.authority;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GrantedAuthority other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GrantedAuthority;
  }

  @override
  void update(void Function(GrantedAuthorityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GrantedAuthority build() => _build();

  _$GrantedAuthority _build() {
    final _$result = _$v ?? new _$GrantedAuthority._(authority: authority);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
