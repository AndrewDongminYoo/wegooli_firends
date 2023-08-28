// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_account_model.g.dart';

/// TeamAccountModel
///
/// Properties:
/// * [accountId]
/// * [color]
/// * [nickname]
/// * [profilePicture]
@BuiltValue()
abstract class TeamAccountModel
    implements Built<TeamAccountModel, TeamAccountModelBuilder> {
  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'nickname')
  String? get nickname;

  @BuiltValueField(wireName: r'profilePicture')
  String? get profilePicture;

  TeamAccountModel._();

  factory TeamAccountModel([void updates(TeamAccountModelBuilder b)]) =
      _$TeamAccountModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamAccountModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamAccountModel> get serializer =>
      _$TeamAccountModelSerializer();
}

class _$TeamAccountModelSerializer
    implements PrimitiveSerializer<TeamAccountModel> {
  @override
  final Iterable<Type> types = const [TeamAccountModel, _$TeamAccountModel];

  @override
  final String wireName = r'TeamAccountModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamAccountModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(object.accountId,
          specifiedType: const FullType(String));
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(object.color,
          specifiedType: const FullType(String));
    }
    if (object.nickname != null) {
      yield r'nickname';
      yield serializers.serialize(object.nickname,
          specifiedType: const FullType(String));
    }
    if (object.profilePicture != null) {
      yield r'profilePicture';
      yield serializers.serialize(object.profilePicture,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamAccountModel object, {
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
    required TeamAccountModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'accountId':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.accountId = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.color = valueDes;
          break;
        case r'nickname':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.nickname = valueDes;
          break;
        case r'profilePicture':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.profilePicture = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamAccountModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamAccountModelBuilder();
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
