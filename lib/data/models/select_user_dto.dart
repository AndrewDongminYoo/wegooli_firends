// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'select_user_dto.g.dart';

/// SelectUserDTO
///
/// Properties:
/// * [id]
/// * [memberSeq]
/// * [name]
/// * [add1]
/// * [add2]
/// * [zipCode]
/// * [phoneNumber]
/// * [email]
/// * [birthday]
/// * [sex]
/// * [delimit]
/// * [nickname]
/// * [profilePicture]
/// * [color]
/// * [deleteAt]
/// * [delYnMember]
/// * [delYnAccount]
/// * [createdAtMember]
/// * [createdAtAccount]
@BuiltValue()
abstract class SelectUserDTO
    implements Built<SelectUserDTO, SelectUserDTOBuilder> {
  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'memberSeq')
  int? get memberSeq;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'add1')
  String? get add1;

  @BuiltValueField(wireName: r'add2')
  String? get add2;

  @BuiltValueField(wireName: r'zipCode')
  String? get zipCode;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'birthday')
  String? get birthday;

  @BuiltValueField(wireName: r'sex')
  String? get sex;

  @BuiltValueField(wireName: r'delimit')
  String? get delimit;

  @BuiltValueField(wireName: r'nickname')
  String? get nickname;

  @BuiltValueField(wireName: r'profilePicture')
  String? get profilePicture;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'deleteAt')
  String? get deleteAt;

  @BuiltValueField(wireName: r'delYn_member')
  String? get delYnMember;

  @BuiltValueField(wireName: r'delYn_account')
  String? get delYnAccount;

  @BuiltValueField(wireName: r'createdAt_member')
  String? get createdAtMember;

  @BuiltValueField(wireName: r'createdAt_account')
  String? get createdAtAccount;

  SelectUserDTO._();

  factory SelectUserDTO([void updates(SelectUserDTOBuilder b)]) =
      _$SelectUserDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SelectUserDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SelectUserDTO> get serializer =>
      _$SelectUserDTOSerializer();
}

class _$SelectUserDTOSerializer implements PrimitiveSerializer<SelectUserDTO> {
  @override
  final Iterable<Type> types = const [SelectUserDTO, _$SelectUserDTO];

  @override
  final String wireName = r'SelectUserDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SelectUserDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.memberSeq != null) {
      yield r'memberSeq';
      yield serializers.serialize(
        object.memberSeq,
        specifiedType: const FullType(int),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.add1 != null) {
      yield r'add1';
      yield serializers.serialize(
        object.add1,
        specifiedType: const FullType(String),
      );
    }
    if (object.add2 != null) {
      yield r'add2';
      yield serializers.serialize(
        object.add2,
        specifiedType: const FullType(String),
      );
    }
    if (object.zipCode != null) {
      yield r'zipCode';
      yield serializers.serialize(
        object.zipCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.phoneNumber != null) {
      yield r'phoneNumber';
      yield serializers.serialize(
        object.phoneNumber,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.birthday != null) {
      yield r'birthday';
      yield serializers.serialize(
        object.birthday,
        specifiedType: const FullType(String),
      );
    }
    if (object.sex != null) {
      yield r'sex';
      yield serializers.serialize(
        object.sex,
        specifiedType: const FullType(String),
      );
    }
    if (object.delimit != null) {
      yield r'delimit';
      yield serializers.serialize(
        object.delimit,
        specifiedType: const FullType(String),
      );
    }
    if (object.nickname != null) {
      yield r'nickname';
      yield serializers.serialize(
        object.nickname,
        specifiedType: const FullType(String),
      );
    }
    if (object.profilePicture != null) {
      yield r'profilePicture';
      yield serializers.serialize(
        object.profilePicture,
        specifiedType: const FullType(String),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.deleteAt != null) {
      yield r'deleteAt';
      yield serializers.serialize(
        object.deleteAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.delYnMember != null) {
      yield r'delYn_member';
      yield serializers.serialize(
        object.delYnMember,
        specifiedType: const FullType(String),
      );
    }
    if (object.delYnAccount != null) {
      yield r'delYn_account';
      yield serializers.serialize(
        object.delYnAccount,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAtMember != null) {
      yield r'createdAt_member';
      yield serializers.serialize(
        object.createdAtMember,
        specifiedType: const FullType(String),
      );
    }
    if (object.createdAtAccount != null) {
      yield r'createdAt_account';
      yield serializers.serialize(
        object.createdAtAccount,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SelectUserDTO object, {
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
    required SelectUserDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'memberSeq':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.memberSeq = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'add1':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.add1 = valueDes;
          break;
        case r'add2':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.add2 = valueDes;
          break;
        case r'zipCode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.zipCode = valueDes;
          break;
        case r'phoneNumber':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.phoneNumber = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'birthday':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthday = valueDes;
          break;
        case r'sex':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sex = valueDes;
          break;
        case r'delimit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.delimit = valueDes;
          break;
        case r'nickname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.nickname = valueDes;
          break;
        case r'profilePicture':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.profilePicture = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'deleteAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deleteAt = valueDes;
          break;
        case r'delYn_member':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.delYnMember = valueDes;
          break;
        case r'delYn_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.delYnAccount = valueDes;
          break;
        case r'createdAt_member':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAtMember = valueDes;
          break;
        case r'createdAt_account':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAtAccount = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SelectUserDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SelectUserDTOBuilder();
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
