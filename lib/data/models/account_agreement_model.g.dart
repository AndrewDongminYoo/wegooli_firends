// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_agreement_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AccountAgreementModel extends AccountAgreementModel {
  @override
  final String? classification;
  @override
  final String? accountId;
  @override
  final String? agreeYn;
  @override
  final String? createdAt;
  @override
  final String? updatedAt;

  factory _$AccountAgreementModel(
          [void Function(AccountAgreementModelBuilder)? updates]) =>
      (new AccountAgreementModelBuilder()..update(updates))._build();

  _$AccountAgreementModel._(
      {this.classification,
      this.accountId,
      this.agreeYn,
      this.createdAt,
      this.updatedAt})
      : super._();

  @override
  AccountAgreementModel rebuild(
          void Function(AccountAgreementModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountAgreementModelBuilder toBuilder() =>
      new AccountAgreementModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountAgreementModel &&
        classification == other.classification &&
        accountId == other.accountId &&
        agreeYn == other.agreeYn &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, classification.hashCode);
    _$hash = $jc(_$hash, accountId.hashCode);
    _$hash = $jc(_$hash, agreeYn.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AccountAgreementModel')
          ..add('classification', classification)
          ..add('accountId', accountId)
          ..add('agreeYn', agreeYn)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class AccountAgreementModelBuilder
    implements Builder<AccountAgreementModel, AccountAgreementModelBuilder> {
  _$AccountAgreementModel? _$v;

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

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  String? _updatedAt;
  String? get updatedAt => _$this._updatedAt;
  set updatedAt(String? updatedAt) => _$this._updatedAt = updatedAt;

  AccountAgreementModelBuilder() {
    AccountAgreementModel._defaults(this);
  }

  AccountAgreementModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _classification = $v.classification;
      _accountId = $v.accountId;
      _agreeYn = $v.agreeYn;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountAgreementModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AccountAgreementModel;
  }

  @override
  void update(void Function(AccountAgreementModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AccountAgreementModel build() => _build();

  _$AccountAgreementModel _build() {
    final _$result = _$v ??
        new _$AccountAgreementModel._(
            classification: classification,
            accountId: accountId,
            agreeYn: agreeYn,
            createdAt: createdAt,
            updatedAt: updatedAt);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
