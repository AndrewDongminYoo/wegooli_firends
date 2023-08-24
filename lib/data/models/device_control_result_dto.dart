// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_control_result_dto.g.dart';

/// DeviceControlResultDTO
///
/// Properties:
/// * [userId]
/// * [terTelNum]
/// * [t0]
/// * [t1]
/// * [t2]
/// * [t3]
/// * [t4]
/// * [t5]
/// * [t6]
/// * [t7]
/// * [t8]
/// * [t9]
/// * [t10]
/// * [t11]
/// * [t12]
/// * [t14]
/// * [t15]
/// * [t16]
/// * [t17]
/// * [t18]
/// * [t19]
/// * [t20]
/// * [t21]
/// * [t22]
/// * [t41]
/// * [t42]
/// * [t51]
/// * [t61]
/// * [ucp]
/// * [nsdur]
@BuiltValue()
abstract class DeviceControlResultDTO
    implements Built<DeviceControlResultDTO, DeviceControlResultDTOBuilder> {
  @BuiltValueField(wireName: r'userId')
  String? get userId;

  @BuiltValueField(wireName: r'terTelNum')
  String? get terTelNum;

  @BuiltValueField(wireName: r't42')
  String? get t42;

  @BuiltValueField(wireName: r't0')
  String? get t0;

  @BuiltValueField(wireName: r't1')
  String? get t1;

  @BuiltValueField(wireName: r't2')
  String? get t2;

  @BuiltValueField(wireName: r't3')
  String? get t3;

  @BuiltValueField(wireName: r't4')
  String? get t4;

  @BuiltValueField(wireName: r't5')
  String? get t5;

  @BuiltValueField(wireName: r't6')
  String? get t6;

  @BuiltValueField(wireName: r't7')
  String? get t7;

  @BuiltValueField(wireName: r't8')
  String? get t8;

  @BuiltValueField(wireName: r't9')
  String? get t9;

  @BuiltValueField(wireName: r't10')
  String? get t10;

  @BuiltValueField(wireName: r't11')
  String? get t11;

  @BuiltValueField(wireName: r't12')
  String? get t12;

  @BuiltValueField(wireName: r't14')
  String? get t14;

  @BuiltValueField(wireName: r't15')
  String? get t15;

  @BuiltValueField(wireName: r't16')
  String? get t16;

  @BuiltValueField(wireName: r't17')
  String? get t17;

  @BuiltValueField(wireName: r't18')
  String? get t18;

  @BuiltValueField(wireName: r't19')
  String? get t19;

  @BuiltValueField(wireName: r't20')
  String? get t20;

  @BuiltValueField(wireName: r't21')
  String? get t21;

  @BuiltValueField(wireName: r't22')
  String? get t22;

  @BuiltValueField(wireName: r't41')
  String? get t41;

  @BuiltValueField(wireName: r't51')
  String? get t51;

  @BuiltValueField(wireName: r't61')
  String? get t61;

  @BuiltValueField(wireName: r'ucp')
  String? get ucp;

  @BuiltValueField(wireName: r'nsdur')
  String? get nsdur;

  DeviceControlResultDTO._();

  factory DeviceControlResultDTO(
          [void updates(DeviceControlResultDTOBuilder b)]) =
      _$DeviceControlResultDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceControlResultDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceControlResultDTO> get serializer =>
      _$DeviceControlResultDTOSerializer();
}

