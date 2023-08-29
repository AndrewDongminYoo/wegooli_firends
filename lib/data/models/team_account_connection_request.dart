// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'team_account_connection_request.g.dart';

/// TeamAccountConnectionRequest
///
/// Properties:
/// * [teamSeq]
/// * [accountId]
/// * [joinedAt]
/// * [leavedAt]
@BuiltValue()
abstract class TeamAccountConnectionRequest
    implements
        Built<TeamAccountConnectionRequest,
            TeamAccountConnectionRequestBuilder> {
  @BuiltValueField(wireName: r'teamSeq')
  int? get teamSeq;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'joinedAt')
  String? get joinedAt;

  @BuiltValueField(wireName: r'leavedAt')
  String? get leavedAt;

  TeamAccountConnectionRequest._();

  factory TeamAccountConnectionRequest(
          [void updates(TeamAccountConnectionRequestBuilder b)]) =
      _$TeamAccountConnectionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamAccountConnectionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamAccountConnectionRequest> get serializer =>
      _$TeamAccountConnectionRequestSerializer();
}

class _$TeamAccountConnectionRequestSerializer
    implements PrimitiveSerializer<TeamAccountConnectionRequest> {
  @override
  final Iterable<Type> types = const [
    TeamAccountConnectionRequest,
    _$TeamAccountConnectionRequest
  ];

  @override
  final String wireName = r'TeamAccountConnectionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamAccountConnectionRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    TeamAccountConnectionRequest object, {
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
    required TeamAccountConnectionRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  TeamAccountConnectionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamAccountConnectionRequestBuilder();
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
