// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_sub_info.g.dart';

/// UserSubInfo
///
/// Properties:
/// * [userId]
/// * [serviceSeq]
/// * [weekInfo]
/// * [timeInfo]
@BuiltValue()
abstract class UserSubInfo implements Built<UserSubInfo, UserSubInfoBuilder> {
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'serviceSeq')
  String? get serviceSeq;

  @BuiltValueField(wireName: r'weekInfo')
  String? get weekInfo;

  @BuiltValueField(wireName: r'timeInfo')
  String? get timeInfo;

  UserSubInfo._();

  factory UserSubInfo([void updates(UserSubInfoBuilder b)]) = _$UserSubInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSubInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSubInfo> get serializer => _$UserSubInfoSerializer();
}

class _$UserSubInfoSerializer implements PrimitiveSerializer<UserSubInfo> {
  @override
  final Iterable<Type> types = const [UserSubInfo, _$UserSubInfo];

  @override
  final String wireName = r'UserSubInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSubInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.serviceSeq != null) {
      yield r'serviceSeq';
      yield serializers.serialize(
        object.serviceSeq,
        specifiedType: const FullType(String),
      );
    }
    if (object.weekInfo != null) {
      yield r'weekInfo';
      yield serializers.serialize(
        object.weekInfo,
        specifiedType: const FullType(String),
      );
    }
    if (object.timeInfo != null) {
      yield r'timeInfo';
      yield serializers.serialize(
        object.timeInfo,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSubInfo object, {
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
    required UserSubInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'serviceSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.serviceSeq = valueDes;
          break;
        case r'weekInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.weekInfo = valueDes;
          break;
        case r'timeInfo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.timeInfo = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSubInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSubInfoBuilder();
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
