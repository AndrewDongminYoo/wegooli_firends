// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_service_request.g.dart';

/// ShareServiceRequest
///
/// Properties:
/// * [startMonthlyAmount]
/// * [endMonthlyAmount]
@BuiltValue()
abstract class ShareServiceRequest
    implements Built<ShareServiceRequest, ShareServiceRequestBuilder> {
  @BuiltValueField(wireName: r'startMonthlyAmount')
  String? get startMonthlyAmount;

  @BuiltValueField(wireName: r'endMonthlyAmount')
  String? get endMonthlyAmount;

  ShareServiceRequest._();

  factory ShareServiceRequest([void updates(ShareServiceRequestBuilder b)]) =
      _$ShareServiceRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareServiceRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareServiceRequest> get serializer =>
      _$ShareServiceRequestSerializer();
}

class _$ShareServiceRequestSerializer
    implements PrimitiveSerializer<ShareServiceRequest> {
  @override
  final Iterable<Type> types = const [
    ShareServiceRequest,
    _$ShareServiceRequest
  ];

  @override
  final String wireName = r'ShareServiceRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareServiceRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.startMonthlyAmount != null) {
      yield r'startMonthlyAmount';
      yield serializers.serialize(
        object.startMonthlyAmount,
        specifiedType: const FullType(String),
      );
    }
    if (object.endMonthlyAmount != null) {
      yield r'endMonthlyAmount';
      yield serializers.serialize(
        object.endMonthlyAmount,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareServiceRequest object, {
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
    required ShareServiceRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'startMonthlyAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startMonthlyAmount = valueDes;
          break;
        case r'endMonthlyAmount':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endMonthlyAmount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareServiceRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareServiceRequestBuilder();
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
