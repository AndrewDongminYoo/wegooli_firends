---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/flutter_lints
author:
---

# flutter_lints | Dart Package

[![pub package](https://img.shields.io/pub/v/flutter_lints.svg)](https://pub.dev/packages/flutter_lints)

This package contains a recommended set of lints for [Flutter](https://flutter.dev/) apps, packages, and plugins to encourage good coding practices.

This package is built on top of Dart's `recommended.yaml` set of lints from [package:lints](https://pub.dev/packages/lints).

Lints are surfaced by the [dart analyzer](https://dart.dev/guides/language/analysis-options), which statically checks dart code. [Dart-enabled IDEs](https://dart.dev/tools#ides-and-editors) typically present the issues identified by the analyzer in their UI. Alternatively, the analyzer can be invoked manually by running `flutter analyze`.

Flutter apps, packages, and plugins created with `flutter create` starting with Flutter version 2.3.0 are already set up to use the lints defined in this package. Entities created before that version can use these lints by following these instructions:

1. Depend on this package as a **dev_dependency** by running `flutter pub add --dev flutter_lints`.
2. Create an `analysis_options.yaml` file at the root of the package (alongside the `pubspec.yaml` file) and `include: package:flutter_lints/flutter.yaml` from it.

Example `analysis_options.yaml` file:

```yaml
# This file configures the analyzer, which statically analyzes Dart code to
# check for errors, warnings, and lints.
#
# The issues identified by the analyzer are surfaced in the UI of Dart-enabled
# IDEs (https://dart.dev/tools#ides-and-editors). The analyzer can also be
# invoked from the command line by running `flutter analyze`.
# The following line activates a set of recommended lints for Flutter apps,
# packages, and plugins designed to encourage good coding practices.
include: package:flutter_lints/flutter.yaml

linter:
  # The lint rules applied to this project can be customized in the
  # section below to disable rules from the `package:flutter_lints/flutter.yaml`
  # included above or to enable additional rules. A list of all available lints
  # and their documentation is published at https://dart.dev/lints.
  #
  # Instead of disabling a lint rule for the entire project in the
  # section below, it can also be suppressed for a single line of code
  # or a specific dart file by using the `// ignore: name_of_lint` and
  # `// ignore_for_file: name_of_lint` syntax on the line or in the file
  # producing the lint.
  rules:
    # avoid_print: false  # Uncomment to disable the `avoid_print` rule
    # prefer_single_quotes: true  # Uncomment to enable the `prefer_single_quotes` rule
# Additional information about this file can be found at
# https://dart.dev/guides/language/analysis-options
```

Please file a [lint proposal](https://github.com/dart-lang/lints/issues/new?&labels=type-lint&template=lint-propoposal.md) issue to suggest that an existing lint rule should be added to this package. The benefits and risks of adding a lint should be discussed on that issue with all stakeholders involved. The suggestions will be reviewed periodically (typically once a year). Following a review, the package will be updated with all lints that made the cut.

Adding a lint to the package may create new warnings for existing users and is therefore considered to be a breaking change, which will require a major version bump. To keep churn low, lints are not added one-by-one, but in one batch following a review of all accumulated suggestions since the previous review.

[flutter_lints | Dart Package](https://pub.dev/packages/flutter_lints)
