// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_model.g.dart';

/// TeamModel
///
/// Properties:
/// * [seq]
/// * [delYn]
/// * [createdAt]
/// * [updatedAt]
/// * [accountId]
/// * [teamCode]
/// * [name]
/// * [contract]
@BuiltValue()
abstract class TeamModel implements Built<TeamModel, TeamModelBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'teamCode')
  String? get teamCode;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'contract')
  String? get contract;

  TeamModel._();

  factory TeamModel([void updates(TeamModelBuilder b)]) = _$TeamModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamModel> get serializer => _$TeamModelSerializer();
}

class _$TeamModelSerializer implements PrimitiveSerializer<TeamModel> {
  @override
  final Iterable<Type> types = const [TeamModel, _$TeamModel];

  @override
  final String wireName = r'TeamModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(object.seq,
          specifiedType: const FullType(int));
    }
    if (object.delYn != null) {
      yield r'delYn';
      yield serializers.serialize(object.delYn,
          specifiedType: const FullType(String));
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime));
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(object.updatedAt,
          specifiedType: const FullType(DateTime));
    }
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(object.accountId,
          specifiedType: const FullType(String));
    }
    if (object.teamCode != null) {
      yield r'teamCode';
      yield serializers.serialize(object.teamCode,
          specifiedType: const FullType(String));
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(object.name,
          specifiedType: const FullType(String));
    }
    if (object.contract != null) {
      yield r'contract';
      yield serializers.serialize(object.contract,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamModel object, {
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
    required TeamModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'seq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.seq = valueDes;
          break;
        case r'delYn':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.delYn = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'accountId':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.accountId = valueDes;
          break;
        case r'teamCode':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.teamCode = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.name = valueDes;
          break;
        case r'contract':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.contract = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamModelBuilder();
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
