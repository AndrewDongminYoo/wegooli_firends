---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/intl
author:
---

# intl | Dart Package

[![Dart CI](https://github.com/dart-lang/intl/actions/workflows/test-package.yml/badge.svg)](https://github.com/dart-lang/intl/actions/workflows/test-package.yml)
[![Pub](https://img.shields.io/pub/v/intl.svg)](https://pub.dev/packages/intl)

Provides internationalization and localization facilities, including message translation, plurals and genders, date/number formatting and parsing, and bidirectional text.

The most important library is [intl](https://pub.dev/documentation/intl/latest/intl/intl-library.html). It defines the [Intl](https://pub.dev/documentation/intl/latest/intl/Intl-class.html) class, with the default locale and methods for accessing most of the internationalization mechanisms. This library also defines the [DateFormat](https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html), [NumberFormat](https://pub.dev/documentation/intl/latest/intl/NumberFormat-class.html), and [BidiFormatter](https://pub.dev/documentation/intl/latest/intl/BidiFormatter-class.html) classes.

The package has a single current locale, called [defaultLocale](https://pub.dev/documentation/intl/latest/intl/Intl/defaultLocale.html). Operations will use that locale unless told to do otherwise.

You can explicitly set the global locale

```dart
Intl.defaultLocale = 'pt_BR';
```

or get it from the browser

```dart
import 'package:intl/intl_browser.dart';
...
findSystemLocale().then(runTheRestOfMyProgram);
```

To override the current locale for a particular operation, pass the operation to [withLocale](https://pub.dev/documentation/intl/latest/intl/Intl/withLocale.html). Note that this includes async tasks spawned from that operation, and that the argument to [withLocale](https://pub.dev/documentation/intl/latest/intl/Intl/withLocale.html) will supercede the [defaultLocale](https://pub.dev/documentation/intl/latest/intl/Intl/defaultLocale.html) while the operation is active. If you are using different locales within an application, the [withLocale](https://pub.dev/documentation/intl/latest/intl/Intl/withLocale.html) operation may be preferable to setting [defaultLocale](https://pub.dev/documentation/intl/latest/intl/Intl/defaultLocale.html).

```dart
Intl.withLocale('fr', () => print(myLocalizedMessage()));
```

To specify the locale for an operation you can create a format object in a specific locale, pass in the locale as a parameter to methods, or set the default locale.

```dart
var format = DateFormat.yMd('ar');
var dateString = format.format(DateTime.now());
```

or

```dart
print(myMessage(dateString, locale: 'ar'));
```

or

```dart
Intl.defaultLocale = 'es';
DateFormat.jm().format(DateTime.now());
```

All the different types of locale data require an async initialization step to make sure the data is available. This reduces the size of the application by only loading the data that is actually required.

Each different area of internationalization (messages, dates, numbers) requires a separate initialization process. That way, if the application only needs to format dates, it doesn't need to take the time or space to load up messages, numbers, or other things it may not need.

With messages, there is also a need to import a file that won't exist until the code generation step has been run. This can be awkward, but can be worked around by creating a stub `messages_all.dart` file, running an empty translation step, or commenting out the import until translations are available. See "Extracting and Using Translated Messages"

Messages to be localized are written as functions that return the result of an [Intl.message](https://pub.dev/documentation/intl/latest/intl/Intl/message.html) call.

```dart
String continueMessage() => Intl.message(
    'Hit any key to continue',
    name: 'continueMessage',
    args: [],
    desc: 'Explains that we will not proceed further until '
        'the user presses a key');
print(continueMessage());
```

This provides, in addition to the basic message string, a name, a description for translators, the arguments used in the message, and examples. The `name` and `args` parameters must match the name (or ClassName_methodName) and arguments list of the function respectively. For messages without parameters, both of these can be omitted.

A function with an Intl.message call can be run in the program before any translation has been done, and will just return the message string. It can also be extracted to a file and then be made to return a translated version without modifying the original program. See "Extracting Messages" below for more details.

The purpose of wrapping the message in a function is to allow it to have parameters which can be used in the result. The message string is allowed to use a restricted form of Dart string interpolation, where only the function's parameters can be used, and only in simple expressions. Local variables cannot be used, and neither can expressions with curly braces. Only the message string can have interpolation. The name, desc, args, and examples must be literals and not contain interpolations. Only the args parameter can refer to variables, and it should list exactly the function parameters. If you are passing numbers or dates and you want them formatted, you must do the formatting outside the function and pass the formatted string into the message.

```dart
greetingMessage(name) => Intl.message(
    'Hello $name!',
    name: 'greetingMessage',
    args: [name],
    desc: 'Greet the user as they first open the application',
    examples: const {'name': 'Emily'});
print(greetingMessage('Dan'));
```

There is one special class of complex expressions allowed in the message string, for plurals and genders.

```dart
remainingEmailsMessage(int howMany, String userName) =>
  Intl.message(
    '''${Intl.plural(howMany,
        zero: 'There are no emails left for $userName.',
        one: 'There is $howMany email left for $userName.',
        other: 'There are $howMany emails left for $userName.')}''',
  name: 'remainingEmailsMessage',
  args: [howMany, userName],
  desc: 'How many emails remain after archiving.',
  examples: const {'howMany': 42, 'userName': 'Fred'});

print(remainingEmailsMessage(1, 'Fred'));
```

However, since the typical usage for a plural or gender is for it to be at the top-level, we can also omit the [Intl.message](https://pub.dev/documentation/intl/latest/intl/Intl/message.html) call and provide its parameters to the [Intl.plural](https://pub.dev/documentation/intl/latest/intl/Intl/plural.html) call instead.

```dart
remainingEmailsMessage(int howMany, String userName) =>
  Intl.plural(
    howMany,
    zero: 'There are no emails left for $userName.',
    one: 'There is $howMany email left for $userName.',
    other: 'There are $howMany emails left for $userName.',
    name: 'remainingEmailsMessage',
    args: [howMany, userName],
    desc: 'How many emails remain after archiving.',
    examples: const {'howMany': 42, 'userName': 'Fred'});
```

Similarly, there is an [Intl.gender](https://pub.dev/documentation/intl/latest/intl/Intl/gender.html) message, and plurals and genders can be nested.

```dart
notOnlineMessage(String userName, String userGender) =>
  Intl.gender(
    userGender,
    male: '$userName is unavailable because he is not online.',
    female: '$userName is unavailable because she is not online.',
    other: '$userName is unavailable because they are not online',
    name: 'notOnlineMessage',
    args: [userName, userGender],
    desc: 'The user is not available to hangout.',
    examples: const {{'userGender': 'male', 'userName': 'Fred'},
        {'userGender': 'female', 'userName' : 'Alice'}});
```

It's recommended to use complete sentences in the sub-messages to keep the structure as simple as possible for the translators.

## Extracting And Using Translated Messages [#](https://pub.dev/packages/intl#extracting-and-using-translated-messages)

When your program contains messages that need translation, these must be extracted from the program source, sent to human translators, and the results need to be incorporated. The code for this is in the [Intl_translation](https://pub.dev/packages/intl_translation) package.

To extract messages, run the `extract_to_arb.dart` program.

```shell
> pub run intl_translation:extract_to_arb --output-dir=target/directory
    my_program.dart more_of_my_program.dart
```

This will produce a file `intl_messages.arb` with the messages from all of these programs. See [ARB](https://github.com/google/app-resource-bundle). The resulting translations can be used to generate a set of libraries using the `generate_from_arb.dart` program.

This expects to receive a series of files, one per locale.

```dart
> pub run intl_translation:generate_from_arb --generated_file_prefix=<prefix>
    <my_dart_files> <translated_ARB_files>
```

This will generate Dart libraries, one per locale, which contain the translated versions. Your Dart libraries can import the primary file, named `<prefix>messages_all.dart`, and then call the initialization for a specific locale. Once that's done, any [Intl.message](https://pub.dev/documentation/intl/latest/intl/Intl/message.html) calls made in the context of that locale will automatically print the translated version instead of the original.

```dart
import 'my_prefix_messages_all.dart';
...
initializeMessages('dk').then(printSomeMessages);
```

Once the future returned from the initialization call returns, the message data is available.

## Number Formatting and Parsing [#](https://pub.dev/packages/intl#number-formatting-and-parsing)

To format a number, create a NumberFormat instance.

```dart
var f = NumberFormat('###.0#', 'en_US');
print(f.format(12.345));
  ==> 12.35
```

The locale parameter is optional. If omitted, then it will use the current locale. The format string is as described in [NumberFormat](https://pub.dev/documentation/intl/latest/intl/NumberFormat-class.html)

It's also possible to access the number symbol data for the current locale, which provides information as to the various separator characters, patterns, and other information used for formatting, as

```dart
f.symbols
```

Current known limitations are that the currency format will only print the name of the currency, and does not support currency symbols, and that the scientific format does not really agree with scientific notation. Number parsing is not yet implemented.

## Date Formatting and Parsing [#](https://pub.dev/packages/intl#date-formatting-and-parsing)

To format a [DateTime](https://api.dart.dev/dart-core/DateTime-class.html), create a [DateFormat](https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html) instance. These can be created using a set of commonly used skeletons taken from ICU/CLDR or using an explicit pattern. For details on the supported skeletons and patterns see [DateFormat](https://pub.dev/documentation/intl/latest/intl/DateFormat-class.html).

```dart
DateFormat.yMMMMEEEEd().format(aDateTime);
  ==> 'Wednesday, January 10, 2012'
DateFormat('EEEEE', 'en_US').format(aDateTime);
  ==> 'Wednesday'
DateFormat('EEEEE', 'ln').format(aDateTime);
  ==> 'mokɔlɔ mwa mísáto'
```

You can also parse dates using the same skeletons or patterns.

```dart
DateFormat.yMd('en_US').parse('1/10/2012');
DateFormat('Hms', 'en_US').parse('14:23:01');
```

Skeletons can be combined, the main use being to print a full date and time, e.g.

```dart
DateFormat.yMEd().add_jms().format(DateTime.now());
  ==> 'Thu, 5/23/2013 10:21:47 AM'
```

Known limitations: Time zones are not yet supported. Dart [DateTime](https://api.dart.dev/dart-core/DateTime-class.html) objects don't have a time zone, so are either local or UTC. Formatting and parsing Durations is not yet implemented.

Note that before doing any DateTime formatting for a particular locale, you must load the appropriate data by calling.

```dart
import 'package:intl/date_symbol_data_local.dart';
...
initializeDateFormatting('de_DE', null).then(formatDates);
```

Once the future returned from the initialization call returns, the formatting data is available.

There are other mechanisms for loading the date formatting data implemented, but we expect to deprecate those in favor of having the data in a library as in the above, and using deferred loading to only load the portions that are needed. For the time being, this will include all of the data, which will increase code size.

The class [BidiFormatter](https://pub.dev/documentation/intl/latest/intl/BidiFormatter-class.html) provides utilities for working with Bidirectional text. We can wrap the string with unicode directional indicator characters or with an HTML span to indicate direction. The direction can be specified with the [RTL](https://pub.dev/documentation/intl/latest/intl/BidiFormatter/BidiFormatter.RTL.html) and [LTR](https://pub.dev/documentation/intl/latest/intl/BidiFormatter/BidiFormatter.LTR.html) constructors, or detected from the text.

```dart
BidiFormatter.RTL().wrapWithUnicode('xyz');
BidiFormatter.RTL().wrapWithSpan('xyz');
```

[intl | Dart Package](https://pub.dev/packages/intl)
