// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'schedule_request.g.dart';

/// ScheduleRequest
///
/// Properties:
/// * [seq]
/// * [delYn]
/// * [createdAt]
/// * [updatedAt]
/// * [teamSeq]
/// * [accountId]
/// * [startAt]
/// * [endAt]
@BuiltValue()
abstract class ScheduleRequest
    implements Built<ScheduleRequest, ScheduleRequestBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'teamSeq')
  int? get teamSeq;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'startAt')
  String? get startAt;

  @BuiltValueField(wireName: r'endAt')
  String? get endAt;

  ScheduleRequest._();

  factory ScheduleRequest([void updates(ScheduleRequestBuilder b)]) =
      _$ScheduleRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ScheduleRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ScheduleRequest> get serializer =>
      _$ScheduleRequestSerializer();
}

class _$ScheduleRequestSerializer
    implements PrimitiveSerializer<ScheduleRequest> {
  @override
  final Iterable<Type> types = const [ScheduleRequest, _$ScheduleRequest];

  @override
  final String wireName = r'ScheduleRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ScheduleRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.delYn != null) {
      yield r'delYn';
      yield serializers.serialize(
        object.delYn,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ScheduleRequest object, {
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
    required ScheduleRequestBuilder result,
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
        case r'delYn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.delYn = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ScheduleRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ScheduleRequestBuilder();
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
