// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'cancel_request_model.g.dart';

/// CancelRequestModel
///
/// Properties:
/// * [cancelReason]
@BuiltValue()
abstract class CancelRequestModel
    implements Built<CancelRequestModel, CancelRequestModelBuilder> {
  @BuiltValueField(wireName: r'cancelReason')
  String? get cancelReason;

  CancelRequestModel._();

  factory CancelRequestModel([void updates(CancelRequestModelBuilder b)]) =
      _$CancelRequestModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CancelRequestModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CancelRequestModel> get serializer =>
      _$CancelRequestModelSerializer();
}

class _$CancelRequestModelSerializer
    implements PrimitiveSerializer<CancelRequestModel> {
  @override
  final Iterable<Type> types = const [CancelRequestModel, _$CancelRequestModel];

  @override
  final String wireName = r'CancelRequestModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CancelRequestModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cancelReason != null) {
      yield r'cancelReason';
      yield serializers.serialize(
        object.cancelReason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CancelRequestModel object, {
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
    required CancelRequestModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cancelReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cancelReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CancelRequestModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CancelRequestModelBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
