// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'service_car_detail_request.g.dart';

/// ServiceCarDetailRequest
///
/// Properties:
/// * [serviceSeq]
@BuiltValue()
abstract class ServiceCarDetailRequest
    implements Built<ServiceCarDetailRequest, ServiceCarDetailRequestBuilder> {
  @BuiltValueField(wireName: r'serviceSeq')
  String? get serviceSeq;

  ServiceCarDetailRequest._();

  factory ServiceCarDetailRequest(
          [void updates(ServiceCarDetailRequestBuilder b)]) =
      _$ServiceCarDetailRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceCarDetailRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceCarDetailRequest> get serializer =>
      _$ServiceCarDetailRequestSerializer();
}

class _$ServiceCarDetailRequestSerializer
    implements PrimitiveSerializer<ServiceCarDetailRequest> {
  @override
  final Iterable<Type> types = const [
    ServiceCarDetailRequest,
    _$ServiceCarDetailRequest
  ];

  @override
  final String wireName = r'ServiceCarDetailRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceCarDetailRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.serviceSeq != null) {
      yield r'serviceSeq';
      yield serializers.serialize(
        object.serviceSeq,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceCarDetailRequest object, {
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
    required ServiceCarDetailRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'serviceSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceSeq = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceCarDetailRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceCarDetailRequestBuilder();
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