class _$DeviceControlResultDTOSerializer
    implements PrimitiveSerializer<DeviceControlResultDTO> {
  @override
  final Iterable<Type> types = const [
    DeviceControlResultDTO,
    _$DeviceControlResultDTO
  ];

  @override
  final String wireName = r'DeviceControlResultDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceControlResultDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userId != null) {
      yield r'userId';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.terTelNum != null) {
      yield r'terTelNum';
      yield serializers.serialize(
        object.terTelNum,
        specifiedType: const FullType(String),
      );
    }
    if (object.t42 != null) {
      yield r't42';
      yield serializers.serialize(
        object.t42,
        specifiedType: const FullType(String),
      );
    }
    if (object.t0 != null) {
      yield r't0';
      yield serializers.serialize(
        object.t0,
        specifiedType: const FullType(String),
      );
    }
    if (object.t1 != null) {
      yield r't1';
      yield serializers.serialize(
        object.t1,
        specifiedType: const FullType(String),
      );
    }
    if (object.t2 != null) {
      yield r't2';
      yield serializers.serialize(
        object.t2,
        specifiedType: const FullType(String),
      );
    }
    if (object.t3 != null) {
      yield r't3';
      yield serializers.serialize(
        object.t3,
        specifiedType: const FullType(String),
      );
    }
    if (object.t4 != null) {
      yield r't4';
      yield serializers.serialize(
        object.t4,
        specifiedType: const FullType(String),
      );
    }
    if (object.t5 != null) {
      yield r't5';
      yield serializers.serialize(
        object.t5,
        specifiedType: const FullType(String),
      );
    }
    if (object.t6 != null) {
      yield r't6';
      yield serializers.serialize(
        object.t6,
        specifiedType: const FullType(String),
      );
    }
    if (object.t7 != null) {
      yield r't7';
      yield serializers.serialize(
        object.t7,
        specifiedType: const FullType(String),
      );
    }
    if (object.t8 != null) {
      yield r't8';
      yield serializers.serialize(
        object.t8,
        specifiedType: const FullType(String),
      );
    }
    if (object.t9 != null) {
      yield r't9';
      yield serializers.serialize(
        object.t9,
        specifiedType: const FullType(String),
      );
    }
    if (object.t10 != null) {
      yield r't10';
      yield serializers.serialize(
        object.t10,
        specifiedType: const FullType(String),
      );
    }
    if (object.t11 != null) {
      yield r't11';
      yield serializers.serialize(
        object.t11,
        specifiedType: const FullType(String),
      );
    }
    if (object.t12 != null) {
      yield r't12';
      yield serializers.serialize(
        object.t12,
        specifiedType: const FullType(String),
      );
    }
    if (object.t14 != null) {
      yield r't14';
      yield serializers.serialize(
        object.t14,
        specifiedType: const FullType(String),
      );
    }
    if (object.t15 != null) {
      yield r't15';
      yield serializers.serialize(
        object.t15,
        specifiedType: const FullType(String),
      );
    }
    if (object.t16 != null) {
      yield r't16';
      yield serializers.serialize(
        object.t16,
        specifiedType: const FullType(String),
      );
    }
    if (object.t17 != null) {
      yield r't17';
      yield serializers.serialize(
        object.t17,
        specifiedType: const FullType(String),
      );
    }
    if (object.t18 != null) {
      yield r't18';
      yield serializers.serialize(
        object.t18,
        specifiedType: const FullType(String),
      );
    }
    if (object.t19 != null) {
      yield r't19';
      yield serializers.serialize(
        object.t19,
        specifiedType: const FullType(String),
      );
    }
    if (object.t20 != null) {
      yield r't20';
      yield serializers.serialize(
        object.t20,
        specifiedType: const FullType(String),
      );
    }
    if (object.t21 != null) {
      yield r't21';
      yield serializers.serialize(
        object.t21,
        specifiedType: const FullType(String),
      );
    }
    if (object.t22 != null) {
      yield r't22';
      yield serializers.serialize(
        object.t22,
        specifiedType: const FullType(String),
      );
    }
    if (object.t41 != null) {
      yield r't41';
      yield serializers.serialize(
        object.t41,
        specifiedType: const FullType(String),
      );
    }
    if (object.t51 != null) {
      yield r't51';
      yield serializers.serialize(
        object.t51,
        specifiedType: const FullType(String),
      );
    }
    if (object.t61 != null) {
      yield r't61';
      yield serializers.serialize(
        object.t61,
        specifiedType: const FullType(String),
      );
    }
    if (object.ucp != null) {
      yield r'ucp';
      yield serializers.serialize(
        object.ucp,
        specifiedType: const FullType(String),
      );
    }
    if (object.nsdur != null) {
      yield r'nsdur';
      yield serializers.serialize(
        object.nsdur,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceControlResultDTO object, {
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
    required DeviceControlResultDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'terTelNum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.terTelNum = valueDes;
          break;
        case r't42':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t42 = valueDes;
          break;
        case r't0':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t0 = valueDes;
          break;
        case r't1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t1 = valueDes;
          break;
        case r't2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t2 = valueDes;
          break;
        case r't3':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t3 = valueDes;
          break;
        case r't4':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t4 = valueDes;
          break;
        case r't5':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t5 = valueDes;
          break;
        case r't6':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t6 = valueDes;
          break;
        case r't7':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t7 = valueDes;
          break;
        case r't8':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t8 = valueDes;
          break;
        case r't9':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t9 = valueDes;
          break;
        case r't10':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t10 = valueDes;
          break;
        case r't11':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t11 = valueDes;
          break;
        case r't12':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t12 = valueDes;
          break;
        case r't14':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t14 = valueDes;
          break;
        case r't15':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t15 = valueDes;
          break;
        case r't16':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t16 = valueDes;
          break;
        case r't17':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t17 = valueDes;
          break;
        case r't18':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t18 = valueDes;
          break;
        case r't19':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t19 = valueDes;
          break;
        case r't20':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t20 = valueDes;
          break;
        case r't21':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t21 = valueDes;
          break;
        case r't22':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t22 = valueDes;
          break;
        case r't41':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t41 = valueDes;
          break;
        case r't51':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t51 = valueDes;
          break;
        case r't61':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.t61 = valueDes;
          break;
        case r'ucp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ucp = valueDes;
          break;
        case r'nsdur':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nsdur = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceControlResultDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceControlResultDTOBuilder();
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
