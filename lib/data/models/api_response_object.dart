// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';

part 'api_response_object.g.dart';

/// ApiResponseObject
///
/// Properties:
/// * [result]
/// * [resultCode]
/// * [resultMsg]
@BuiltValue()
abstract class ApiResponseObject
    implements Built<ApiResponseObject, ApiResponseObjectBuilder> {
  @BuiltValueField(wireName: r'result')
  JsonObject? get result;

  @BuiltValueField(wireName: r'resultCode')
  int? get resultCode;

  @BuiltValueField(wireName: r'resultMsg')
  String? get resultMsg;

  ApiResponseObject._();

  factory ApiResponseObject([void updates(ApiResponseObjectBuilder b)]) =
      _$ApiResponseObject;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiResponseObjectBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiResponseObject> get serializer =>
      _$ApiResponseObjectSerializer();
}

class _$ApiResponseObjectSerializer
    implements PrimitiveSerializer<ApiResponseObject> {
  @override
  final Iterable<Type> types = const [ApiResponseObject, _$ApiResponseObject];

  @override
  final String wireName = r'ApiResponseObject';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiResponseObject object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.result != null) {
      yield r'result';
      yield serializers.serialize(
        object.result,
        specifiedType: const FullType(JsonObject),
      );
    }
    if (object.resultCode != null) {
      yield r'resultCode';
      yield serializers.serialize(
        object.resultCode,
        specifiedType: const FullType(int),
      );
    }
    if (object.resultMsg != null) {
      yield r'resultMsg';
      yield serializers.serialize(
        object.resultMsg,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiResponseObject object, {
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
    required ApiResponseObjectBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.result = valueDes;
          break;
        case r'resultCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.resultCode = valueDes;
          break;
        case r'resultMsg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.resultMsg = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiResponseObject deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiResponseObjectBuilder();
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
