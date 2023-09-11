# JSON Serializable

````dart
// Copyright (c) 2017, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:meta/meta_meta.dart';

import 'allowed_keys_helpers.dart';
import 'checked_helpers.dart';
import 'enum_helpers.dart';
import 'json_converter.dart';
import 'json_key.dart';

part 'json_serializable.g.dart';

/// [JsonSerializable]에 대한 자동 fieldRename 동작에 대한 값입니다.
enum FieldRename {
  /// 필드 이름을 변경하지 않고 그대로 사용합니다.
  none,

  /// `kebabCase`라는 이름의 필드를 JSON 키 `kebab-case`로 인코딩합니다.
  kebab,

  /// `snakeCase`라는 필드를 JSON 키 `snake_case`로 인코딩합니다.
  snake,

  /// `pascalCase`라는 필드를 JSON 키 `PascalCase`로 인코딩합니다.
  pascal,

  /// `screamingSnakeCase`라는 이름의 필드를 JSON 키 `SCREAMING_SNAKE_CASE`로 인코딩합니다.
  screamingSnake,
}

/// 코드를 생성할 클래스를 지정하는 데 사용되는 어노테이션입니다.
@JsonSerializable(
  checked: true,
  disallowUnrecognizedKeys: true,
  fieldRename: FieldRename.snake,
)
@Target({TargetKind.classType})
class JsonSerializable {
  /// `true`인 경우, [Map] 유형은 [Map<String, dynamic>](기본 유형)으로 가정됩니다.
  /// - 로 가정되며, 이는 JSON 디코딩에서 반환되는 [Map] 인스턴스의 기본 유형입니다.
  /// `dart:convert`.
  ///
  /// 이렇게 하면 코드 크기가 커지지만, 다른 소스에서 반환된 [Map] 유형이 허용됩니다.
  /// `패키지:yaml`과 같은 다른 소스에서 반환된 [Map] 유형을 허용합니다.
  ///
  /// *참고: 대부분의 경우 키 값은 여전히 [문자열]*로 가정됩니다.
  final bool? anyMap;

  /// `true`인 경우, 생성된 `fromJson` 함수에는 유형의 적절한 역직렬화를 검증하기 위한 추가 검사가 포함됩니다.
  /// 유효성을 검사하는 추가 검사가 포함됩니다.
  ///
  /// 역직렬화 중에 예외가 발생하면 [CheckedFromJsonException]이 발생합니다.
  final bool? checked;

  /// `fromJson` 함수를 생성할 때 타겟팅할 명명된 생성자를 지정합니다.
  /// 함수를 생성할 때 타겟팅할 명명된 생성자를 지정합니다.
  ///
  /// 값이 설정되지 않았거나 빈 [String]이면 기본 생성자(
  /// 가 사용됩니다.
  ///
  /// [createFactory]가 `false`인 경우 이 설정은 영향을 미치지 않습니다.
  final String? constructor;

  /// `true`(기본값)이면 생성된 파트 파일에 비공개 정적 `_$ExampleFromJson` 메서드
  /// 메서드가 생성된 파트 파일에 생성됩니다.
  ///
  /// 소스 클래스에 추가된 팩토리 생성자에서 이 메서드를 호출합니다:
  ///
  /// ```dart
  /// @JsonSerializable()
  /// class Example {
  ///   // ...
  ///   factory Example.fromJson(Map<String, dynamic> json) =>...
  ///     _$ExampleFromJson(json);
  /// }
  /// ```
  final bool? createFactory;

  /// `true`(기본값은 거짓)이면 생성된 파트 파일에 비공개 정적 `_$ExampleJsonMeta`
  /// 상수가 생성된 파트 파일에 생성됩니다.
  ///
  /// 이 상수는 다른 코드 생성기에서 다음과 같은 기능을 지원하는 데 사용할 수 있습니다.
  /// [fieldRename]와 같은 기능을 지원하는 데 사용할 수 있습니다.
  final bool? createFieldMap;

  /// `true`(기본값은 거짓)이면, 비공개 정적 `_$ExamplePerFieldToJson`
  /// 추상 클래스가 파트 파일에 생성됩니다.
  ///
  /// 이 추상 클래스에는 속성당 하나의 정적 함수가 포함됩니다,
  /// 전체 객체 대신 이 속성만 인코딩하는 방법을 노출합니다.
  final bool? createPerFieldToJson;

