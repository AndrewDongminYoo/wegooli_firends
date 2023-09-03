---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/build_web_compilers
author:
---

# build_web_compilers | Dart Package

Web compilers for users of [`package:build`](https://pub.dev/packages/build).
[![Issues related to build_web_compilers](https://img.shields.io/github/issues-raw/dart-lang/build/package%3A%20build_web_compilers.svg)](https://github.com/dart-lang/build/labels/package%3A%20build_web_compilers)
[![Pub Package Version](https://img.shields.io/pub/v/build_web_compilers.svg)](https://pub.dev/packages/build_web_compilers)
[![Latest Dartdocs](https://img.shields.io/badge/dartdocs-latest-blue.svg)](https://pub.dev/documentation/build_web_compilers/latest)
[![Join the chat on Gitter](https://badges.gitter.im/dart-lang/build.svg)](https://gitter.im/dart-lang/build)

- [Installation](https://pub.dev/packages/build_web_compilers#installation)
- [Usage](https://pub.dev/packages/build_web_compilers#usage)
- [Configuration](https://pub.dev/packages/build_web_compilers#configuration)
- [Manual Usage](https://pub.dev/packages/build_web_compilers#manual-usage)

이 패키지는 브라우저에서 코드를 실행하려는 [`package:build`](https://pub.dev/packages/build) 사용자를 위한 [개발 의존성](https://dart.dev/tools/pub/dependencies#dev-dependencies)으로 사용하기 위한 것입니다. `pubspec.yaml`에 다음을 추가하기만 하면 됩니다:

```dart
dev_dependencies:
  build_web_compilers:
```

자동 생성된 빌드 스크립트를 사용하는 경우(`build.dart` 파일을 직접 작성하는 대신 `dart run build_runner <command>`를 통해), 위에 나열된 `dev_dependency`만 있으면 됩니다.

기본적으로 [Dart 개발 컴파일러](https://dart.dev/tools/dartdevc)(_dartdevc_, _DDC_ 라고도 함)가 사용됩니다.

dart2js를 사용하려면 `build.yaml` 파일을 추가해야 하며, 대략 다음과 같은 모양이어야 합니다:

```yaml
targets:
  $default:
    builders:
      build_web_compilers:entrypoint:
        # These are globs for the entrypoints you want to compile.
        generate_for:
          - test/**.browser_test.dart
          - web/**.dart
        options:
          compiler: dart2js
          # List any dart2js specific args here, or omit it.
          dart2js_args:
            - -O2
```

dartdevc는 모듈형 컴파일러이므로 모든 모듈에서 일관된 빌드를 보장하려면 환경 변수를 전역적으로 구성해야 합니다. YAML의 매핑으로 구성합니다. 환경 정의 변수는 `const String.fromEnvironment` 및 `const bool.fromEnvironment`로 읽을 수 있습니다. 예를 들어

```yaml
global_options:
  build_web_compilers:ddc:
    options:
      environment:
        SOME_VAR: some value
        ANOTHER_VAR: false
```

dart2js의 경우 `dart2js_args` 옵션을 사용합니다. 이 옵션은 전역적으로 또는 대상별로 구성할 수 있습니다.

```yaml
targets:
  $default:
    builders:
      build_web_compilers:entrypoint:
        options:
          dart2js_args:
            - -DSOME_VAR=some value
            - -DANOTHER_VAR=true
```

명령줄에서 `--define` 인수를 사용하여 지정할 수도 있습니다.

```shell
webdev serve -- '--define=build_web_compilers:ddc=environment={"SOME_VAR":"changed"}'
```

사용자 지정 빌드 스크립트를 사용하는 경우 다음 빌더 애플리케이션을 목록의 맨 마지막에 추가해야 합니다(js 파일을 후처리해야 하는 경우가 아니라면).

```dart
[
    apply(
        'build_web_compilers:ddc',
        [
        (_) => new ModuleBuilder(),
        (_) => new UnlinkedSummaryBuilder(),
        (_) => new LinkedSummaryBuilder(),
        (_) => new DevCompilerBuilder()
        ],
        toAllPackages(),
        // 권장 사항이지만 필수는 아닙니다. 이렇게 하면 엔트리 포인트로 가져온 모듈만 컴파일됩니다.
        isOptional: true,
        hideOutput: true),
    apply('build_web_compilers:entrypoint',
        // `WebCompiler.Dart2Js`를 사용할 수도 있습니다.
        // dartdevc를 전혀 신경 쓰지 않는다면 이전 빌더 애플리케이션을 완전히 생략할 수도 있습니다.
        [(_) => new WebEntrypointBuilder(WebCompiler.DartDevc)], toRoot(),
        hideOutput: true,
        // 이 글로브는 엔트리포인트와만 일치해야 합니다.
        defaultGenerateFor: const InputSet(
            include: const ['web/**', 'test/**.browser_test.dart'])),
]
```

[build_web_compilers | Dart Package](https://pub.dev/packages/build_web_compilers)
