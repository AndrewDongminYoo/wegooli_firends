---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/cookie_jar
author:
---

# cookie_jar | Dart Package

[![Pub](https://img.shields.io/pub/v/cookie_jar.svg?style=flat-square)](https://pub.dev/packages/cookie_jar)
[![GitHub license](https://img.shields.io/github/license/flutterchina/cookie_jar)](https://github.com/flutterchina/cookie_jar/blob/main/LICENSE)

A cookie manager for http requests in Dart, help you to deal with the cookie policies and persistence.

> Checkout the [Migration Guide](https://github.com/flutterchina/cookie_jar/blob/main/migration_guide.md) for breaking changes between versions.

You can use the command to add dio as a dependency with the latest stable version:

```dart
dart pub add cookie_jar
```

Or you can manually add cookie_jar into the dependencies section in your pubspec.yaml:

```yaml
dependencies:
  cookie_jar: ^replace-with-latest-version
```

The latest version is: ![Pub](https://img.shields.io/pub/v/cookie_jar.svg) The latest version including pre-releases is: ![Pub](https://img.shields.io/pub/v/cookie_jar?include_prereleases)

A simple usage example:

```dart
import 'package:cookie_jar/cookie_jar.dart';

void main() async {
  final cookieJar = CookieJar();
  List<Cookie> cookies = [Cookie('name', 'wendux'), Cookie('location', 'china')];
  // Saving cookies.
  await cookieJar.saveFromResponse(Uri.parse('https://pub.dev/'), cookies);
  // Obtain cookies.
  List<Cookie> results = await cookieJar.loadForRequest(Uri.parse('https://pub.dev/paths'));
  print(results);
}
```

This class is a wrapper for `Cookie` class. Because the `Cookie` class doesn't support Json serialization, for the sake of persistence, we use this class instead of it.

`CookieJar` is a cookie container and manager for HTTP requests.

## `DefaultCookieJar`

`DefaultCookieJar` is a default cookie manager which implements the standard cookie policy declared in RFC. It saves the cookies in the memory, all cookies will be cleared after the app exited.

To use it:

```dart

final cookieJar = CookieJar();
```

`PersistCookieJar` is a cookie manager which implements the standard cookie policy declared in RFC. `PersistCookieJar` persists the cookies in files, so if the application exit, the cookies always exist unless call `delete` explicitly.

To use it:

```dart
// Cookie files will be saved in files in "./cookies/4/"
final cookieJar = PersistCookieJar(
  ignoreExpires: true, // Save/load even cookies that have expired.
);
```

> **Note**: When using the \[FileStorage\] in Flutter apps, use [path_provider](https://pub.dev/packages/path_provider) to obtain available directories.

```dart

Directory tempDir = await

getTemporaryDirectory();

final tempPath = tempDir.path;
final cookieJar = PersistCookieJar(
  ignoreExpires: true,
  storage: FileStorage(tempPath),
);
```

### Storage

You can customize your own storage by extending `Storage`, see `FileStorage` for more details.

**Future**

Save the cookies for specified uri.

**Future<List**

Load the cookies for specified uri.

**Future**

Delete cookies for specified `uri`. This API will delete all cookies for the `uri.host`, it will ignore the `uri.path`.

If `withDomainSharedCookie` is `true` , all domain-shared cookies will be deleted.

**Future**

Delete all cookies.

Using `CookieJar` or `PersistCookieJar` manages `HttpClient` 's request/response cookies is quite easy:

```dart
final cookieJar = CookieJar();
request = await httpClient.openUrl(options.method, uri);
request.cookies.addAll(await cj.loadForRequest(uri));
response = await request.close();
await cookieJar.saveFromResponse(uri, response.cookies);
```

[dio](https://github.com/cfug/dio) is a powerful HTTP client for Dart/Flutter, which supports global configuration, interceptors, FormData, request cancellation, file uploading/downloading, timeout, and custom adapters etc. dio also supports to manage cookies with `cookie_jar` using [dio_cookie_manager](https://pub.dev/packages/dio_cookie_manager). For example:

```dart
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';

void main() async {
  final dio = Dio();
  final cookieJar = CookieJar();
  dio.interceptors.add(CookieManager(cookieJar));
  await dio.get('https://pub.dev/');
  // Print cookies
  print(await cookieJar.loadForRequest(Uri.parse('https://pub.dev/')));
  // Another request with the cookie.
  await dio.get("https://pub.dev/");
}
```

More details about [dio](https://github.com/flutterchina/dio).

The project and it's underlying projects are originally authored by [@wendux](https://github.com/wendux) with the organization [@flutterchina](https://github.com/flutterchina) since 2018.

The project consents [the MIT license](https://github.com/flutterchina/cookie_jar/blob/main/LICENSE).

[cookie_jar | Dart Package](https://pub.dev/packages/cookie_jar)
