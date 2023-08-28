// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

// 🌎 Project imports:
import '/data/models/device_option.dart';
import '/data/models/user_sub_info.dart';

part 'service_detail.g.dart';

/// ServiceDetail
///
/// Properties:
/// * [shareServiceSeq]
/// * [carName]
/// * [carMadeCom]
/// * [type]
/// * [fulName]
/// * [gearType]
/// * [maxRide]
/// * [distanceDriven]
/// * [carOpt]
/// * [carOptList]
/// * [userSubInfoList]
@BuiltValue()
abstract class ServiceDetail
    implements Built<ServiceDetail, ServiceDetailBuilder> {
  @BuiltValueField(wireName: r'shareServiceSeq')
  String? get shareServiceSeq;

  @BuiltValueField(wireName: r'carName')
  String? get carName;

  @BuiltValueField(wireName: r'carMadeCom')
  String? get carMadeCom;

  @BuiltValueField(wireName: r'type')
  String? get type;

  @BuiltValueField(wireName: r'fulName')
  String? get fulName;

  @BuiltValueField(wireName: r'gearType')
  String? get gearType;

  @BuiltValueField(wireName: r'maxRide')
  String? get maxRide;

  @BuiltValueField(wireName: r'distanceDriven')
  String? get distanceDriven;

  @BuiltValueField(wireName: r'carOpt')
  String? get carOpt;

  @BuiltValueField(wireName: r'carOptList')
  BuiltList<DeviceOption>? get carOptList;

  @BuiltValueField(wireName: r'userSubInfoList')
  BuiltList<UserSubInfo>? get userSubInfoList;

  ServiceDetail._();

  factory ServiceDetail([void updates(ServiceDetailBuilder b)]) =
      _$ServiceDetail;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ServiceDetailBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ServiceDetail> get serializer =>
      _$ServiceDetailSerializer();
}

class _$ServiceDetailSerializer implements PrimitiveSerializer<ServiceDetail> {
  @override
  final Iterable<Type> types = const [ServiceDetail, _$ServiceDetail];

  @override
  final String wireName = r'ServiceDetail';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ServiceDetail object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.shareServiceSeq != null) {
      yield r'shareServiceSeq';
      yield serializers.serialize(object.shareServiceSeq,
          specifiedType: const FullType(String));
    }
    if (object.carName != null) {
      yield r'carName';
      yield serializers.serialize(object.carName,
          specifiedType: const FullType(String));
    }
    if (object.carMadeCom != null) {
      yield r'carMadeCom';
      yield serializers.serialize(object.carMadeCom,
          specifiedType: const FullType(String));
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(object.type,
          specifiedType: const FullType(String));
    }
    if (object.fulName != null) {
      yield r'fulName';
      yield serializers.serialize(object.fulName,
          specifiedType: const FullType(String));
    }
    if (object.gearType != null) {
      yield r'gearType';
      yield serializers.serialize(object.gearType,
          specifiedType: const FullType(String));
    }
    if (object.maxRide != null) {
      yield r'maxRide';
      yield serializers.serialize(object.maxRide,
          specifiedType: const FullType(String));
    }
    if (object.distanceDriven != null) {
      yield r'distanceDriven';
      yield serializers.serialize(object.distanceDriven,
          specifiedType: const FullType(String));
    }
    if (object.carOpt != null) {
      yield r'carOpt';
      yield serializers.serialize(object.carOpt,
          specifiedType: const FullType(String));
    }
    if (object.carOptList != null) {
      yield r'carOptList';
      yield serializers.serialize(object.carOptList,
          specifiedType: const FullType(BuiltList, [FullType(DeviceOption)]));
    }
    if (object.userSubInfoList != null) {
      yield r'userSubInfoList';
      yield serializers.serialize(object.userSubInfoList,
          specifiedType: const FullType(BuiltList, [FullType(UserSubInfo)]));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ServiceDetail object, {
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
    required ServiceDetailBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shareServiceSeq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.shareServiceSeq = valueDes;
          break;
        case r'carName':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carName = valueDes;
          break;
        case r'carMadeCom':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carMadeCom = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.type = valueDes;
          break;
        case r'fulName':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.fulName = valueDes;
          break;
        case r'gearType':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.gearType = valueDes;
          break;
        case r'maxRide':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.maxRide = valueDes;
          break;
        case r'distanceDriven':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.distanceDriven = valueDes;
          break;
        case r'carOpt':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carOpt = valueDes;
          break;
        case r'carOptList':
          final valueDes = serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, [FullType(DeviceOption)]))
              as BuiltList<DeviceOption>;
          result.carOptList.replace(valueDes);
          break;
        case r'userSubInfoList':
          final valueDes = serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, [FullType(UserSubInfo)]))
              as BuiltList<UserSubInfo>;
          result.userSubInfoList.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ServiceDetail deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ServiceDetailBuilder();
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
