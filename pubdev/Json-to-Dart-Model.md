> 프로페셔널하게 JSON 데이터를 Dart 클래스로 변환하는 방법

JSON 문자열이 주어지면 이 라이브러리는 `jsonc` 및 `json`을 제너레이트하기 때문에 안전한 방식으로 JSON을 파싱하고 생성하는 데 필요한 모든 Dart 클래스를 생성합니다. 또한 [Flutter의 documentation 권장 사항](https://flutter.io/json/#serializing-json-manually-using-dartconvert) 및 [이펙티브 다트: 스타일](https://dart.dev/guides/language/effective-dart/style)에 따라 Flutter 친화적인 모델 클래스를 생성하도록 설계되었습니다. **Json을 수동으로 직렬화하는 방법**과 **Freezed** 및 **Json Serializable**과 같은 코드 생성 라이브러리를 사용하여 JSON을 직렬화하는 방법을 모두 지원합니다.

> **참고:** `Freezed` 또는 `Json Serializable`을 사용하는 경우 `Json to Dart Model`은 유형과 그에 따른 필수 메소드만 생성하고 나머지는 `Dart Build Systembuilders`가 코드 생성을 책임집니다.

<!-- HOW IT WORKS -->

## 작동 방식

`Dart to Json Model Generator`는 JSON 객체를 별도의 파일로 생성하며, 이 덕분에 유사한 구조가 감지되면 생성기는 객체의 이름에 상관없이 다른 파일로 생성하고 경로(`import`)를 사용하여 병합합니다. 이렇게 하면 코드를 더 깔끔하고 가독성 있게 유지할 수 있습니다. 첫 번째 경로 이름에 클래스 이름이 접두사로 추가되어 개체가 어떤 클래스에서 가져온 것인지 표시되도록 이름이 변경됩니다. 이름이 계속 중복되는 경우 무한 이름 변경을 위해 인덱스가 표시됩니다.

- Avoid using file base class names as JSON keys to avoid conflicts and unwanted change of structure names. Note: converting from file `Json to Dart Model` will help to avoid it.
- Properties named with funky names (like "!breaks", "|breaks", etc) will produce syntax errors.

<!-- CUSTOMIZE -->

## 사용자 지정

클래스를 사용자 지정하는 것은 매우 쉽습니다. 간단한 클래스를 빠르게 만들고 싶다면 모든 방법을 건너뛰고 계속을 클릭하기만 하면 됩니다. 그렇지 않으면 직접 빌드하세요. 동결된 클래스와 Json 직렬화 가능을 생성하려면 코드 생성을 선택합니다. 물론 `Settings/Extensions/JSON To Dart Model`에서 구성을 설정할 수 있습니다.

<!-- HOW TO CUSTOMIZE GIF -->
<p align="center">
<img src="readme_assets/usage.gif" alt="How To Customize"/>
</p>

<!-- FEATURES -->

## 기능

### 클립보드에서 수동으로 모델 클래스로 변환

- Convert JSON you copied into dart model classes.

### 선택에서 수동으로 모델 클래스로 변환

- Convert JSON you selected into dart model classes.

### 클립보드에서 코드 생성 라이브러리 지원 모델 클래스로 변환

- Convert JSON you copied into code generation libraries supported model classes. A terminal session runs after conversion to generate the rest parts.

### 선택 항목에서 코드 생성 라이브러리 지원 모델 클래스로 변환

- Convert JSON you selected into code generation libraries supported model classes. A terminal session runs after conversion to generate the rest parts.

### 파일에서 변환

- 파일에서 모든 JSON 객체를 변환합니다.

`Json to Dart Model`생성기는 모든 JSON 객체를`models.jsonc`라는 이름의 파일에 보관하고 원하는 대로 클래스를 구성할 수 있도록 합니다. `models.jsonc` 콘텐츠는 나중에 Dart 클래스로 변환될 모든 JSON 객체가 포함된 목록입니다. `jsonc`형식을 사용하면 나중에 쉽게 찾거나 팀에게 더 쉽게 설명할 수 있도록 JSON 객체에 주석을 달 수 있습니다. 모델을 만들려면 명령 팔레트에서 `Build Models`명령을 실행하거나`Shift + Ctrl + Alt + B`키를 누르면 파일을 만들 것인지 묻는 메시지가 표시되고 Enter 키를 눌러 파일을 추가할 수 있습니다. 출력 옵션을 구성하려면 `Settings/Extensions/JSON To Dart Model` **수동으로 파일 생성**으로 이동합니다.

앱 디렉토리 `my_app/models.jsonc`에 새 파일을 추가하고 다중 JSON 변환을 위해 쉼표로 구분된 목록에 모든 JSON 객체를 한 번에 넣습니다. **키** `"__className": "MyClass",`을 사용하여 각 객체에 기본 클래스 이름을 추가한다는 점에 유의하세요 클래스 이름이 객체에서 제거되고 코드 구문의 루트 클래스 이름으로 사용됩니다. 파일 덮어쓰기를 방지하기 위해 중복된 클래스 이름은 허용되지 않습니다. `models.jsonc` 내부. `__path` 키를 추가하면 기본 경로를 재정의하고 워크스페이스에서 원하는 위치와 방식으로 모델을 탐색할 수 있습니다. 파일은 다음과 같이 표시되어야 합니다:

#### 단일 JSON 변환

```jsonc
{
  "__className": "user_post", // <- The base class name of the object.
  "__path": "/lib/models/user_post", // <- override default path with a new one by adding '__path' key.
  "userId": 1,
  "id": 1, // To mark as required value, change "id" to "r@id".
  "title": "Json To Dart Model", // To mark as a default value, change "title" to "d@title".
  "body": "Json to Dart advanced..."
}
```

#### 다중 JSON 변환

```jsonc
[
  {
    "__className": "class_one"
    /* ... */
  },
  {
    "__className": "class_two"
    /* ... */
  }
]
```

개체를 추가하고 Dart 클래스로 변환한 후 [명령 팔레트]에서 명령을 실행하거나 더 간단하게 `Shift + Ctrl + Alt + B` 키 바인딩을 사용합니다. 일부 클래스를 업데이트하려면 디렉토리에서 클래스 폴더를 삭제하고 `Build Models`를 다시 실행하면 누락된 디렉터리가 생성됩니다.

<!-- CONVERT FROM DIRECTORY -->

## 디렉토리에서 변환

`models.jsonc` 파일에서 `JSON` 모델을 변환하는 중인데 파일이 너무 커진 경우. 그런 다음 `/.json_models` 디렉토리 내에서 분할할 수 있습니다. 그러면 생성기가 모든 모델을 읽고 models.jsonc에서와 동일한 방식으로 변환합니다. 추적된 디렉토리 내에서 지원되는 파일은 `**.json`과 `**.jsonc`이며 나머지는 무시됩니다. 물론 `my_app/models.jsonc`와 `my_app/.json_models` 두 추적 위치를 동시에 사용할 수 있으며, 제너레이터는 두 위치를 모두 추적합니다.

<!-- ENHANCED FILE NAMES -->

## 향상된 파일 이름

`user.model.dart`와 같은 향상된 파일 이름을 사용하면 [Hive Object Converter](https://marketplace.visualstudio.com/items?itemName=mrgnhnt96.hive-object-converter)와 같은 다른 변환기와 호환되는 코드를 작성할 수 있습니다. 이를 생성하려면 클래스 이름을 점으로 구분하면 되고, 점 뒤에 모든 것이 향상 이름으로 추가됩니다. 예: `user.model` 결과 `user.model.dart`. 바로 그거예요.

<!-- CONTEXT ACTIONS -->

## 컨텍스트 작업

마우스 오른쪽 버튼 컨텍스트 메뉴에서 JSON을 변환합니다.

- Select any folder and run the available method to start conversion.
- Select the JSON code inside the file `**.json` or `**.jsonc`, click the right mouse button, and run the available method to start conversion.
- Click the right mouse button on the `models.jsonc` file, and run the available method to start conversion.

<!-- ANNOTATIONS -->

## 어노테이션 사용법

`JSON` 키 값을 기본값 또는 필수로 표시할 수 있습니다. `JSON` 키에 `d@` 또는 `r@`을 추가하기만 하면 다트 모델에 각각 자동으로 생성됩니다.

- `d@` - Marks as default value.
- `r@` - Marks as required value.

```jsonc
{
  "r@id": 1,
  "d@title": "Json To Dart Model"
}
```

Result:

```dart
class Example {
  int id;
  String title;

  Example({required this.id, this.title = 'Json To Dart Model'});

  // The rest...
}
```

이는 Freezed 및 JSON Serializable에서도 작동하며, 기본값으로 표시된 경우 `DateTime`과 같은 상수가 아닌 값도 초기화합니다.

> **Note:** what happens if I use multiple annotations `"r@d@key"` then the generator will prioritize the default value and generate value as the default since only named parameters without a default value can be with required.

<!-- SPEED UP CONVERTING -->

## 변환 속도 향상

JSON 파일로 많이 작업하고 매번 명령 팔레트에서 모델을 사용자 지정하는 것이 지겨우신 경우. 그런 다음 `Settings/Extensions/JSON To Dart Model`로 이동하여 기본 구성을 `true`로 설정할 수 있습니다. 그리고 Json to Dart Model은 모든 곳에서 설정 구성을 사용하며 입력에 대해 묻지 않습니다. 선택 또는 클립보드에서 아무 명령이나 선택하고 디렉터리를 선택하기만 하면 됩니다. 기본 디렉토리로 더 빠르게 변환하려면 빠른 모드를 `true`로 설정합니다.

<!-- AVOID DYNAMIC TYPES -->

## 다이나믹 타입 피하기

null-safety Dart를 사용하면 설정에서 `dynamic` 유형을 피하도록 활성화할 수 있으며, 생성기는 `from/to` 유형을 `Map<String, Object?>`로 출력합니다. Dart 표준을 따르는 경우, Dart 언어의 기본 목록 유형이 `dynamic`이기 때문에 `List<dynamic>` 유형은 변경되지 않습니다. 또한 코드 생성기 라이브러리로 생성하는 경우에도 `dynamic` 유형을 사용하기 때문에 아무런 영향이 없습니다.

<!-- SUFFIX FOR FROM/TO -->

## from 및 to 접미사

The generator has default `Json` suffix for `from/to` methods. It is possible to change the extension settings or override by converting `JSON`.

<!-- JSON SERIALIZABLE -->

## JSON 직렬화 가능

Add serializing JSON using code generation libraries to `pubspec.yaml`

structure of the `pubspec.yaml`

```yaml
dependencies:
  # Your other regular dependencies here
  json_annotation: <latest_version>

dev_dependencies:
  # Your other dev_dependencies here
  build_runner: <latest_version>
  json_serializable: <latest_version>
```

<!-- FREEZED -->

## Freezed

Freezed는 0.12.7 이전 버전과 0.14.0 이상의 새로운 버전을 모두 지원합니다. 몇 번의 클릭만으로 Freezed 클래스에 JSON 파일을 생성하려면 세 가지 패키지가 필요합니다.

structure of the `pubspec.yaml`

```yaml
dependencies:
  # Your other regular dependencies here
  freezed_annotation: <latest_version>

dev_dependencies:
  # Your other dev_dependencies here
  build_runner: <latest_version>
  freezed: <latest_version>
```

Read more about how to install [Freezed](https://pub.dev/packages/freezed#install).

All generated classes with Freezed will be `@immutable` and support all methods like `copyWith`, `toString`, equality operator`==`... See example:

```dart
@freezed
class Todo with _$Todo {
  factory Todo({
    @JsonKey(name: 'todo_id') int? todoId,
    String? description,
    bool? completed,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
```

Freezed 제너레이터는 매일 코딩 작업을 하는 분들에게 유용합니다. 일부 값만 업그레이드하기만 하면 나머지는 Freezed 생성기가 알아서 처리합니다. 파서를 어떤 메서드로 업데이트하는 것을 잊어버렸다고 걱정할 필요가 없습니다. Freezed로 할 수 있는 더 많은 작업은 [Freezed documentation](https://pub.dev/packages/freezed)를 참조하세요.

> **TIP:** 생성된 파일이 너무 많다고 생각되면 [생성된 파일의 사소한 경고 무시하기](https://pub.dev/packages/freezed#ignore-lint-warnings-on-generated-files)에 대한 Freezed의 팁을 참조하세요.

<!-- EQUATABLE -->

## Equatable

Equatable은 생성된 모델을 더 나은 방식으로 비교할 수 있는 기능을 가진 immutable 클래스입니다. **한 줄의 추가 코드 없이도** 서로 다른 인스턴스인 두 클래스가 **동등한지 확인할 수 있습니다**. 물론, 더 나은 경험을 위해 [toString] 메서드와 [copyWith]를 추가할 수도 있습니다.

```dart
class Todo extends Equatable {
  final int? id;
  final String? description;
  final bool? completed;

  const Todo({this.id, this.description, this.completed});

  factory Todo.fromJson(Map<String, dynamic> json) => Todo(
        id: json['id'] as int?,
        description: json['description'] as String?,
        completed: json['completed'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'completed': completed,
      };

  // Here will be more methods after your customization.
  // toString();
  // copyWith();

  @override
  List<Object?> get props => [id, description, completed];
}
```

동일성 지원을 추가하려면 JSON을 코드로 구문 분석하는 프로세스가 시작될 때 `Equatable` 패지키의 동일성 지원을 선택하기만 하면 확장 프로그램이 Dart 모델에서 고급 코드 동일성 확인 설정을 처리합니다.

<!-- EQUALITY OPERATOR -->

## 등호 연산자 (==)

Equatable 패키지를 설치하지 않고 `@immutable` 클래스 및 값으로 작업하고 싶지 않다면 등호 연산자를 추가하고 클래스를 변경 가능으로 사용자 정의할 수 있습니다. Dart 컬렉션의 유틸리티를 사용하면 이퀄리티를 상용구 없이 만들 수 있습니다.

### Null Safety 미포함

```dart
@override
bool operator ==(dynamic other) {
  if(identical(other, this)) return true;
  if (other is! Todos) return false;
  final mapEquals = const DeepCollectionEquality().equals;
  return mapEquals(other.toJson() as Map, toJson());
}

@override
int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode ^ completed.hashCode;
```

### Null Safety 포함

```dart
@override
bool operator ==(Object other) {
  if(identical(other, this)) return true;
  if (other is! Todos) return false;
  final mapEquals = const DeepCollectionEquality().equals;
  return mapEquals(other.toJson(), toJson());
}

//..
```

<!-- TO STRING METHOD -->

## ToString 메서드

디버깅 환경을 개선하기 위해 클래스에 `toString` 메서드를 추가할 수 있습니다.

```dart
@override
String toString() {
  return 'Todos(userId: $userId, id: $id, title: $title, completed: $completed)';
}
```

Equatable은 주어진 모든 프로퍼티를 포함하여 [toString](https://github.com/felangel/equatable/blob/master/README.md#tostring-implementation) 메서드를 구현할 수 있습니다. 이 동작을 원한다면 JSON을 코드로 파싱하는 프로세스가 시작될 때 `Stringify` 메서드를 선택하면 됩니다.

```dart
@override
bool get stringify => true;
```

<!-- COPY WITH METHOD -->

## CopyWith 메서드

`copyWith` 메서드를 사용하면 `@immutable` 클래스를 사용하는 것이 더 쉬워집니다. immutable 클래스를 사용하는 경우 적극 권장합니다.

```dart
Todo copyWith({
  int? id,
  String? description,
  bool? completed,
}) {
  return Todo(
    id: id ?? this.id,
    description: description ?? this.description,
    completed: completed ?? this.completed,
  );
}
```

<!-- CODECS -->

## Codec

코덱 옵션을 활성화하면 `fromMap/toMap` 메서드 내부에 `encode/decode`를 사용하여 `fromJson/toJson` 메서드를 구현합니다.

<!-- NULL SAFETY -->

## Null Safety

Null-Safety는 Dart 언어에서와 같이 기본값으로 활성화되어 있으며, 변수가 null 값을 가질 수 있음을 나타냅니다. 비활성화하려면 `Settings/Extensions/JSON To Dart Model`로 이동합니다.

> **참고:** 사용 중인 패키지가 Dart null Safety를 지원하는지 확인하세요.

<!-- SERIALIZING JSON USING CODE GENERATION LIBRARIES -->

## 코드 생성 라이브러리를 사용하여 JSON 직렬화하기

Flutter에서 코드 생성 라이브러리를 사용하려면 먼저 `pubspec.yaml` 파일에 의존성을 추가하는 것이 좋습니다. 이 확장 기능으로도 가능합니다. 걱정할 필요가 없습니다 :윙크: 그런 다음 JSON을 모델 클래스로 변환할 수 있습니다. 그런 다음 Flutter 설명서에 따라 `dart run build_runner build` 명령을 실행하여 누락된 모델 코드를 생성해야 합니다. 다행히도 확장 프로그램은 자동으로 새 터미널 세션을 열고 해당 명령을 실행합니다 :미소:

- **JSON과 직렬화**에 대한 [flutter의 documentation 추천](https://flutter.io/json/#serializing-json-manually-using-dartconvert)을 읽어보세요.

<!-- HOW TO USE -->

## 사용 방법

1. 유효한 JSON을 선택합니다. `Ctrl + Shift + P`(Linux 및 Mac) 또는 `Ctrl + P`(Windows)를 누르고 `Convert From Selection` 또는 `Convert From Selection To Code Generation Supported Classes`을 검색합니다. 저장할 베이스 클래스 이름과 위치를 입력합니다.

2. 유효한 JSON을 복사합니다. `Ctrl + Shift + P`(Linux 및 Mac) 또는 `Ctrl + P`(Windows)를 누르고 `Convert From Clipboard` 또는 `Convert From Clipboard To Code Generation Supported Classes`을 검색합니다. 저장할 베이스 클래스 이름과 위치를 입력합니다.

3. `Ctrl + Shift + P`(Linux 및 Mac) 또는 `Ctrl + P`(Windows)를 누르고 `Add Code Generation Libraries To pubspec.yaml`을 검색한 후 Enter 키를 누릅니다.

4. `Ctrl + Shift + P`(Linux 및 Mac) 또는 `Ctrl + P`(Windows)를 누르고 `Build Models`를 검색한 후 Enter 키를 누릅니다.

5. 단축키 사용.

6. 마우스 오른쪽 버튼 컨텍스트에서 변환하기.

<!-- KEY BINDINGS -->

## 키 바인딩

Convert From Clipboard (`Shift + Ctrl + Alt + V`)

선택 항목에서 변환 (`Shift + Ctrl + Alt + S`)

파일에서 변환 (`Shift + Ctrl + Alt + B`)

Convert from Clipboard to Code Generation supported classes (`Shift + Ctrl + Alt + G`)

Convert from Selection to Code Generation supported classes (`Shift + Ctrl + Alt + H`)

<!-- CONVERTER -->

## 변환기

- Array type merging
- Duplicate type prevention
- Union types
- Optional types
- Array types

<!-- KNOWN ISSUES -->

## 알려진 문제

1. `Linux`에서 키 바인딩을 사용하면 `Command failed: xclip -selection clipboard -o` 오류가 발생할 수 있으며, 이는 리눅스에 클립보드 패키지가 없을 때 발생합니다. 이 오류를 해결하려면 터미널에서 이 명령을 실행하여 누락된 패키지를 설치합니다.

   ```bash
   sudo apt-get install xclip
   ```

2. 잘못된 유형과 일치합니다. 제 경험에 따르면 일부 API 제공업체는 1.10 대신 1 또는 1.00과 같이 `double` 대신 `integer` 값을 작성합니다. 문제는 이 생성기가 심층 객체 스캔을 수행하고 각 항목을 읽어서 값의 유형을 감지하고 발견 된 유형을 반환한다는 것입니다. 그러나 목록은 잘 작동하지만, 목록에 `double`과 `integer`만 있는 경우 목록 유형은 `num`으로 반환됩니다. JSON 객체를 직접 작성하는 경우 더 나은 결과를 위해 올바른 값 유형을 제공하세요. JSON 품질에 관한 모든 것 :선글라스:

<!-- LINKS -->

## 링크

- [Repository](https://github.com/hiranthar/Json-to-Dart-Model.git)
- [Issues](https://github.com/hiranthaR/Json-to-Dart-Model/issues)
- [Changelog](https://github.com/hiranthaR/Json-to-Dart-Model/blob/master/CHANGELOG.md)
- [Discussions](https://github.com/hiranthaR/Json-to-Dart-Model/discussions)
