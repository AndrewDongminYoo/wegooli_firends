// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TestModel extends TestModel {
  @override
  final String? seq;
  @override
  final String? postYn;
  @override
  final String? title;
  @override
  final String? cont;
  @override
  final String? viewCnt;
  @override
  final String? busiRegNum;
  @override
  final String? bmId;
  @override
  final String? delYn;
  @override
  final String? groupNo;
  @override
  final String? test1;
  @override
  final String? test2;

  factory _$TestModel([void Function(TestModelBuilder)? updates]) =>
      (new TestModelBuilder()..update(updates))._build();

  _$TestModel._(
      {this.seq,
      this.postYn,
      this.title,
      this.cont,
      this.viewCnt,
      this.busiRegNum,
      this.bmId,
      this.delYn,
      this.groupNo,
      this.test1,
      this.test2})
      : super._();

  @override
  TestModel rebuild(void Function(TestModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TestModelBuilder toBuilder() => new TestModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TestModel &&
        seq == other.seq &&
        postYn == other.postYn &&
        title == other.title &&
        cont == other.cont &&
        viewCnt == other.viewCnt &&
        busiRegNum == other.busiRegNum &&
        bmId == other.bmId &&
        delYn == other.delYn &&
        groupNo == other.groupNo &&
        test1 == other.test1 &&
        test2 == other.test2;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, seq.hashCode);
    _$hash = $jc(_$hash, postYn.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, cont.hashCode);
    _$hash = $jc(_$hash, viewCnt.hashCode);
    _$hash = $jc(_$hash, busiRegNum.hashCode);
    _$hash = $jc(_$hash, bmId.hashCode);
    _$hash = $jc(_$hash, delYn.hashCode);
    _$hash = $jc(_$hash, groupNo.hashCode);
    _$hash = $jc(_$hash, test1.hashCode);
    _$hash = $jc(_$hash, test2.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TestModel')
          ..add('seq', seq)
          ..add('postYn', postYn)
          ..add('title', title)
          ..add('cont', cont)
          ..add('viewCnt', viewCnt)
          ..add('busiRegNum', busiRegNum)
          ..add('bmId', bmId)
          ..add('delYn', delYn)
          ..add('groupNo', groupNo)
          ..add('test1', test1)
          ..add('test2', test2))
        .toString();
  }
}

class TestModelBuilder implements Builder<TestModel, TestModelBuilder> {
  _$TestModel? _$v;

  String? _seq;
  String? get seq => _$this._seq;
  set seq(String? seq) => _$this._seq = seq;

  String? _postYn;
  String? get postYn => _$this._postYn;
  set postYn(String? postYn) => _$this._postYn = postYn;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _cont;
  String? get cont => _$this._cont;
  set cont(String? cont) => _$this._cont = cont;

  String? _viewCnt;
  String? get viewCnt => _$this._viewCnt;
  set viewCnt(String? viewCnt) => _$this._viewCnt = viewCnt;

  String? _busiRegNum;
  String? get busiRegNum => _$this._busiRegNum;
  set busiRegNum(String? busiRegNum) => _$this._busiRegNum = busiRegNum;

  String? _bmId;
  String? get bmId => _$this._bmId;
  set bmId(String? bmId) => _$this._bmId = bmId;

  String? _delYn;
  String? get delYn => _$this._delYn;
  set delYn(String? delYn) => _$this._delYn = delYn;

  String? _groupNo;
  String? get groupNo => _$this._groupNo;
  set groupNo(String? groupNo) => _$this._groupNo = groupNo;

  String? _test1;
  String? get test1 => _$this._test1;
  set test1(String? test1) => _$this._test1 = test1;

  String? _test2;
  String? get test2 => _$this._test2;
  set test2(String? test2) => _$this._test2 = test2;

  TestModelBuilder() {
    TestModel._defaults(this);
  }

  TestModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _seq = $v.seq;
      _postYn = $v.postYn;
      _title = $v.title;
      _cont = $v.cont;
      _viewCnt = $v.viewCnt;
      _busiRegNum = $v.busiRegNum;
      _bmId = $v.bmId;
      _delYn = $v.delYn;
      _groupNo = $v.groupNo;
      _test1 = $v.test1;
      _test2 = $v.test2;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TestModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TestModel;
  }

  @override
  void update(void Function(TestModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TestModel build() => _build();

  _$TestModel _build() {
    final _$result = _$v ??
        new _$TestModel._(
            seq: seq,
            postYn: postYn,
            title: title,
            cont: cont,
            viewCnt: viewCnt,
            busiRegNum: busiRegNum,
            bmId: bmId,
            delYn: delYn,
            groupNo: groupNo,
            test1: test1,
            test2: test2);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
