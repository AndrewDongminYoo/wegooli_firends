// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_car_connection.g.dart';

/// TeamCarConnection
///
/// Properties:
/// * [seq]
/// * [teamSeq]
/// * [carNum]
/// * [startAt]
/// * [endAt]
/// * [createdAt]
/// * [updatedAt]
/// * [activeYn]
@BuiltValue()
abstract class TeamCarConnection
    implements Built<TeamCarConnection, TeamCarConnectionBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'teamSeq')
  int? get teamSeq;

  @BuiltValueField(wireName: r'carNum')
  String? get carNum;

  @BuiltValueField(wireName: r'startAt')
  String? get startAt;

  @BuiltValueField(wireName: r'endAt')
  String? get endAt;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  @BuiltValueField(wireName: r'activeYn')
  String? get activeYn;

  TeamCarConnection._();

  factory TeamCarConnection([void updates(TeamCarConnectionBuilder b)]) =
      _$TeamCarConnection;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamCarConnectionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamCarConnection> get serializer =>
      _$TeamCarConnectionSerializer();
}

class _$TeamCarConnectionSerializer
    implements PrimitiveSerializer<TeamCarConnection> {
  @override
  final Iterable<Type> types = const [TeamCarConnection, _$TeamCarConnection];

  @override
  final String wireName = r'TeamCarConnection';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamCarConnection object, {
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
    if (object.carNum != null) {
      yield r'carNum';
      yield serializers.serialize(
        object.carNum,
        specifiedType: const FullType(String),
      );
    }
    if (object.startAt != null) {
      yield r'startAt';
      yield serializers.serialize(
        object.startAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.endAt != null) {
      yield r'endAt';
      yield serializers.serialize(
        object.endAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.activeYn != null) {
      yield r'activeYn';
      yield serializers.serialize(
        object.activeYn,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamCarConnection object, {
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
    required TeamCarConnectionBuilder result,
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
        case r'carNum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.carNum = valueDes;
          break;
        case r'startAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startAt = valueDes;
          break;
        case r'endAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endAt = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        case r'activeYn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.activeYn = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamCarConnection deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamCarConnectionBuilder();
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
