// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_agreement_model.g.dart';

/// AccountAgreementModel
///
/// Properties:
/// * [classification]
/// * [accountId]
/// * [agreeYn]
/// * [createdAt]
/// * [updatedAt]
@BuiltValue()
abstract class AccountAgreementModel
    implements Built<AccountAgreementModel, AccountAgreementModelBuilder> {
  @BuiltValueField(wireName: r'classification')
  String? get classification;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'agreeYn')
  String? get agreeYn;

  @BuiltValueField(wireName: r'createdAt')
  String? get createdAt;

  @BuiltValueField(wireName: r'updatedAt')
  String? get updatedAt;

  AccountAgreementModel._();

  factory AccountAgreementModel(
      [void updates(AccountAgreementModelBuilder b)]) = _$AccountAgreementModel;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountAgreementModelBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountAgreementModel> get serializer =>
      _$AccountAgreementModelSerializer();
}

class _$AccountAgreementModelSerializer
    implements PrimitiveSerializer<AccountAgreementModel> {
  @override
  final Iterable<Type> types = const [
    AccountAgreementModel,
    _$AccountAgreementModel
  ];

  @override
  final String wireName = r'AccountAgreementModel';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountAgreementModel object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.classification != null) {
      yield r'classification';
      yield serializers.serialize(
        object.classification,
        specifiedType: const FullType(String),
      );
    }
    if (object.accountId != null) {
      yield r'accountId';
      yield serializers.serialize(
        object.accountId,
        specifiedType: const FullType(String),
      );
    }
    if (object.agreeYn != null) {
      yield r'agreeYn';
      yield serializers.serialize(
        object.agreeYn,
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
    AccountAgreementModel object, {
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
    required AccountAgreementModelBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'classification':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.classification = valueDes;
          break;
        case r'accountId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accountId = valueDes;
          break;
        case r'agreeYn':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.agreeYn = valueDes;
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
  AccountAgreementModel deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountAgreementModelBuilder();
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
