// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_agreement_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountAgreementRequest extends AccountAgreementRequest {
  @override
  final String? classification;
  @override
  final String? accountId;
  @override
  final String? agreeYn;

  factory _$AccountAgreementRequest(
          [void Function(AccountAgreementRequestBuilder)? updates]) =>
      (new AccountAgreementRequestBuilder()..update(updates))._build();

  _$AccountAgreementRequest._(
      {this.classification, this.accountId, this.agreeYn})
      : super._();

  @override
  AccountAgreementRequest rebuild(
          void Function(AccountAgreementRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountAgreementRequestBuilder toBuilder() =>
      new AccountAgreementRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountAgreementRequest &&
        classification == other.classification &&
        accountId == other.accountId &&
        agreeYn == other.agreeYn;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, classification.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, agreeYn.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountAgreementRequest')
          ..add('classification', classification)
          ..add('accountId', accountId)
          ..add('agreeYn', agreeYn))
        .toString();
  }
}

class AccountAgreementRequestBuilder
    implements
        Builder<AccountAgreementRequest, AccountAgreementRequestBuilder> {
  _$AccountAgreementRequest? _$v;

  String? _classification;
  String? get classification => _$this._classification;
  set classification(String? classification) =>
      _$this._classification = classification;

  String? _accountId;
  String? get accountId => _$this._accountId;
  set accountId(String? accountId) => _$this._accountId = accountId;

  String? _agreeYn;
  String? get agreeYn => _$this._agreeYn;
  set agreeYn(String? agreeYn) => _$this._agreeYn = agreeYn;

  AccountAgreementRequestBuilder() {
    AccountAgreementRequest._defaults(this);
  }

  AccountAgreementRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classification = $v.classification;
      _accountId = $v.accountId;
      _agreeYn = $v.agreeYn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountAgreementRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountAgreementRequest;
  }

  @override
  void update(void Function(AccountAgreementRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountAgreementRequest build() => _build();

  _$AccountAgreementRequest _build() {
    final _$result = _$v ??
        new _$AccountAgreementRequest._(
            classification: classification,
            accountId: accountId,
            agreeYn: agreeYn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
