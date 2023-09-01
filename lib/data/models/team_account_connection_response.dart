// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

// 🌎 Project imports:
import '/lib.dart';

part 'team_account_connection_response.g.dart';

/// TeamAccountConnectionResponse
///
/// Properties:
/// * [teamSeq]
/// * [account]
@BuiltValue()
abstract class TeamAccountConnectionResponse
    implements
        Built<TeamAccountConnectionResponse,
            TeamAccountConnectionResponseBuilder> {
  @BuiltValueField(wireName: r'teamSeq')
  int? get teamSeq;

  @BuiltValueField(wireName: r'account')
  BuiltList<TeamAccountModel>? get account;

  TeamAccountConnectionResponse._();

  factory TeamAccountConnectionResponse(
          [void updates(TeamAccountConnectionResponseBuilder b)]) =
      _$TeamAccountConnectionResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TeamAccountConnectionResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TeamAccountConnectionResponse> get serializer =>
      _$TeamAccountConnectionResponseSerializer();
}

class _$TeamAccountConnectionResponseSerializer
    implements PrimitiveSerializer<TeamAccountConnectionResponse> {
  @override
  final Iterable<Type> types = const [
    TeamAccountConnectionResponse,
    _$TeamAccountConnectionResponse
  ];

  @override
  final String wireName = r'TeamAccountConnectionResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TeamAccountConnectionResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.teamSeq != null) {
      yield r'teamSeq';
      yield serializers.serialize(
        object.teamSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.account != null) {
      yield r'account';
      yield serializers.serialize(
        object.account,
        specifiedType: const FullType(BuiltList, [FullType(TeamAccountModel)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TeamAccountConnectionResponse object, {
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
    required TeamAccountConnectionResponseBuilder result,
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
        case r'account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(TeamAccountModel)]),
          ) as BuiltList<TeamAccountModel>;
          result.account.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TeamAccountConnectionResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TeamAccountConnectionResponseBuilder();
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
