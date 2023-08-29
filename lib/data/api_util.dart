// 🎯 Dart imports:
import 'dart:convert' show json;
import 'dart:typed_data' show Uint8List;

// 📦 Package imports:
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

/// Format the given form parameter object into something that Dio can handle.
/// Returns primitive or String.
/// Returns List/Map if the value is BuildList/BuiltMap.
dynamic encodeFormParameter(
    Serializers serializers, dynamic value, FullType type) {
  if (value == null) {
    return '';
  }
  if (value is String || value is num || value is bool) {
    return value;
  }
  final serialized = serializers.serialize(
    value as Object,
    specifiedType: type,
  );
  if (serialized is String) {
    return serialized;
  }
  if (value is BuiltList || value is BuiltSet || value is BuiltMap) {
    return serialized;
  }
  return json.encode(serialized);
}

dynamic encodeQueryParameter(
  Serializers serializers,
  dynamic value,
  FullType type,
) {
  if (value == null) {
    return '';
  }
  if (value is String || value is num || value is bool) {
    return value;
  }
  if (value is Uint8List) {
    /// Uint8List를 Base64로 인코딩하여 문자열로 변환할 수 있습니다.
    /// 이렇게 하면 클라이언트에서 문자열로 전송하고, 필요한 경우 클라이언트에서 다시 디코딩하여 Uint8List로 변환할 수 있습니다.
    /// Dart에서는 dart:convert 라이브러리의 base64 클래스를 사용하여 인코딩 및 디코딩할 수 있습니다.
    /// `String encodedData = base64.encode(value);`
    ///
    /// Uint8List를 다른 형식으로 변환하여 클라이언트에서 사용할 수 있는 형태로 전달할 수도 있습니다.
    /// 예를 들어, Uint8List를 16진수 문자열로 변환하거나, 바이트 배열로 변환하여 전송할 수 있습니다.
    /// 이 경우 클라이언트에서 해당 형식으로 다시 변환해야 합니다.
    /// `String hexString = value.map((byte) => byte.toRadixString(16)).join();`
    return value;
  }
  final serialized = serializers.serialize(
    value as Object,
    specifiedType: type,
  );
  if (serialized == null) {
    return '';
  }
  if (serialized is String) {
    return serialized;
  }
  return serialized;
}

ListParam<Object?> encodeCollectionQueryParameter<T>(
  Serializers serializers,
  dynamic value,
  FullType type, {
  ListFormat format = ListFormat.multi,
}) {
  final serialized = serializers.serialize(
    value as Object,
    specifiedType: type,
  );
  if (value is BuiltList<T> || value is BuiltSet<T>) {
    return ListParam(List.of((serialized as Iterable<Object?>).cast()), format);
  }
  throw ArgumentError('Invalid value passed to encodeCollectionQueryParameter');
}
