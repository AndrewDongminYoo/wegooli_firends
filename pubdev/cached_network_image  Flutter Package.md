---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/cached_network_image
author:
---

# cached_network_image | Flutter Package

[![pub package](https://img.shields.io/pub/v/cached_network_image.svg)](https://pub.dartlang.org/packages/cached_network_image)
[![coverage](https://codecov.io/gh/Baseflow/flutter_cached_network_image/branch/master/graph/badge.svg?token=I5qW0RvoXN)](https://codecov.io/gh/Baseflow/flutter_cached_network_image)
[![Build Status](https://github.com/Baseflow/flutter_cached_network_image/workflows/app_facing_package/badge.svg?branch=develop)](https://github.com/Baseflow/flutter_cached_network_image/actions/workflows/app_facing_package.yaml)

A flutter library to show images from the internet and keep them in the cache directory.

The CachedNetworkImage can be used directly or through the ImageProvider. Both the CachedNetworkImage as CachedNetworkImageProvider have minimal support for web. It currently doesn't include caching.

With a placeholder:

```dart
CachedNetworkImage(
        imageUrl: "http://via.placeholder.com/350x150",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ),
```

Or with a progress indicator:

```dart
CachedNetworkImage(
       imageUrl: "http://via.placeholder.com/350x150",
       progressIndicatorBuilder: (context, url, downloadProgress) =>
               CircularProgressIndicator(value: downloadProgress.progress),
       errorWidget: (context, url, error) => Icon(Icons.error),
    ),
```

```dart
Image(image: CachedNetworkImageProvider(url))
```

When you want to have both the placeholder functionality and want to get the imageprovider to use in another widget you can provide an imageBuilder:

```dart
CachedNetworkImage(
  imageUrl: "http://via.placeholder.com/200x150",
  imageBuilder: (context, imageProvider) => Container(
    decoration: BoxDecoration(
      image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(Colors.red, BlendMode.colorBurn)),
    ),
  ),
  placeholder: (context, url) => CircularProgressIndicator(),
  errorWidget: (context, url, error) => Icon(Icons.error),
),
```

The cached network images stores and retrieves files using the [flutter_cache_manager](https://pub.dartlang.org/packages/flutter_cache_manager).

Does it really crash though? The debugger might pause, as the Dart VM doesn't recognize it as a caught exception; the console might print errors; even your crash reporting tool might report it (I know, that really sucks). However, does it really crash? Probably everything is just running fine. If you really get an app crashes you are fine to report an issue, but do that with a small example so we can reproduce that crash.

See for example [this](https://github.com/Baseflow/flutter_cached_network_image/issues/336#issuecomment-760769361) or [this](https://github.com/Baseflow/flutter_cached_network_image/issues/536#issuecomment-760857495) answer on previous posted issues.

[cached_network_image | Flutter Package](https://pub.dev/packages/cached_network_image)
