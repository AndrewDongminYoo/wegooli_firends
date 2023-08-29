// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

// 🌎 Project imports:
import '/data/models/models.dart';

part 'user_details_dto.g.dart';

/// UserDetailsDTO
///
/// Properties:
/// * [userDto]
/// * [authorities]
/// * [name]
/// * [id]
/// * [enabled]
/// * [color]
/// * [password]
/// * [email]
/// * [sex]
/// * [delimit]
/// * [customerKey]
/// * [seq]
/// * [memberSeq]
/// * [delYn]
/// * [nickname]
/// * [profilePicture]
/// * [username]
/// * [add1]
/// * [add2]
/// * [zipCode]
/// * [phoneNumber]
/// * [accountNonExpired]
/// * [birthDay]
/// * [createdAt]
/// * [updatedAt]
/// * [deleteAt]
/// * [updateAt]
/// * [accountNonLocked]
/// * [credentialsNonExpired]
@BuiltValue()
abstract class UserDetailsDTO
    implements Built<UserDetailsDTO, UserDetailsDTOBuilder> {
  @BuiltValueField(wireName: r'userDto')
  UserDTO? get userDto;

  @BuiltValueField(wireName: r'authorities')
  BuiltList<GrantedAuthority>? get authorities;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'id')
  String? get id;

  @BuiltValueField(wireName: r'enabled')
  bool? get enabled;

  @BuiltValueField(wireName: r'color')
  String? get color;

  @BuiltValueField(wireName: r'password')
  String? get password;

  @BuiltValueField(wireName: r'email')
  String? get email;

  @BuiltValueField(wireName: r'sex')
  String? get sex;

  @BuiltValueField(wireName: r'delimit')
  String? get delimit;

  @BuiltValueField(wireName: r'customerKey')
  String? get customerKey;

  @BuiltValueField(wireName: r'seq')
  int? get seq;

  @BuiltValueField(wireName: r'memberSeq')
  int? get memberSeq;

  @BuiltValueField(wireName: r'delYn')
  String? get delYn;

  @BuiltValueField(wireName: r'nickname')
  String? get nickname;

  @BuiltValueField(wireName: r'profilePicture')
  String? get profilePicture;

  @BuiltValueField(wireName: r'username')
  String? get username;

  @BuiltValueField(wireName: r'add1')
  String? get add1;

  @BuiltValueField(wireName: r'add2')
  String? get add2;

  @BuiltValueField(wireName: r'zipCode')
  String? get zipCode;

  @BuiltValueField(wireName: r'phoneNumber')
  String? get phoneNumber;

  @BuiltValueField(wireName: r'accountNonExpired')
  bool? get accountNonExpired;

  @BuiltValueField(wireName: r'birthDay')
  String? get birthDay;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  @BuiltValueField(wireName: r'deleteAt')
  String? get deleteAt;

  @BuiltValueField(wireName: r'updateAt')
  String? get updateAt;

  @BuiltValueField(wireName: r'accountNonLocked')
  bool? get accountNonLocked;

  @BuiltValueField(wireName: r'credentialsNonExpired')
  bool? get credentialsNonExpired;

  UserDetailsDTO._();

  factory UserDetailsDTO([void updates(UserDetailsDTOBuilder b)]) =
      _$UserDetailsDTO;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserDetailsDTOBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserDetailsDTO> get serializer =>
      _$UserDetailsDTOSerializer();
}

class _$UserDetailsDTOSerializer
    implements PrimitiveSerializer<UserDetailsDTO> {
  @override
  final Iterable<Type> types = const [UserDetailsDTO, _$UserDetailsDTO];

  @override
  final String wireName = r'UserDetailsDTO';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserDetailsDTO object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.userDto != null) {
      yield r'userDto';
      yield serializers.serialize(
        object.userDto,
        specifiedType: const FullType(UserDTO),
      );
    }
    if (object.authorities != null) {
      yield r'authorities';
      yield serializers.serialize(
        object.authorities,
        specifiedType: const FullType(BuiltList, [FullType(GrantedAuthority)]),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.enabled != null) {
      yield r'enabled';
      yield serializers.serialize(
        object.enabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.color != null) {
      yield r'color';
      yield serializers.serialize(
        object.color,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
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
    if (object.customerKey != null) {
      yield r'customerKey';
      yield serializers.serialize(
        object.customerKey,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.delYn != null) {
      yield r'delYn';
      yield serializers.serialize(
        object.delYn,
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
    if (object.username != null) {
      yield r'username';
      yield serializers.serialize(
        object.username,
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
    if (object.accountNonExpired != null) {
      yield r'accountNonExpired';
      yield serializers.serialize(
        object.accountNonExpired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.birthDay != null) {
      yield r'birthDay';
      yield serializers.serialize(
        object.birthDay,
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
    if (object.deleteAt != null) {
      yield r'deleteAt';
      yield serializers.serialize(
        object.deleteAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.updateAt != null) {
      yield r'updateAt';
      yield serializers.serialize(
        object.updateAt,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountNonLocked != null) {
      yield r'accountNonLocked';
      yield serializers.serialize(
        object.accountNonLocked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.credentialsNonExpired != null) {
      yield r'credentialsNonExpired';
      yield serializers.serialize(
        object.credentialsNonExpired,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserDetailsDTO object, {
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
    required UserDetailsDTOBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userDto':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserDTO),
          ) as UserDTO;
          result.userDto.replace(valueDes);
          break;
        case r'authorities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType:
                const FullType(BuiltList, [FullType(GrantedAuthority)]),
          ) as BuiltList<GrantedAuthority>;
          result.authorities.replace(valueDes);
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.enabled = valueDes;
          break;
        case r'color':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.color = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
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
        case r'customerKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.customerKey = valueDes;
          break;
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
        case r'delYn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.delYn = valueDes;
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
        case r'username':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.username = valueDes;
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
        case r'accountNonExpired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.accountNonExpired = valueDes;
          break;
        case r'birthDay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.birthDay = valueDes;
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
        case r'deleteAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deleteAt = valueDes;
          break;
        case r'updateAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateAt = valueDes;
          break;
        case r'accountNonLocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.accountNonLocked = valueDes;
          break;
        case r'credentialsNonExpired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.credentialsNonExpired = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserDetailsDTO deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserDetailsDTOBuilder();
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
