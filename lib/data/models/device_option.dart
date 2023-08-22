// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'device_option.g.dart';

/// DeviceOption
///
/// Properties:
/// * [seq]
/// * [optName]
@BuiltValue()
abstract class DeviceOption
    implements Built<DeviceOption, DeviceOptionBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'optName')
  String? get optName;

  DeviceOption._();

  factory DeviceOption([void updates(DeviceOptionBuilder b)]) = _$DeviceOption;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviceOptionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviceOption> get serializer => _$DeviceOptionSerializer();
}

class _$DeviceOptionSerializer implements PrimitiveSerializer<DeviceOption> {
  @override
  final Iterable<Type> types = const [DeviceOption, _$DeviceOption];

  @override
  final String wireName = r'DeviceOption';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviceOption object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.optName != null) {
      yield r'optName';
      yield serializers.serialize(
        object.optName,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviceOption object, {
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
    required DeviceOptionBuilder result,
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
        case r'optName':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.optName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviceOption deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviceOptionBuilder();
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
