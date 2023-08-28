// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'terminal_update_request.g.dart';

/// TerminalUpdateRequest
///
/// Properties:
/// * [seq]
/// * [delYn]
/// * [createdAt]
/// * [updatedAt]
/// * [carNum]
/// * [phoneNumber]
/// * [status]
/// * [carNickName]
@BuiltValue()
abstract class TerminalUpdateRequest
    implements Built<TerminalUpdateRequest, TerminalUpdateRequestBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'carNum')
  String? get carNum;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'carNickName')
  String? get carNickName;

  TerminalUpdateRequest._();

  factory TerminalUpdateRequest(
      [void updates(TerminalUpdateRequestBuilder b)]) = _$TerminalUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TerminalUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TerminalUpdateRequest> get serializer =>
      _$TerminalUpdateRequestSerializer();
}

class _$TerminalUpdateRequestSerializer
    implements PrimitiveSerializer<TerminalUpdateRequest> {
  @override
  final Iterable<Type> types = const [
    TerminalUpdateRequest,
    _$TerminalUpdateRequest
  ];

  @override
  final String wireName = r'TerminalUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TerminalUpdateRequest object, {
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
    if (object.carNum != null) {
      yield r'carNum';
      yield serializers.serialize(object.carNum,
          specifiedType: const FullType(String));
    }
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(object.phoneNumber,
          specifiedType: const FullType(String));
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(object.status,
          specifiedType: const FullType(String));
    }
    if (object.carNickName != null) {
      yield r'carNickName';
      yield serializers.serialize(object.carNickName,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TerminalUpdateRequest object, {
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
    required TerminalUpdateRequestBuilder result,
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
        case r'carNum':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carNum = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.phoneNumber = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.status = valueDes;
          break;
        case r'carNickName':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carNickName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TerminalUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TerminalUpdateRequestBuilder();
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
