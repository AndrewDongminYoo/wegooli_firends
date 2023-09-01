// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_card_model.g.dart';

/// PaymentCardModel
///
/// Properties:
/// * [seq]
/// * [delYn]
/// * [createdAt]
/// * [updatedAt]
/// * [memberSeq]
/// * [cardNumber]
/// * [defaultYn]
/// * [password]
/// * [rrn]
/// * [crn]
/// * [expirationMonth]
/// * [expirationYear]
/// * [billingKey]
@BuiltValue()
abstract class PaymentCardModel
    implements Built<PaymentCardModel, PaymentCardModelBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'memberSeq')
  int? get memberSeq;

  @BuiltValueField(wireName: r'cardNumber')
  String? get cardNumber;

  @BuiltValueField(wireName: r'defaultYn')
  String? get defaultYn;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'rrn')
  String? get rrn;

  @BuiltValueField(wireName: r'crn')
  String? get crn;

  @BuiltValueField(wireName: r'expirationMonth')
  String? get expirationMonth;

  @BuiltValueField(wireName: r'expirationYear')
  String? get expirationYear;

  @BuiltValueField(wireName: r'billingKey')
  String? get billingKey;

  PaymentCardModel._();

  factory PaymentCardModel([void updates(PaymentCardModelBuilder b)]) =
      _$PaymentCardModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentCardModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentCardModel> get serializer =>
      _$PaymentCardModelSerializer();
}

class _$PaymentCardModelSerializer
    implements PrimitiveSerializer<PaymentCardModel> {
  @override
  final Iterable<Type> types = const [PaymentCardModel, _$PaymentCardModel];

  @override
  final String wireName = r'PaymentCardModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentCardModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.delYn != null) {
      yield r'delYn';
      yield serializers.serialize(
        object.delYn,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.memberSeq != null) {
      yield r'memberSeq';
      yield serializers.serialize(
        object.memberSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.cardNumber != null) {
      yield r'cardNumber';
      yield serializers.serialize(
        object.cardNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.defaultYn != null) {
      yield r'defaultYn';
      yield serializers.serialize(
        object.defaultYn,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.rrn != null) {
      yield r'rrn';
      yield serializers.serialize(
        object.rrn,
        specifiedType: const FullType(String),
      );
    }
    if (object.crn != null) {
      yield r'crn';
      yield serializers.serialize(
        object.crn,
        specifiedType: const FullType(String),
      );
    }
    if (object.expirationMonth != null) {
      yield r'expirationMonth';
      yield serializers.serialize(
        object.expirationMonth,
        specifiedType: const FullType(String),
      );
    }
    if (object.expirationYear != null) {
      yield r'expirationYear';
      yield serializers.serialize(
        object.expirationYear,
        specifiedType: const FullType(String),
      );
    }
    if (object.billingKey != null) {
      yield r'billingKey';
      yield serializers.serialize(
        object.billingKey,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentCardModel object, {
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
    required PaymentCardModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.seq = valueDes;
          break;
        case r'delYn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.delYn = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'memberSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberSeq = valueDes;
          break;
        case r'cardNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cardNumber = valueDes;
          break;
        case r'defaultYn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.defaultYn = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'rrn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rrn = valueDes;
          break;
        case r'crn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.crn = valueDes;
          break;
        case r'expirationMonth':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expirationMonth = valueDes;
          break;
        case r'expirationYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expirationYear = valueDes;
          break;
        case r'billingKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.billingKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentCardModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentCardModelBuilder();
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
