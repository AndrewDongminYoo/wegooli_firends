// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_model.g.dart';

/// LicenseModel
///
/// Properties:
/// * [seq]
/// * [delYn]
/// * [createdAt]
/// * [updatedAt]
/// * [memberSeq]
/// * [koreanYn]
/// * [licenseClass]
/// * [licenseArea]
/// * [licenseYear]
/// * [licenseNum]
/// * [expiredDate]
/// * [issuedDate]
/// * [signature]
@BuiltValue()
abstract class LicenseModel
    implements Built<LicenseModel, LicenseModelBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'createdAt')
  DateTime? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  @BuiltValueField(wireName: r'memberSeq')
  int? get memberSeq;

  @BuiltValueField(wireName: r'koreanYn')
  String? get koreanYn;

  @BuiltValueField(wireName: r'licenseClass')
  String? get licenseClass;

  @BuiltValueField(wireName: r'licenseArea')
  String? get licenseArea;

  @BuiltValueField(wireName: r'licenseYear')
  String? get licenseYear;

  @BuiltValueField(wireName: r'licenseNum')
  String? get licenseNum;

  @BuiltValueField(wireName: r'expiredDate')
  String? get expiredDate;

  @BuiltValueField(wireName: r'issuedDate')
  String? get issuedDate;

  @BuiltValueField(wireName: r'signature')
  String? get signature;

  LicenseModel._();

  factory LicenseModel([void updates(LicenseModelBuilder b)]) = _$LicenseModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseModel> get serializer => _$LicenseModelSerializer();
}

class _$LicenseModelSerializer implements PrimitiveSerializer<LicenseModel> {
  @override
  final Iterable<Type> types = const [LicenseModel, _$LicenseModel];

  @override
  final String wireName = r'LicenseModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseModel object, {
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
    if (object.memberSeq != null) {
      yield r'memberSeq';
      yield serializers.serialize(object.memberSeq,
          specifiedType: const FullType(int));
    }
    if (object.koreanYn != null) {
      yield r'koreanYn';
      yield serializers.serialize(object.koreanYn,
          specifiedType: const FullType(String));
    }
    if (object.licenseClass != null) {
      yield r'licenseClass';
      yield serializers.serialize(object.licenseClass,
          specifiedType: const FullType(String));
    }
    if (object.licenseArea != null) {
      yield r'licenseArea';
      yield serializers.serialize(object.licenseArea,
          specifiedType: const FullType(String));
    }
    if (object.licenseYear != null) {
      yield r'licenseYear';
      yield serializers.serialize(object.licenseYear,
          specifiedType: const FullType(String));
    }
    if (object.licenseNum != null) {
      yield r'licenseNum';
      yield serializers.serialize(object.licenseNum,
          specifiedType: const FullType(String));
    }
    if (object.expiredDate != null) {
      yield r'expiredDate';
      yield serializers.serialize(object.expiredDate,
          specifiedType: const FullType(String));
    }
    if (object.issuedDate != null) {
      yield r'issuedDate';
      yield serializers.serialize(object.issuedDate,
          specifiedType: const FullType(String));
    }
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(object.signature,
          specifiedType: const FullType(String));
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseModel object, {
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
    required LicenseModelBuilder result,
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
        case r'memberSeq':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.memberSeq = valueDes;
          break;
        case r'koreanYn':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.koreanYn = valueDes;
          break;
        case r'licenseClass':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.licenseClass = valueDes;
          break;
        case r'licenseArea':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.licenseArea = valueDes;
          break;
        case r'licenseYear':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.licenseYear = valueDes;
          break;
        case r'licenseNum':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.licenseNum = valueDes;
          break;
        case r'expiredDate':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.expiredDate = valueDes;
          break;
        case r'issuedDate':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.issuedDate = valueDes;
          break;
        case r'signature':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.signature = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseModelBuilder();
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
