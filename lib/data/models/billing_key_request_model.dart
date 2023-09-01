// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'billing_key_request_model.g.dart';

/// BillingKeyRequestModel
///
/// Properties:
/// * [cardExpirationMonth]
/// * [cardExpirationYear]
/// * [cardNumber]
/// * [customerIdentityNumber]
/// * [customerKey]
@BuiltValue()
abstract class BillingKeyRequestModel
    implements Built<BillingKeyRequestModel, BillingKeyRequestModelBuilder> {
  @BuiltValueField(wireName: r'cardExpirationMonth')
  String? get cardExpirationMonth;

  @BuiltValueField(wireName: r'cardExpirationYear')
  String? get cardExpirationYear;

  @BuiltValueField(wireName: r'cardNumber')
  String? get cardNumber;

  @BuiltValueField(wireName: r'customerIdentityNumber')
  String? get customerIdentityNumber;

  @BuiltValueField(wireName: r'customerKey')
  String? get customerKey;

  BillingKeyRequestModel._();

  factory BillingKeyRequestModel(
          [void updates(BillingKeyRequestModelBuilder b)]) =
      _$BillingKeyRequestModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BillingKeyRequestModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<BillingKeyRequestModel> get serializer =>
      _$BillingKeyRequestModelSerializer();
}

class _$BillingKeyRequestModelSerializer
    implements PrimitiveSerializer<BillingKeyRequestModel> {
  @override
  final Iterable<Type> types = const [
    BillingKeyRequestModel,
    _$BillingKeyRequestModel
  ];

  @override
  final String wireName = r'BillingKeyRequestModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    BillingKeyRequestModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.cardExpirationMonth != null) {
      yield r'cardExpirationMonth';
      yield serializers.serialize(
        object.cardExpirationMonth,
        specifiedType: const FullType(String),
      );
    }
    if (object.cardExpirationYear != null) {
      yield r'cardExpirationYear';
      yield serializers.serialize(
        object.cardExpirationYear,
        specifiedType: const FullType(String),
      );
    }
    if (object.cardNumber != null) {
      yield r'cardNumber';
      yield serializers.serialize(
        object.cardNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerIdentityNumber != null) {
      yield r'customerIdentityNumber';
      yield serializers.serialize(
        object.customerIdentityNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.customerKey != null) {
      yield r'customerKey';
      yield serializers.serialize(
        object.customerKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    BillingKeyRequestModel object, {
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
    required BillingKeyRequestModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'cardExpirationMonth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cardExpirationMonth = valueDes;
          break;
        case r'cardExpirationYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cardExpirationYear = valueDes;
          break;
        case r'cardNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cardNumber = valueDes;
          break;
        case r'customerIdentityNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerIdentityNumber = valueDes;
          break;
        case r'customerKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  BillingKeyRequestModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = BillingKeyRequestModelBuilder();
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
