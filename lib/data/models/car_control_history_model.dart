// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'car_control_history_model.g.dart';

/// CarControlHistoryModel
///
/// Properties:
/// * [seq]
/// * [createdAt]
/// * [terminalSeq]
/// * [carNum]
/// * [accountId]
/// * [context]
/// * [successYn]
@BuiltValue()
abstract class CarControlHistoryModel
    implements Built<CarControlHistoryModel, CarControlHistoryModelBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'terminalSeq')
  int? get terminalSeq;

  @BuiltValueField(wireName: r'carNum')
  String? get carNum;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'context')
  String? get context;

  @BuiltValueField(wireName: r'successYn')
  String? get successYn;

  CarControlHistoryModel._();

  factory CarControlHistoryModel(
          [void updates(CarControlHistoryModelBuilder b)]) =
      _$CarControlHistoryModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CarControlHistoryModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CarControlHistoryModel> get serializer =>
      _$CarControlHistoryModelSerializer();
}

class _$CarControlHistoryModelSerializer
    implements PrimitiveSerializer<CarControlHistoryModel> {
  @override
  final Iterable<Type> types = const [
    CarControlHistoryModel,
    _$CarControlHistoryModel
  ];

  @override
  final String wireName = r'CarControlHistoryModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CarControlHistoryModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(object.seq,
          specifiedType: const FullType(int));
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime));
    }
    if (object.terminalSeq != null) {
      yield r'terminalSeq';
      yield serializers.serialize(object.terminalSeq,
          specifiedType: const FullType(int));
    }
    if (object.carNum != null) {
      yield r'carNum';
      yield serializers.serialize(object.carNum,
          specifiedType: const FullType(String));
    }
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(object.accountId,
          specifiedType: const FullType(String));
    }
    if (object.context != null) {
      yield r'context';
      yield serializers.serialize(object.context,
          specifiedType: const FullType(String));
    }
    if (object.successYn != null) {
      yield r'successYn';
      yield serializers.serialize(object.successYn,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CarControlHistoryModel object, {
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
    required CarControlHistoryModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.seq = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'terminalSeq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.terminalSeq = valueDes;
          break;
        case r'carNum':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carNum = valueDes;
          break;
        case r'accountId':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.accountId = valueDes;
          break;
        case r'context':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.context = valueDes;
          break;
        case r'successYn':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.successYn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CarControlHistoryModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CarControlHistoryModelBuilder();
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