  /// 기본값인 `true`인 경우, 클래스에서 참조할 수 있는 최상위 함수가 생성됩니다.
  /// 참조할 수 있는 최상위 함수가 생성됩니다.
  ///
  /// ```dart
  /// @JsonSerializable()
  /// 예제 클래스 {
  ///   Map<String, dynamic> toJson() => _$ExampleToJson(this);
  /// }
  /// ```
  final bool? createToJson;

  /// 기본값인 `false`인 경우, 생성된 `FromJson` 함수는 다음과 같이 합니다.
  /// 제공된 JSON [Map]에서 인식할 수 없는 키를 무시합니다.
  ///
  /// `true`인 경우, 인식할 수 없는 키는 [UnrecognizedKeysException]을 발생시킵니다.
  /// 가 발생합니다.
  final bool? disallowUnrecognizedKeys;

  /// `true`인 경우, 생성된 `toJson` 메서드는 중첩된 객체에서 명시적으로 `toJson`을 호출합니다.
  /// 중첩된 객체에 대해 명시적으로 호출합니다.
  ///
  /// `dart:convert`에서 JSON 인코딩 지원을 사용하는 경우, `toJson`은
  /// 객체에서 자동으로 호출되므로 기본 동작
  /// (`explicitToJson: false`)는 `toJson` 호출을 생략하는 것입니다.
  ///
  /// `explicitToJson: false`의 예(기본값)
  ///
  /// ```dart
  /// Map<String, dynamic> toJson() => {'child': child};
  /// ```
  ///
  /// Example of `explicitToJson: true`
  ///
  /// ```dart
  /// Map<String, dynamic> toJson() => {'child': child?.toJson()};
  /// ```
  final bool? explicitToJson;

  /// 클래스 필드 이름을 JSON 맵 키로 변환할 때 자동 명명 전략을 정의합니다.
  ///
  /// 기본값인 [FieldRename.none] 값을 사용하면 필드 이름은 수정하지 않고
  /// 수정하지 않고 사용됩니다.
  ///
  /// 다른 옵션에 대한 자세한 내용은 [FieldRename]을 참조하세요.
  ///
  /// 참고: [JsonKey.name] 값이 이 옵션보다 우선합니다.
  /// 필드에 대해 이 옵션보다 [JsonKey.name] 값이 우선합니다.
  final FieldRename? fieldRename;

  /// 유형 매개변수(일반 유형)가 있는 클래스에서 `true`이면 추가
  /// `fromJson` 및/또는 `toJson`에 대해 추가 "헬퍼" 매개변수가 생성되어
  /// 해당 유형의 값 직렬화를 지원합니다.
  ///
  /// 예를 들어, 생성된 코드는
  ///
  /// ```dart
  /// @JsonSerializable(genericArgumentFactories: true)
  /// class Response<T> {
  ///   int status;
  ///   T value;
  /// }
  /// ```
  ///
  /// 다음과 같이 보입니다.
  ///
  /// ```dart
  /// Response<T> _$ResponseFromJson<T>(
  ///   Map<String, dynamic> json,
  ///   T Function(Object json) fromJsonT,
  /// ) {
  ///   return Response<T>()
  ///     ..status = json['status'] as int
  ///     ..value = fromJsonT(json['value']);
  /// }
  ///
  /// Map<String, dynamic> _$ResponseToJson<T>(
  ///   Response<T> instance,
  ///   Object Function(T value) toJsonT,
  /// ) =>
  ///     <String, dynamic>{
  ///       'status': instance.status,
  ///       'value': toJsonT(instance.value),
  ///     };
  /// ```
  ///
  /// 참고:
  ///
  /// 1. 이 옵션은 타입 매개변수가 없는 클래스에는 영향을 미치지 않습니다.
  ///    이러한 클래스에 사용하면 빌드 로그에 경고가 울립니다.
  /// 1. 이 옵션이 `build.yaml`을 통해 패키지의 모든 클래스에 대해 설정된 경우
  ///    을 통해 패키지의 모든 클래스에 대해 이 옵션을 설정하면 유형 매개변수가 있는 클래스에만 적용되므로 경고가
  ///    에코되지 않습니다.
  final bool? genericArgumentFactories;

  /// `true`일 경우, [JsonKey]로 주석이 달린 필드에만 코드가
  /// 코드가 생성됩니다.
  ///
  /// 해당 필드에 다음과 같이 주석이 달린 것과 동일한 효과가 있습니다.
  /// [JsonKey.includeToJson] 및 [JsonKey.includeFromJson]이 `false`로 설정된 경우
  final bool? ignoreUnannotated;

