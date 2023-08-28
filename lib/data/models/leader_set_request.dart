// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'leader_set_request.g.dart';

/// LeaderSetRequest
///
/// Properties:
/// * [userId]
/// * [serviceSeq]
/// * [maxSub]
@BuiltValue()
abstract class LeaderSetRequest
    implements Built<LeaderSetRequest, LeaderSetRequestBuilder> {
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'serviceSeq')
  String? get serviceSeq;

  @BuiltValueField(wireName: r'maxSub')
  String? get maxSub;

  LeaderSetRequest._();

  factory LeaderSetRequest([void updates(LeaderSetRequestBuilder b)]) =
      _$LeaderSetRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LeaderSetRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LeaderSetRequest> get serializer =>
      _$LeaderSetRequestSerializer();
}

class _$LeaderSetRequestSerializer
    implements PrimitiveSerializer<LeaderSetRequest> {
  @override
  final Iterable<Type> types = const [LeaderSetRequest, _$LeaderSetRequest];

  @override
  final String wireName = r'LeaderSetRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LeaderSetRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(object.userId,
          specifiedType: const FullType(String));
    }
    if (object.serviceSeq != null) {
      yield r'serviceSeq';
      yield serializers.serialize(object.serviceSeq,
          specifiedType: const FullType(String));
    }
    if (object.maxSub != null) {
      yield r'maxSub';
      yield serializers.serialize(object.maxSub,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LeaderSetRequest object, {
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
    required LeaderSetRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.userId = valueDes;
          break;
        case r'serviceSeq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.serviceSeq = valueDes;
          break;
        case r'maxSub':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.maxSub = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LeaderSetRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LeaderSetRequestBuilder();
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
