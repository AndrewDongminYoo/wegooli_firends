// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_model.g.dart';

/// PaymentModel
///
/// Properties:
/// * [paymentKey]
/// * [status]
/// * [lastTransactionKey]
/// * [orderId]
/// * [orderName]
/// * [requestedAt]
/// * [approvedAt]
/// * [cancelReason]
/// * [canceledAt]
/// * [cancelAmount]
/// * [type]
/// * [currency]
/// * [totalAmount]
/// * [balanceAmount]
/// * [suppliedAmount]
/// * [vat]
/// * [taxFreeAmount]
/// * [taxExemptionAmount]
/// * [method]
@BuiltValue()
abstract class PaymentModel
    implements Built<PaymentModel, PaymentModelBuilder> {
  @BuiltValueField(wireName: r'paymentKey')
  String? get paymentKey;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'lastTransactionKey')
  String? get lastTransactionKey;

  @BuiltValueField(wireName: r'orderId')
  String? get orderId;

  @BuiltValueField(wireName: r'orderName')
  String? get orderName;

  @BuiltValueField(wireName: r'requestedAt')
  String? get requestedAt;

  @BuiltValueField(wireName: r'approvedAt')
  String? get approvedAt;

  @BuiltValueField(wireName: r'cancelReason')
  String? get cancelReason;

  @BuiltValueField(wireName: r'canceledAt')
  String? get canceledAt;

  @BuiltValueField(wireName: r'cancelAmount')
  int? get cancelAmount;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'currency')
  String? get currency;

  @BuiltValueField(wireName: r'totalAmount')
  int? get totalAmount;

  @BuiltValueField(wireName: r'balanceAmount')
  int? get balanceAmount;

  @BuiltValueField(wireName: r'suppliedAmount')
  int? get suppliedAmount;

  @BuiltValueField(wireName: r'vat')
  int? get vat;

  @BuiltValueField(wireName: r'taxFreeAmount')
  int? get taxFreeAmount;

  @BuiltValueField(wireName: r'taxExemptionAmount')
  int? get taxExemptionAmount;

  @BuiltValueField(wireName: r'method')
  String? get method;

  PaymentModel._();

  factory PaymentModel([void updates(PaymentModelBuilder b)]) = _$PaymentModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentModel> get serializer => _$PaymentModelSerializer();
}

class _$PaymentModelSerializer implements PrimitiveSerializer<PaymentModel> {
  @override
  final Iterable<Type> types = const [PaymentModel, _$PaymentModel];

  @override
  final String wireName = r'PaymentModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.paymentKey != null) {
      yield r'paymentKey';
      yield serializers.serialize(
        object.paymentKey,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastTransactionKey != null) {
      yield r'lastTransactionKey';
      yield serializers.serialize(
        object.lastTransactionKey,
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
    if (object.requestedAt != null) {
      yield r'requestedAt';
      yield serializers.serialize(
        object.requestedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.approvedAt != null) {
      yield r'approvedAt';
      yield serializers.serialize(
        object.approvedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.cancelReason != null) {
      yield r'cancelReason';
      yield serializers.serialize(
        object.cancelReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.canceledAt != null) {
      yield r'canceledAt';
      yield serializers.serialize(
        object.canceledAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.cancelAmount != null) {
      yield r'cancelAmount';
      yield serializers.serialize(
        object.cancelAmount,
        specifiedType: const FullType(int),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(String),
      );
    }
    if (object.currency != null) {
      yield r'currency';
      yield serializers.serialize(
        object.currency,
        specifiedType: const FullType(String),
      );
    }
    if (object.totalAmount != null) {
      yield r'totalAmount';
      yield serializers.serialize(
        object.totalAmount,
        specifiedType: const FullType(int),
      );
    }
    if (object.balanceAmount != null) {
      yield r'balanceAmount';
      yield serializers.serialize(
        object.balanceAmount,
        specifiedType: const FullType(int),
      );
    }
    if (object.suppliedAmount != null) {
      yield r'suppliedAmount';
      yield serializers.serialize(
        object.suppliedAmount,
        specifiedType: const FullType(int),
      );
    }
    if (object.vat != null) {
      yield r'vat';
      yield serializers.serialize(
        object.vat,
        specifiedType: const FullType(int),
      );
    }
    if (object.taxFreeAmount != null) {
      yield r'taxFreeAmount';
      yield serializers.serialize(
        object.taxFreeAmount,
        specifiedType: const FullType(int),
      );
    }
    if (object.taxExemptionAmount != null) {
      yield r'taxExemptionAmount';
      yield serializers.serialize(
        object.taxExemptionAmount,
        specifiedType: const FullType(int),
      );
    }
    if (object.method != null) {
      yield r'method';
      yield serializers.serialize(
        object.method,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentModel object, {
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
    required PaymentModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'paymentKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.paymentKey = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.status = valueDes;
          break;
        case r'lastTransactionKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.lastTransactionKey = valueDes;
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
        case r'requestedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.requestedAt = valueDes;
          break;
        case r'approvedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.approvedAt = valueDes;
          break;
        case r'cancelReason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.cancelReason = valueDes;
          break;
        case r'canceledAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.canceledAt = valueDes;
          break;
        case r'cancelAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.cancelAmount = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.type = valueDes;
          break;
        case r'currency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currency = valueDes;
          break;
        case r'totalAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.totalAmount = valueDes;
          break;
        case r'balanceAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.balanceAmount = valueDes;
          break;
        case r'suppliedAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.suppliedAmount = valueDes;
          break;
        case r'vat':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.vat = valueDes;
          break;
        case r'taxFreeAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.taxFreeAmount = valueDes;
          break;
        case r'taxExemptionAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.taxExemptionAmount = valueDes;
          break;
        case r'method':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.method = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentModelBuilder();
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