  /// 제너레이터가 `null` 값을 가진 필드를 직렬화된 출력에 포함할지 여부.
  /// 직렬화된 출력에 포함할지 여부.
  ///
  /// 기본값인 `true`인 경우 모든 필드가 JSON에 기록됩니다.
  /// `null`인 경우에도 모든 필드가 JSON에 기록됩니다.
  ///
  /// 필드에 'null'이 아닌 값으로 `JsonKey`가 주석 처리된 경우
  /// 포함하면 해당 값이 우선합니다.
  final bool? includeIfNull;

  /// 이 클래스에 적용할 [JsonConverter] 목록입니다.
  ///
  /// 쓰기:
  ///
  /// ```dart
  /// @JsonSerializable(converters: [MyJsonConverter()])
  /// 예제 클래스 {...}
  /// ```
  ///
  /// 는 쓰기와 동일합니다:
  ///
  /// ```dart
  /// @JsonSerializable()
  /// MyJsonConverter()
  /// 예제 클래스 {...}
  /// ```
  ///
  /// 주요 차이점은 여러 클래스에서 사용자 정의
  /// [JsonSerializable]을 여러 클래스에서 재사용할 수 있다는 것입니다:
  ///
  /// ```dart
  /// const myCustomAnnotation = JsonSerializable(
  ///   변환기: [MyJsonConverter()],
  /// );
  ///
  /// @myCustomAnnotation
  /// 예제 클래스 {...}
  ///
  /// 내 사용자 정의 주석
  /// class Another {...}
  /// ```
  @JsonKey(includeFromJson: false, includeToJson: false)
  final List<JsonConverter>? converters;

  /// 새 [JsonSerializable] 인스턴스를 만듭니다.
  const JsonSerializable({
    @Deprecated('Has no effect') bool? nullable,
    this.anyMap,
    this.checked,
    this.constructor,
    this.createFieldMap,
    this.createFactory,
    this.createToJson,
    this.disallowUnrecognizedKeys,
    this.explicitToJson,
    this.fieldRename,
    this.ignoreUnannotated,
    this.includeIfNull,
    this.converters,
    this.genericArgumentFactories,
    this.createPerFieldToJson,
  });

  factory JsonSerializable.fromJson(Map<String, dynamic> json) =>
      _$JsonSerializableFromJson(json);

  /// 모든 필드가 기본값으로 설정된 [JsonSerializable] 인스턴스입니다.
  /// 인스턴스를 반환합니다.
  @Deprecated('Was only ever included to support builder infrastructure.')
  static const defaults = JsonSerializable(
    anyMap: false,
    checked: false,
    constructor: '',
    createFactory: true,
    createToJson: true,
    disallowUnrecognizedKeys: false,
    explicitToJson: false,
    fieldRename: FieldRename.none,
    ignoreUnannotated: false,
    includeIfNull: true,
    genericArgumentFactories: false,
  );

  /// 필드가 `this`에 해당하는 값과 같은
  /// `null`이 아닌 경우 `this`의 해당 값과 동일한 필드를 가진 새로운 [JsonSerializable] 인스턴스를 반환합니다.
  ///
  /// 그렇지 않으면 반환된 값은 정의된 기본값[defaults]을 갖습니다.
  @Deprecated('Was only ever included to support builder infrastructure.')
  JsonSerializable withDefaults() => JsonSerializable(
        anyMap: anyMap ?? defaults.anyMap,
        checked: checked ?? defaults.checked,
        constructor: constructor ?? defaults.constructor,
        createFactory: createFactory ?? defaults.createFactory,
        createToJson: createToJson ?? defaults.createToJson,
        disallowUnrecognizedKeys:
            disallowUnrecognizedKeys ?? defaults.disallowUnrecognizedKeys,
        explicitToJson: explicitToJson ?? defaults.explicitToJson,
        fieldRename: fieldRename ?? defaults.fieldRename,
        ignoreUnannotated: ignoreUnannotated ?? defaults.ignoreUnannotated,
        includeIfNull: includeIfNull ?? defaults.includeIfNull,
        genericArgumentFactories:
            genericArgumentFactories ?? defaults.genericArgumentFactories,
      );

  Map<String, dynamic> toJson() => _$JsonSerializableToJson(this);
}
````
