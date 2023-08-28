// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'granted_authority.g.dart';

/// GrantedAuthority
///
/// Properties:
/// * [authority]
@BuiltValue()
abstract class GrantedAuthority
    implements Built<GrantedAuthority, GrantedAuthorityBuilder> {
  @BuiltValueField(wireName: r'authority')
  String? get authority;

  GrantedAuthority._();

  factory GrantedAuthority([void updates(GrantedAuthorityBuilder b)]) =
      _$GrantedAuthority;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GrantedAuthorityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GrantedAuthority> get serializer =>
      _$GrantedAuthoritySerializer();
}

class _$GrantedAuthoritySerializer
    implements PrimitiveSerializer<GrantedAuthority> {
  @override
  final Iterable<Type> types = const [GrantedAuthority, _$GrantedAuthority];

  @override
  final String wireName = r'GrantedAuthority';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GrantedAuthority object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authority != null) {
      yield r'authority';
      yield serializers.serialize(object.authority,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GrantedAuthority object, {
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
    required GrantedAuthorityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authority':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.authority = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GrantedAuthority deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GrantedAuthorityBuilder();
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
