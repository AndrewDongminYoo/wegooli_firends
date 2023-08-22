// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_account_connection_model.g.dart';

/// TeamAccountConnectionModel
///
/// Properties:
/// * [seq]
/// * [teamSeq]
/// * [accountId]
/// * [joinedAt]
/// * [leavedAt]
@BuiltValue()
abstract class TeamAccountConnectionModel implements Built<TeamAccountConnectionModel, TeamAccountConnectionModelBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'teamSeq')
  int? get teamSeq;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'joinedAt')
  String? get joinedAt;

  @BuiltValueField(wireName: r'leavedAt')
  String? get leavedAt;

  TeamAccountConnectionModel._();

  factory TeamAccountConnectionModel([void updates(TeamAccountConnectionModelBuilder b)]) = _$TeamAccountConnectionModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamAccountConnectionModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamAccountConnectionModel> get serializer => _$TeamAccountConnectionModelSerializer();
}

class _$TeamAccountConnectionModelSerializer implements PrimitiveSerializer<TeamAccountConnectionModel> {
  @override
  final Iterable<Type> types = const [TeamAccountConnectionModel, _$TeamAccountConnectionModel];

  @override
  final String wireName = r'TeamAccountConnectionModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamAccountConnectionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.teamSeq != null) {
      yield r'teamSeq';
      yield serializers.serialize(
        object.teamSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(
        object.accountId,
        specifiedType: const FullType(String),
      );
    }
    if (object.joinedAt != null) {
      yield r'joinedAt';
      yield serializers.serialize(
        object.joinedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.leavedAt != null) {
      yield r'leavedAt';
      yield serializers.serialize(
        object.leavedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamAccountConnectionModel object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TeamAccountConnectionModelBuilder result,
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
        case r'teamSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.teamSeq = valueDes;
          break;
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
          break;
        case r'joinedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.joinedAt = valueDes;
          break;
        case r'leavedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.leavedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamAccountConnectionModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamAccountConnectionModelBuilder();
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

