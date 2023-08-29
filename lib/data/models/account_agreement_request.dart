// ignore_for_file: unused_element

// 📦 Package imports:
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'account_agreement_request.g.dart';

/// AccountAgreementRequest
///
/// Properties:
/// * [classification]
/// * [accountId]
/// * [agreeYn]
@BuiltValue()
abstract class AccountAgreementRequest
    implements Built<AccountAgreementRequest, AccountAgreementRequestBuilder> {
  @BuiltValueField(wireName: r'classification')
  String? get classification;

  @BuiltValueField(wireName: r'accountId')
  String? get accountId;

  @BuiltValueField(wireName: r'agreeYn')
  String? get agreeYn;

  AccountAgreementRequest._();

  factory AccountAgreementRequest(
          [void updates(AccountAgreementRequestBuilder b)]) =
      _$AccountAgreementRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AccountAgreementRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AccountAgreementRequest> get serializer =>
      _$AccountAgreementRequestSerializer();
}

class _$AccountAgreementRequestSerializer
    implements PrimitiveSerializer<AccountAgreementRequest> {
  @override
  final Iterable<Type> types = const [
    AccountAgreementRequest,
    _$AccountAgreementRequest
  ];

  @override
  final String wireName = r'AccountAgreementRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AccountAgreementRequest object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    AccountAgreementRequest object, {
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
    required AccountAgreementRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AccountAgreementRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AccountAgreementRequestBuilder();
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
