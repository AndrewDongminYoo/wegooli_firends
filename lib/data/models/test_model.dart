// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'test_model.g.dart';

/// TestModel
///
/// Properties:
/// * [seq]
/// * [postYn]
/// * [title]
/// * [cont]
/// * [viewCnt]
/// * [busiRegNum]
/// * [bmId]
/// * [delYn]
/// * [groupNo]
/// * [test1]
/// * [test2]
@BuiltValue()
abstract class TestModel implements Built<TestModel, TestModelBuilder> {
  @BuiltValueField(wireName: r'seq')
  String? get seq;

  @BuiltValueField(wireName: r'postYn')
  String? get postYn;

  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'cont')
  String? get cont;

  @BuiltValueField(wireName: r'viewCnt')
  String? get viewCnt;

  @BuiltValueField(wireName: r'busiRegNum')
  String? get busiRegNum;

  @BuiltValueField(wireName: r'bmId')
  String? get bmId;

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'groupNo')
  String? get groupNo;

  @BuiltValueField(wireName: r'test1')
  String? get test1;

  @BuiltValueField(wireName: r'test2')
  String? get test2;

  TestModel._();

  factory TestModel([void updates(TestModelBuilder b)]) = _$TestModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TestModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TestModel> get serializer => _$TestModelSerializer();
}

class _$TestModelSerializer implements PrimitiveSerializer<TestModel> {
  @override
  final Iterable<Type> types = const [TestModel, _$TestModel];

  @override
  final String wireName = r'TestModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TestModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(object.seq,
          specifiedType: const FullType(String));
    }
    if (object.postYn != null) {
      yield r'postYn';
      yield serializers.serialize(object.postYn,
          specifiedType: const FullType(String));
    }
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(object.title,
          specifiedType: const FullType(String));
    }
    if (object.cont != null) {
      yield r'cont';
      yield serializers.serialize(object.cont,
          specifiedType: const FullType(String));
    }
    if (object.viewCnt != null) {
      yield r'viewCnt';
      yield serializers.serialize(object.viewCnt,
          specifiedType: const FullType(String));
    }
    if (object.busiRegNum != null) {
      yield r'busiRegNum';
      yield serializers.serialize(object.busiRegNum,
          specifiedType: const FullType(String));
    }
    if (object.bmId != null) {
      yield r'bmId';
      yield serializers.serialize(object.bmId,
          specifiedType: const FullType(String));
    }
    if (object.delYn != null) {
      yield r'delYn';
      yield serializers.serialize(object.delYn,
          specifiedType: const FullType(String));
    }
    if (object.groupNo != null) {
      yield r'groupNo';
      yield serializers.serialize(object.groupNo,
          specifiedType: const FullType(String));
    }
    if (object.test1 != null) {
      yield r'test1';
      yield serializers.serialize(object.test1,
          specifiedType: const FullType(String));
    }
    if (object.test2 != null) {
      yield r'test2';
      yield serializers.serialize(object.test2,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TestModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TestModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.seq = valueDes;
          break;
        case r'postYn':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.postYn = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.title = valueDes;
          break;
        case r'cont':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.cont = valueDes;
          break;
        case r'viewCnt':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.viewCnt = valueDes;
          break;
        case r'busiRegNum':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.busiRegNum = valueDes;
          break;
        case r'bmId':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.bmId = valueDes;
          break;
        case r'delYn':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.delYn = valueDes;
          break;
        case r'groupNo':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.groupNo = valueDes;
          break;
        case r'test1':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.test1 = valueDes;
          break;
        case r'test2':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.test2 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TestModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TestModelBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(serializers, serialized,
        specifiedType: specifiedType,
        serializedList: serializedList,
        unhandled: unhandled,
        result: result);
    return result.build();
  }
}
