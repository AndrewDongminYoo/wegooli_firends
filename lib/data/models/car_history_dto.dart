// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'car_history_dto.g.dart';

/// CarHistoryDTO
///
/// Properties:
/// * [seq]
/// * [terminalSeq]
/// * [carNum]
/// * [status]
/// * [lat]
/// * [lon]
/// * [volt]
/// * [fuel]
/// * [flDoorClose]
/// * [frDoorClose]
/// * [blDoorClose]
/// * [brDoorClose]
/// * [distance]
/// * [speed]
/// * [flDoorLock]
/// * [frDoorLock]
/// * [blDoorLock]
/// * [brDoorLock]
/// * [createdAt]
@BuiltValue()
abstract class CarHistoryDTO
    implements Built<CarHistoryDTO, CarHistoryDTOBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'terminalSeq')
  int? get terminalSeq;

  @BuiltValueField(wireName: r'carNum')
  String? get carNum;

  @BuiltValueField(wireName: r'status')
  String? get status;

  @BuiltValueField(wireName: r'lat')
  String? get lat;

  @BuiltValueField(wireName: r'lon')
  String? get lon;

  @BuiltValueField(wireName: r'volt')
  int? get volt;

  @BuiltValueField(wireName: r'fuel')
  int? get fuel;

  @BuiltValueField(wireName: r'flDoorClose')
  String? get flDoorClose;

  @BuiltValueField(wireName: r'frDoorClose')
  String? get frDoorClose;

  @BuiltValueField(wireName: r'blDoorClose')
  String? get blDoorClose;

  @BuiltValueField(wireName: r'brDoorClose')
  String? get brDoorClose;

  @BuiltValueField(wireName: r'distance')
  int? get distance;

  @BuiltValueField(wireName: r'speed')
  int? get speed;

  @BuiltValueField(wireName: r'flDoorLock')
  String? get flDoorLock;

  @BuiltValueField(wireName: r'frDoorLock')
  String? get frDoorLock;

  @BuiltValueField(wireName: r'blDoorLock')
  String? get blDoorLock;

  @BuiltValueField(wireName: r'brDoorLock')
  String? get brDoorLock;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  CarHistoryDTO._();

  factory CarHistoryDTO([void updates(CarHistoryDTOBuilder b)]) =
      _$CarHistoryDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CarHistoryDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CarHistoryDTO> get serializer =>
      _$CarHistoryDTOSerializer();
}

class _$CarHistoryDTOSerializer implements PrimitiveSerializer<CarHistoryDTO> {
  @override
  final Iterable<Type> types = const [CarHistoryDTO, _$CarHistoryDTO];

  @override
  final String wireName = r'CarHistoryDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CarHistoryDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(object.seq,
          specifiedType: const FullType(int));
    }
    if (object.terminalSeq != null) {
      yield r'terminalSeq';
      yield serializers.serialize(object.terminalSeq,
          specifiedType: const FullType(int));
    }
    if (object.carNum != null) {
      yield r'carNum';
      yield serializers.serialize(object.carNum,
          specifiedType: const FullType(String));
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(object.status,
          specifiedType: const FullType(String));
    }
    if (object.lat != null) {
      yield r'lat';
      yield serializers.serialize(object.lat,
          specifiedType: const FullType(String));
    }
    if (object.lon != null) {
      yield r'lon';
      yield serializers.serialize(object.lon,
          specifiedType: const FullType(String));
    }
    if (object.volt != null) {
      yield r'volt';
      yield serializers.serialize(object.volt,
          specifiedType: const FullType(int));
    }
    if (object.fuel != null) {
      yield r'fuel';
      yield serializers.serialize(object.fuel,
          specifiedType: const FullType(int));
    }
    if (object.flDoorClose != null) {
      yield r'flDoorClose';
      yield serializers.serialize(object.flDoorClose,
          specifiedType: const FullType(String));
    }
    if (object.frDoorClose != null) {
      yield r'frDoorClose';
      yield serializers.serialize(object.frDoorClose,
          specifiedType: const FullType(String));
    }
    if (object.blDoorClose != null) {
      yield r'blDoorClose';
      yield serializers.serialize(object.blDoorClose,
          specifiedType: const FullType(String));
    }
    if (object.brDoorClose != null) {
      yield r'brDoorClose';
      yield serializers.serialize(object.brDoorClose,
          specifiedType: const FullType(String));
    }
    if (object.distance != null) {
      yield r'distance';
      yield serializers.serialize(object.distance,
          specifiedType: const FullType(int));
    }
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(object.speed,
          specifiedType: const FullType(int));
    }
    if (object.flDoorLock != null) {
      yield r'flDoorLock';
      yield serializers.serialize(object.flDoorLock,
          specifiedType: const FullType(String));
    }
    if (object.frDoorLock != null) {
      yield r'frDoorLock';
      yield serializers.serialize(object.frDoorLock,
          specifiedType: const FullType(String));
    }
    if (object.blDoorLock != null) {
      yield r'blDoorLock';
      yield serializers.serialize(object.blDoorLock,
          specifiedType: const FullType(String));
    }
    if (object.brDoorLock != null) {
      yield r'brDoorLock';
      yield serializers.serialize(object.brDoorLock,
          specifiedType: const FullType(String));
    }
    if (object.createdAt != null) {
      yield r'createdAt';
      yield serializers.serialize(object.createdAt,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CarHistoryDTO object, {
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
    required CarHistoryDTOBuilder result,
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
        case r'terminalSeq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.terminalSeq = valueDes;
          break;
        case r'carNum':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carNum = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.status = valueDes;
          break;
        case r'lat':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.lat = valueDes;
          break;
        case r'lon':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.lon = valueDes;
          break;
        case r'volt':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.volt = valueDes;
          break;
        case r'fuel':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.fuel = valueDes;
          break;
        case r'flDoorClose':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.flDoorClose = valueDes;
          break;
        case r'frDoorClose':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.frDoorClose = valueDes;
          break;
        case r'blDoorClose':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.blDoorClose = valueDes;
          break;
        case r'brDoorClose':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.brDoorClose = valueDes;
          break;
        case r'distance':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.distance = valueDes;
          break;
        case r'speed':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.speed = valueDes;
          break;
        case r'flDoorLock':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.flDoorLock = valueDes;
          break;
        case r'frDoorLock':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.frDoorLock = valueDes;
          break;
        case r'blDoorLock':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.blDoorLock = valueDes;
          break;
        case r'brDoorLock':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.brDoorLock = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CarHistoryDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CarHistoryDTOBuilder();
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
