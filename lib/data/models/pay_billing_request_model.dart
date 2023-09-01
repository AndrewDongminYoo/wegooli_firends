// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pay_billing_request_model.g.dart';

/// PayBillingRequestModel
///
/// Properties:
/// * [amount]
/// * [customerKey]
/// * [orderId]
/// * [orderName]
@BuiltValue()
abstract class PayBillingRequestModel
    implements Built<PayBillingRequestModel, PayBillingRequestModelBuilder> {
  @BuiltValueField(wireName: r'amount')
  int? get amount;

  @BuiltValueField(wireName: r'customerKey')
  String? get customerKey;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'orderName')
  String? get orderName;

  PayBillingRequestModel._();

  factory PayBillingRequestModel(
          [void updates(PayBillingRequestModelBuilder b)]) =
      _$PayBillingRequestModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PayBillingRequestModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PayBillingRequestModel> get serializer =>
      _$PayBillingRequestModelSerializer();
}

class _$PayBillingRequestModelSerializer
    implements PrimitiveSerializer<PayBillingRequestModel> {
  @override
  final Iterable<Type> types = const [
    PayBillingRequestModel,
    _$PayBillingRequestModel
  ];

  @override
  final String wireName = r'PayBillingRequestModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PayBillingRequestModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.amount != null) {
      yield r'amount';
      yield serializers.serialize(
        object.amount,
        specifiedType: const FullType(int),
      );
    }
    if (object.customerKey != null) {
      yield r'customerKey';
      yield serializers.serialize(
        object.customerKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderId != null) {
      yield r'orderId';
      yield serializers.serialize(
        object.orderId,
        specifiedType: const FullType(String),
      );
    }
    if (object.orderName != null) {
      yield r'orderName';
      yield serializers.serialize(
        object.orderName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PayBillingRequestModel object, {
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
    required PayBillingRequestModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'amount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.amount = valueDes;
          break;
        case r'customerKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerKey = valueDes;
          break;
        case r'orderId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderId = valueDes;
          break;
        case r'orderName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.orderName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PayBillingRequestModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PayBillingRequestModelBuilder();
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
