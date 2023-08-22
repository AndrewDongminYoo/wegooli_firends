// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'select_team_account_connection_request.g.dart';

/// SelectTeamAccountConnectionRequest
///
/// Properties:
/// * [teamSeq]
/// * [accountId]
/// * [startJoinedAt]
/// * [endJoinedAt]
/// * [startLeavedAt]
/// * [endLeavedAt]
/// * [isLeaved]
@BuiltValue()
abstract class SelectTeamAccountConnectionRequest
    implements
        Built<SelectTeamAccountConnectionRequest,
            SelectTeamAccountConnectionRequestBuilder> {
  @BuiltValueField(wireName: r'teamSeq')
  int? get teamSeq;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'startJoinedAt')
  String? get startJoinedAt;

  @BuiltValueField(wireName: r'endJoinedAt')
  String? get endJoinedAt;

  @BuiltValueField(wireName: r'startLeavedAt')
  String? get startLeavedAt;

  @BuiltValueField(wireName: r'endLeavedAt')
  String? get endLeavedAt;

  @BuiltValueField(wireName: r'isLeaved')
  String? get isLeaved;

  SelectTeamAccountConnectionRequest._();

  factory SelectTeamAccountConnectionRequest(
          [void updates(SelectTeamAccountConnectionRequestBuilder b)]) =
      _$SelectTeamAccountConnectionRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SelectTeamAccountConnectionRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SelectTeamAccountConnectionRequest> get serializer =>
      _$SelectTeamAccountConnectionRequestSerializer();
}

class _$SelectTeamAccountConnectionRequestSerializer
    implements PrimitiveSerializer<SelectTeamAccountConnectionRequest> {
  @override
  final Iterable<Type> types = const [
    SelectTeamAccountConnectionRequest,
    _$SelectTeamAccountConnectionRequest
  ];

  @override
  final String wireName = r'SelectTeamAccountConnectionRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelectTeamAccountConnectionRequest object, {
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
    if (object.startJoinedAt != null) {
      yield r'startJoinedAt';
      yield serializers.serialize(
        object.startJoinedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.endJoinedAt != null) {
      yield r'endJoinedAt';
      yield serializers.serialize(
        object.endJoinedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.startLeavedAt != null) {
      yield r'startLeavedAt';
      yield serializers.serialize(
        object.startLeavedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.endLeavedAt != null) {
      yield r'endLeavedAt';
      yield serializers.serialize(
        object.endLeavedAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.isLeaved != null) {
      yield r'isLeaved';
      yield serializers.serialize(
        object.isLeaved,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SelectTeamAccountConnectionRequest object, {
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
    required SelectTeamAccountConnectionRequestBuilder result,
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
        case r'startJoinedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startJoinedAt = valueDes;
          break;
        case r'endJoinedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endJoinedAt = valueDes;
          break;
        case r'startLeavedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.startLeavedAt = valueDes;
          break;
        case r'endLeavedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.endLeavedAt = valueDes;
          break;
        case r'isLeaved':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.isLeaved = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SelectTeamAccountConnectionRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectTeamAccountConnectionRequestBuilder();
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
