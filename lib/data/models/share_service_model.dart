// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_service_model.g.dart';

/// ShareServiceModel
///
/// Properties:
/// * [shareServiceSeq]
/// * [serviceName]
/// * [serviceDes]
/// * [carSeq]
/// * [carName]
/// * [carImg]
/// * [monthlyPay]
/// * [personalPay]
/// * [nowSub]
/// * [maxSub]
@BuiltValue()
abstract class ShareServiceModel
    implements Built<ShareServiceModel, ShareServiceModelBuilder> {
  @BuiltValueField(wireName: r'shareServiceSeq')
  int? get shareServiceSeq;

  @BuiltValueField(wireName: r'serviceName')
  String? get serviceName;

  @BuiltValueField(wireName: r'serviceDes')
  String? get serviceDes;

  @BuiltValueField(wireName: r'carSeq')
  String? get carSeq;

  @BuiltValueField(wireName: r'carName')
  String? get carName;

  @BuiltValueField(wireName: r'carImg')
  String? get carImg;

  @BuiltValueField(wireName: r'monthlyPay')
  String? get monthlyPay;

  @BuiltValueField(wireName: r'personalPay')
  String? get personalPay;

  @BuiltValueField(wireName: r'nowSub')
  String? get nowSub;

  @BuiltValueField(wireName: r'maxSub')
  String? get maxSub;

  ShareServiceModel._();

  factory ShareServiceModel([void updates(ShareServiceModelBuilder b)]) =
      _$ShareServiceModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareServiceModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareServiceModel> get serializer =>
      _$ShareServiceModelSerializer();
}

class _$ShareServiceModelSerializer
    implements PrimitiveSerializer<ShareServiceModel> {
  @override
  final Iterable<Type> types = const [ShareServiceModel, _$ShareServiceModel];

  @override
  final String wireName = r'ShareServiceModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareServiceModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.shareServiceSeq != null) {
      yield r'shareServiceSeq';
      yield serializers.serialize(object.shareServiceSeq,
          specifiedType: const FullType(int));
    }
    if (object.serviceName != null) {
      yield r'serviceName';
      yield serializers.serialize(object.serviceName,
          specifiedType: const FullType(String));
    }
    if (object.serviceDes != null) {
      yield r'serviceDes';
      yield serializers.serialize(object.serviceDes,
          specifiedType: const FullType(String));
    }
    if (object.carSeq != null) {
      yield r'carSeq';
      yield serializers.serialize(object.carSeq,
          specifiedType: const FullType(String));
    }
    if (object.carName != null) {
      yield r'carName';
      yield serializers.serialize(object.carName,
          specifiedType: const FullType(String));
    }
    if (object.carImg != null) {
      yield r'carImg';
      yield serializers.serialize(object.carImg,
          specifiedType: const FullType(String));
    }
    if (object.monthlyPay != null) {
      yield r'monthlyPay';
      yield serializers.serialize(object.monthlyPay,
          specifiedType: const FullType(String));
    }
    if (object.personalPay != null) {
      yield r'personalPay';
      yield serializers.serialize(object.personalPay,
          specifiedType: const FullType(String));
    }
    if (object.nowSub != null) {
      yield r'nowSub';
      yield serializers.serialize(object.nowSub,
          specifiedType: const FullType(String));
    }
    if (object.maxSub != null) {
      yield r'maxSub';
      yield serializers.serialize(object.maxSub,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareServiceModel object, {
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
    required ShareServiceModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'shareServiceSeq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.shareServiceSeq = valueDes;
          break;
        case r'serviceName':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.serviceName = valueDes;
          break;
        case r'serviceDes':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.serviceDes = valueDes;
          break;
        case r'carSeq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carSeq = valueDes;
          break;
        case r'carName':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carName = valueDes;
          break;
        case r'carImg':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.carImg = valueDes;
          break;
        case r'monthlyPay':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.monthlyPay = valueDes;
          break;
        case r'personalPay':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.personalPay = valueDes;
          break;
        case r'nowSub':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.nowSub = valueDes;
          break;
        case r'maxSub':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.maxSub = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ShareServiceModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareServiceModelBuilder();
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
