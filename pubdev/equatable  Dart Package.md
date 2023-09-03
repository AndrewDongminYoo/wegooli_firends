---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/equatable
author:
---

# equatable | Dart Package

![logo](https://github.com/felangel/equatable/raw/master/doc/assets/equatable_logo_full.png)

## Simplify Equality Comparisons

[![Build Status](https://github.com/felangel/equatable/workflows/build/badge.svg)](https://github.com/felangel/equatable/actions)
[![Code Coverage](https://raw.githubusercontent.com/felangel/equatable/master/coverage_badge.svg)](https://github.com/felangel/equatable/actions)
[![Pub Package](https://img.shields.io/pub/v/equatable.svg)](https://pub.dartlang.org/packages/equatable)
[![Star on GitHub](https://img.shields.io/github/stars/felangel/equatable.svg?style=flat&logo=github&colorB=deeppink&label=stars)](https://github.com/felangel/equatable)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)
[![Discord](https://img.shields.io/discord/649708778631200778.svg?logo=discord&color=blue)](https://discord.gg/Hc5KD3g)
[![MIT License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

---

Being able to compare objects in `Dart` often involves having to override the `==` operator as well as `hashCode`.

Not only is it verbose and tedious, but failure to do so can lead to inefficient code which does not behave as we expect.

By default, `==` returns true if two objects are the same instance.

Let's say we have the following class:

```dart
class Person {
  const Person(this.name);

  final String name;
}
```

We can create instances of `Person` like so:

```dart
void main() {
  final Person bob = Person("Bob");
}
```

Later if we try to compare two instances of `Person` either in our production code or in our tests we will run into a problem.

```dart
print(bob == Person("Bob")); // false
```

For more information about this, you can check out the official [Dart Documentation](https://www.dartlang.org/guides/language/effective-dart/design#equality).

In order to be able to compare two instances of `Person` we need to change our class to override `==` and `hashCode` like so:

```dart
class Person {
  const Person(this.name);

  final String name;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is Person &&
    runtimeType == other.runtimeType &&
    name == other.name;

  @override
  int get hashCode => name.hashCode;
}
```

Now if we run the following code again:

```dart
print(bob == Person("Bob")); // true
```

it will be able to compare different instances of `Person`.

You can see how this can quickly become a hassle when dealing with complex classes. This is where `Equatable` comes in!

`Equatable` overrides `==` and `hashCode` for you so you don't have to waste your time writing lots of boilerplate code.

There are other packages that will actually generate the boilerplate for you; however, you still have to run the code generation step which is not ideal.

With `Equatable` there is no code generation needed and we can focus more on writing amazing applications and less on mundane tasks.

First, we need to do add `equatable` to the dependencies of the `pubspec.yaml`

```yaml
dependencies:
  equatable: ^2.0.0
```

Next, we need to install it:

```dart
# Dart

pub get

# Flutter

flutter packages get
```

Lastly, we need to extend `Equatable`

```dart
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
```

When working with json:

```dart
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(this.name);

  final String name;

  @override
  List<Object> get props => [name];

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(json['name']);
  }
}
```

We can now compare instances of `Person` just like before without the pain of having to write all of that boilerplate. **Note:** Equatable is designed to only work with immutable objects so all member variables must be final (This is not just a feature of `Equatable` - [overriding a `hashCode` with a mutable value can break hash-based collections](https://dart.dev/guides/language/effective-dart/design#avoid-defining-custom-equality-for-mutable-classes)).

Equatable also supports `const` constructors:

```dart
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
```

Equatable can implement `toString` method including all the given props. If you want that behaviour for a specific `Equatable` object, just include the following:

```dart
@override
bool get stringify => true;
```

For instance:

```dart
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(this.name);

  final String name;

  @override
  List<Object> get props => [name];

  @override
  bool get stringify => true;
}
```

For the name `Bob`, the output will be:

`Person(Bob)`

This flag by default is false and `toString` will return just the type:

`Person`

### EquatableConfig

`stringify` can also be configured globally for all `Equatable` instances via `EquatableConfig`

```dart
EquatableConfig.stringify = true;
```

If `stringify` is overridden for a specific `Equatable` class, then the value of `EquatableConfig.stringify` is ignored. In other words, the local configuration always takes precedence over the global configuration.

_Note: `EquatableConfig.stringify` defaults to `true` in debug mode and `false` in release mode._

```dart
class Person {
  const Person(this.name);

  final String name;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is Person &&
    runtimeType == other.runtimeType &&
    name == other.name;

  @override
  int get hashCode => name.hashCode;
}
```

```dart
import 'package:equatable/equatable.dart';

class Person extends Equatable {
  const Person(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
```

Sometimes it isn't possible to extend `Equatable` because your class already has a superclass. In this case, you can still get the benefits of `Equatable` by using the `EquatableMixin`.

Let's say we want to make an `EquatableDateTime` class, we can use `EquatableMixin` like so:

```dart
class EquatableDateTime extends DateTime with EquatableMixin {
  EquatableDateTime(
    int year, [
    int month = 1,
    int day = 1,
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0,
  ]) : super(year, month, day, hour, minute, second, millisecond, microsecond);

  @override
  List<Object> get props {
    return [year, month, day, hour, minute, second, millisecond, microsecond];
  }
}
```

Now if we want to create a subclass of `EquatableDateTime`, we can just override `props`.

```dart
class EquatableDateTimeSubclass extends EquatableDateTime {
  final int century;

  EquatableDateTimeSubclass(
    this.century,
    int year,[
    int month = 1,
    int day = 1,
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0,
  ]) : super(year, month, day, hour, minute, second, millisecond, microsecond);

  @override
  List<Object> get props => super.props..addAll([century]);
}
```

You might be wondering what the performance impact will be if you use `Equatable`.

#### Equality Comparison A == A

| Class              | Runtime (μs) |
| ------------------ | ------------ |
| Manual             | 0.193        |
| Empty Equatable    | 0.191        |
| Hydrated Equatable | 0.190        |

#### Instantiation A()

| Class              | Runtime (μs) |
| ------------------ | ------------ |
| Manual             | 0.165        |
| Empty Equatable    | 0.181        |
| Hydrated Equatable | 0.182        |

\*_Performance Tests run using: Dart VM version: 2.4.0_

## Maintainers [#](https://pub.dev/packages/equatable#maintainers)

- [Felix Angelov](https://github.com/felangel)

[equatable | Dart Package](https://pub.dev/packages/equatable)
