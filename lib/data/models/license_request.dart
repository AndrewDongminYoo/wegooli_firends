// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'license_request.g.dart';

/// LicenseRequest
///
/// Properties:
/// * [seq]
/// * [memberSeq]
/// * [koreanYn]
/// * [licenseClass]
/// * [licenseArea]
/// * [licenseYear]
/// * [licenseNum]
/// * [expiredDate]
/// * [issuedDate]
/// * [signature]
/// * [delYn]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class LicenseRequest
    implements Built<LicenseRequest, LicenseRequestBuilder> {
  @BuiltValueField(wireName: r'seq')
  int? get seq;

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

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  LicenseRequest._();

  factory LicenseRequest([void updates(LicenseRequestBuilder b)]) =
      _$LicenseRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(LicenseRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<LicenseRequest> get serializer =>
      _$LicenseRequestSerializer();
}

class _$LicenseRequestSerializer
    implements PrimitiveSerializer<LicenseRequest> {
  @override
  final Iterable<Type> types = const [LicenseRequest, _$LicenseRequest];

  @override
  final String wireName = r'LicenseRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    LicenseRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.seq != null) {
      yield r'seq';
      yield serializers.serialize(
        object.seq,
        specifiedType: const FullType(int),
      );
    }
    if (object.memberSeq != null) {
      yield r'memberSeq';
      yield serializers.serialize(
        object.memberSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.koreanYn != null) {
      yield r'koreanYn';
      yield serializers.serialize(
        object.koreanYn,
        specifiedType: const FullType(String),
      );
    }
    if (object.licenseClass != null) {
      yield r'licenseClass';
      yield serializers.serialize(
        object.licenseClass,
        specifiedType: const FullType(String),
      );
    }
    if (object.licenseArea != null) {
      yield r'licenseArea';
      yield serializers.serialize(
        object.licenseArea,
        specifiedType: const FullType(String),
      );
    }
    if (object.licenseYear != null) {
      yield r'licenseYear';
      yield serializers.serialize(
        object.licenseYear,
        specifiedType: const FullType(String),
      );
    }
    if (object.licenseNum != null) {
      yield r'licenseNum';
      yield serializers.serialize(
        object.licenseNum,
        specifiedType: const FullType(String),
      );
    }
    if (object.expiredDate != null) {
      yield r'expiredDate';
      yield serializers.serialize(
        object.expiredDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.issuedDate != null) {
      yield r'issuedDate';
      yield serializers.serialize(
        object.issuedDate,
        specifiedType: const FullType(String),
      );
    }
    if (object.signature != null) {
      yield r'signature';
      yield serializers.serialize(
        object.signature,
        specifiedType: const FullType(String),
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
        specifiedType: const FullType(String),
      );
    }
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    LicenseRequest object, {
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
    required LicenseRequestBuilder result,
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
        case r'memberSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberSeq = valueDes;
          break;
        case r'koreanYn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.koreanYn = valueDes;
          break;
        case r'licenseClass':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licenseClass = valueDes;
          break;
        case r'licenseArea':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licenseArea = valueDes;
          break;
        case r'licenseYear':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licenseYear = valueDes;
          break;
        case r'licenseNum':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.licenseNum = valueDes;
          break;
        case r'expiredDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.expiredDate = valueDes;
          break;
        case r'issuedDate':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.issuedDate = valueDes;
          break;
        case r'signature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.signature = valueDes;
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
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  LicenseRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = LicenseRequestBuilder();
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
