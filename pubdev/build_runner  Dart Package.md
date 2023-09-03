---
created: 23-09-03T19:09:55
tags: []
source: https://pub.dev/packages/build_runner
author:
---

# build_runner | Dart Package

Standalone generator and watcher for Dart using [`package:build`](https://pub.dev/packages/build).
[![Issues related to build_runner](https://img.shields.io/github/issues-raw/dart-lang/build/package%3A%20build_runner.svg)](https://github.com/dart-lang/build/labels/package%3A%20build_runner)
[![Pub Package Version](https://img.shields.io/pub/v/build_runner.svg)](https://pub.dev/packages/build_runner)
[![Latest Dartdocs](https://img.shields.io/badge/dartdocs-latest-blue.svg)](https://pub.dev/documentation/build_runner/latest)
[![Join the chat on Gitter](https://badges.gitter.im/dart-lang/build.svg)](https://gitter.im/dart-lang/build)

The `build_runner` package provides a concrete way of generating files using Dart code. Files are always generated directly on disk, and rebuilds are _incremental_ - inspired by tools such as [Bazel](https://bazel.build/).

> **NOTE**: Are you a user of this package? You may be interested in simplified user-facing documentation, such as our [getting started guide](https://goo.gl/b9o2j6).

- [Installation](https://pub.dev/packages/build_runner#installation)
- [Usage](https://pub.dev/packages/build_runner#usage)
  - [Built-in commands](https://pub.dev/packages/build_runner#built-in-commands)
  - [Inputs](https://pub.dev/packages/build_runner#inputs)
  - [Outputs](https://pub.dev/packages/build_runner#outputs)
  - [Source control](https://pub.dev/packages/build_runner#source-control)
  - [Publishing packages](https://pub.dev/packages/build_runner#publishing-packages)
- [Contributing](https://pub.dev/packages/build_runner#contributing)
  - [Testing](https://pub.dev/packages/build_runner#testing)

This package is intended to support development of Dart projects with [`package:build`](https://pub.dev/packages/build). In general, put it under [dev_dependencies](https://dart.dev/tools/pub/dependencies#dev-dependencies), in your [`pubspec.yaml`](https://dart.dev/tools/pub/pubspec).

```dart
dev_dependencies:
  build_runner:
```

When the packages providing `Builder`s are configured with a `build.yaml` file they are designed to be consumed using an generated build script. Most builders should need little or no configuration, see the documentation provided with the Builder to decide whether the build needs to be customized. If it does you may also provide a `build.yaml` with the configuration. See the `package:build_config` README for more information on this file.

To have web code compiled to js add a `dev_dependency` on `build_web_compilers`.

## Built-in Commands [#](https://pub.dev/packages/build_runner#built-in-commands)

The `build_runner` package exposes a binary by the same name, which can be invoked using `dart run build_runner <command>`.

The available commands are `build`, `watch`, `serve`, and `test`.

- `build`: Runs a single build and exits.
- `watch`: Runs a persistent build server that watches the files system for edits and does rebuilds as necessary.
- `serve`: Same as `watch`, but runs a development server as well.
  - By default this serves the `web` and `test` directories, on port `8080` and `8081` respectively. See below for how to configure this.
- `test`: Runs a single build, creates a merged output directory, and then runs `dart run test --precompiled <merged-output-dir>`. See below for instructions on passing custom args to the test command.

### Command Line Options

All the above commands support the following arguments:

- `--help`: Print usage information for the command.
- `--delete-conflicting-outputs`: Assume conflicting outputs in the users package are from previous builds, and skip the user prompt that would usually be provided.
- `--[no-]fail-on-severe`: Whether to consider the build a failure on an error logged. By default this is false.
- `--build-filter`: Build filters allow you to choose explicitly which files to build instead of building entire directories. See further documentation on this feature [here](https://pub.dev/packages/build_runner#partial_builds).

Some commands also have additional options:

#### serve

- `--hostname`: The host to run the server on.
- `--live-reload`: Enables automatic page reloading on rebuilds.

Trailing args of the form `<directory>:<port>` are supported to customize what directories are served, and on what ports.

For example to serve the `example` and `web` directories on ports 8000 and 8001 you would do `dart run build_runner serve example:8000 web:8001`.

##### test

The test command will forward any arguments after an empty `--` arg to the `dart run test` command.

For example if you wanted to pass `-p chrome` you would do `dart run build_runner test -- -p chrome`.

Valid inputs follow the general dart package rules. You can read any files under the top level `lib` folder any package dependency, and you can read all files from the current package.

In general it is best to be as specific as possible with your `InputSet`s, because all matching files will be checked against a `Builder`'s [`buildExtensions`](https://pub.dev/documentation/build/latest/build/Builder/buildExtensions.html) - see [outputs](https://pub.dev/packages/build_runner#outputs) for more information.

- You may output files anywhere in the current package.

> **NOTE**: When a `BuilderApplication` specifies `hideOutput: true` it may output under the `lib` folder of _any_ package you depend on.

- Builders are not allowed to overwrite existing files, only create new ones.
- Outputs from previous builds will not be treated as inputs to later ones.
- You may use a previous `BuilderApplications`'s outputs as an input to a later action.

This package creates a top level `.dart_tool` folder in your package, which should not be submitted to your source control repository. You can see [our own `.gitignore`](https://github.com/dart-lang/build/blob/main/.gitignore) as an example.

```dart
# Files generated by dart tools

.dart_tool
```

When it comes to _generated_ files it is generally best to not submit them to source control, but a specific `Builder` may provide a recommendation otherwise.

It should be noted that if you do submit generated files to your repo then when you change branches or merge in changes you may get a warning on your next build about declared outputs that already exist. This will be followed up with a prompt to delete those files. You can type `l` to list the files, and then type `y` to delete them if everything looks correct. If you think something is wrong you can type `n` to abandon the build without taking any action.

In general generated files **should** be published with your package, but this may not always be the case. Some `Builder`s may provide a recommendation for this as well.

If the generated script does not do everything you need it's possible to manually write one. With this approach every package which _uses_ a [`Builder`](https://pub.dev/documentation/build/latest/build/Builder-class.html) must have it's own script, they cannot be reused from other packages. A package which defines a [`Builder`](https://pub.dev/documentation/build/latest/build/Builder-class.html) may have an example you can reference, but a unique script must be written for the consuming packages as well. You can reference the generated script at `.dart_tool/build/entrypoint/build.dart` for an example.

Your script should the [**`run`**](https://pub.dev/documentation/build_runner/latest/build_runner/run.html) functions defined in this library.

[`run`](https://pub.dev/documentation/build_runner/latest/build_runner/run.html) has a required parameter which is a `List<BuilderApplication>`. These correspond to the `BuilderDefinition` class from `package:build_config`. See `apply` and `applyToRoot` to create instances of this class. These will be translated into actions by crawling through dependencies. The order of this list is important. Each Builder may read the generated outputs of any Builder that ran on a package earlier in the dependency graph, but for the package it is running on it may only read the generated outputs from Builders earlier in the list of `BuilderApplication`s.

**NOTE**: Any time you change your build script (or any of its dependencies), the next build will be a full rebuild. This is because the system has no way of knowing how that change may have affected the outputs.

We welcome a diverse set of contributions, including, but not limited to:

- [Filing bugs and feature requests](https://github.com/dart-lang/build/issues/new)
- [Send a pull request](https://github.com/dart-lang/build/pulls)
- Or, create something awesome using this API and share with us and others!

For the stability of the API and existing users, consider opening an issue first before implementing a large new feature or breaking an API. For smaller changes (like documentation, minor bug fixes), just send a pull request.

All pull requests are validated against CI, and must pass. The `build_runner` package lives in a mono repository with other `build` packages, and _all_ of the following checks must pass for _each_ package.

Ensure code passes all our [analyzer checks](https://github.com/dart-lang/build/blob/main/analysis_options.yaml):

```dart
dart analyze .
```

Ensure all code is formatted with the latest [dev-channel SDK](https://dart.dev/get-dart).

```dart
dart format .
```

Run all of our unit tests:

```dart
dart run test
```

[](https://pub.dev/packages/build_runner/score)

### Publisher

[![verified publisher icon](https://pub.dev/static/hash-lqvmd91d/img/material-icon-verified.svg "Published by a pub.dev verified publisher")tools.dart.dev](https://pub.dev/publishers/tools.dart.dev)

### Metadata

A build system for Dart code generation and modular compilation.

[Repository (GitHub)](https://github.com/dart-lang/build/tree/master/build_runner)
[View/report issues](https://github.com/dart-lang/build/issues)
[Contributing](https://github.com/dart-lang/build/blob/main/CONTRIBUTING.md)

### Documentation

[API reference](https://pub.dev/documentation/build_runner/latest/)

### License

![Icon for licenses.](https://pub.dev/static/hash-lqvmd91d/img/material-icon-balance.svg)BSD-3-Clause ([LICENSE](https://pub.dev/packages/build_runner/license))

### Dependencies

[analyzer](https://pub.dev/packages/analyzer ">=4.4.0 <7.0.0"), [args](https://pub.dev/packages/args "^2.0.0"), [async](https://pub.dev/packages/async "^2.5.0"), [build](https://pub.dev/packages/build ">=2.1.0 <2.5.0"), [build_config](https://pub.dev/packages/build_config ">=1.1.0 <1.2.0"), [build_daemon](https://pub.dev/packages/build_daemon "^4.0.0"), [build_resolvers](https://pub.dev/packages/build_resolvers "^2.0.0"), [build_runner_core](https://pub.dev/packages/build_runner_core "^7.2.0"), [code_builder](https://pub.dev/packages/code_builder "^4.2.0"), [collection](https://pub.dev/packages/collection "^1.15.0"), [crypto](https://pub.dev/packages/crypto "^3.0.0"), [dart_style](https://pub.dev/packages/dart_style "^2.0.0"), [frontend_server_client](https://pub.dev/packages/frontend_server_client "^3.0.0"), [glob](https://pub.dev/packages/glob "^2.0.0"), [graphs](https://pub.dev/packages/graphs "^2.2.0"), [http_multi_server](https://pub.dev/packages/http_multi_server "^3.0.0"), [io](https://pub.dev/packages/io "^1.0.0"), [js](https://pub.dev/packages/js "^0.6.3"), [logging](https://pub.dev/packages/logging "^1.0.0"), [meta](https://pub.dev/packages/meta "^1.3.0"), [mime](https://pub.dev/packages/mime "^1.0.0"), [package_config](https://pub.dev/packages/package_config "^2.0.0"), [path](https://pub.dev/packages/path "^1.8.0"), [pool](https://pub.dev/packages/pool "^1.5.0"), [pub_semver](https://pub.dev/packages/pub_semver "^2.0.0"), [pubspec_parse](https://pub.dev/packages/pubspec_parse "^1.0.0"), [shelf](https://pub.dev/packages/shelf "^1.0.0"), [shelf_web_socket](https://pub.dev/packages/shelf_web_socket "^1.0.0"), [stack_trace](https://pub.dev/packages/stack_trace "^1.10.0"), [stream_transform](https://pub.dev/packages/stream_transform "^2.0.0"), [timing](https://pub.dev/packages/timing "^1.0.0"), [watcher](https://pub.dev/packages/watcher "^1.0.0"), [web_socket_channel](https://pub.dev/packages/web_socket_channel "^2.0.0"), [yaml](https://pub.dev/packages/yaml "^3.0.0")

### More

[Packages that depend on build_runner](https://pub.dev/packages?q=dependency%3Abuild_runner)

[build_runner | Dart Package](https://pub.dev/packages/build_runner)
