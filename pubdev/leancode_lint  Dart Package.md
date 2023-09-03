---
created: 23-09-03T19:09:55
tags: []
source: https://pub.dev/packages/leancode_lint
author:
---

# leancode_lint | Dart Package

[![leancode_lint pub.dev badge](https://img.shields.io/pub/v/leancode_lint)](https://pub.dev/packages/leancode_lint)

Lint rules used internally in LeanCode projects.

Add `leancode_lint` as a dev dependency.

```dart
dart pub add leancode_lint --dev
```

Add `include: package:leancode_lint/analysis_options.yaml` to `analysis_options.yaml` in your project. You might want to exclude some files (e.g generated json serializable) from analysis.

```dart
include: package:leancode_lint/analysis_options.yaml

# Optional

analyzer:
  exclude:
    - '**/*.g.dart'
```

Add `include: package:leancode_lint/analysis_options_package.yaml` to `analysis_options.yaml` in your project. It includes additional lints for packages. You might want to exclude some files (e.g generated json serializable) from analysis.

```dart
include: package:leancode_lint/analysis_options_package.yaml

# Optional

analyzer:
  exclude:
    - '**/*.g.dart'
```

[leancode_lint | Dart Package](https://pub.dev/packages/leancode_lint)
