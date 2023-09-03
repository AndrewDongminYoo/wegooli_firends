---
created: 23-09-03T19:09:56
tags: []
source: https://pub.dev/packages/kpostal
author:
---

# kpostal | Flutter Package

[![pub package](https://img.shields.io/pub/v/kpostal.svg?label=kpostal&color=blue)](https://pub.dev/packages/kpostal)
[![likes](https://badges.bar/kpostal/likes)](https://pub.dev/packages/kpostal/score)

[![English](https://img.shields.io/badge/Language-English-9cf?style=for-the-badge)](https://github.com/tykann/kpostal/blob/main/README.md)
[![Korean](https://img.shields.io/badge/Language-Korean-9cf?style=for-the-badge)](https://github.com/tykann/kpostal/blob/main/README.ko-kr.md)

Kpostal package can search for Korean postal addresses using [Kakao postcode service](https://postcode.map.daum.net/guide).
This package is inspired by [Kopo](https://pub.dev/packages/kopo) package that is discontinued.

By default, it uses the Address Search page hosted on Github.
It's the easiest way to use it.

To respond to errors that arise from hosting problems, **it also supports hosting local server.**

Kpostal also provides latitude, longitude of the address. It uses the free Geocoding services provided by the iOS and Android platforms. This means that there are restrictions to their use. More information can be found in the [Apple documentation for iOS](https://developer.apple.com/documentation/corelocation/clgeocoder) and the [Google documentation for Android](https://developer.android.com/reference/android/location/Geocoder) and the [geocoding](https://pub.dev/packages/geocoding) plugin. **If you use [kakao maps api](https://apis.map.kakao.com/web/guide/), you can also get a kakao geocoding value.**

Support Null-Safety!

![kpostal](https://tykann.github.io/kpostal/assets/screenshot.png)

Add kpostal to your pubspec.yaml file:

```yaml
dependencies:
  kpostal:
```

**🧑🏻💻 Neither iOS nor Android requires any action when using default hosting.**

If you use the \[useLocalServer\] option to host a local server, you should make the platform specific settings required for http communication.

## Android [#](https://pub.dev/packages/kpostal#android)

Add `android:usesClearextTraffic="true"` to

```dart
<application
        android:label="[your_app]"
        android:icon="@mipmap/ic_launcher"
        ...
        android:usesCleartextTraffic="true"
        ...
        >
    ...
</application>
```

Add `NSAppTransportSecurity` to info.plist file.

```dart
<plist version="1.0">
<dict>
    ...
    <key>NSAppTransportSecurity</key>
    <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
    </dict>
    ...
</dict>
</plist>
```

1. Go to [Kakao Developer Site](https://developers.kakao.com/)
2. Register developer and create app
3. Add Web Platform: Select App – \[Platform\] – \[Web Platform Registration\] – Site Domain Registration
4. Register Site Domain: Select the Web platform, and register Site Domain.
   - default, use `https://tykann.github.io`
   - if you use local server, use `http://localhost:{your port, default is 8080}`
5. Use the JavaScript key at the top of the page as the app key for the map API.

```dart
import 'package:kpostal/kpostal.dart';

// Use callback.
TextButton(
    onPressed: () async {
        await Navigator.push(context, MaterialPageRoute(
            builder: (_) => KpostalView(
                callback: (Kpostal result) {
                    print(result.address);
                },
            ),
        ));
    },
    child: Text('Search!'),
),

// Not use callback.
TextButton(
    onPressed: () async {
        Kpostal result = await Navigator.push(context, MaterialPageRoute(builder: (_) => KpostalView()));
        print(result.address);
    },
    child: Text('Search!'),
),

// Use local server.
KpostalView(
    useLocalServer: true, // default is false
    localPort: 8080, // default is 8080
    kakaoKey: '{your kakao developer app\'s JS key}' // if not declared, only use platform's geocoding
    callback: ...
)
```

[kpostal | Flutter Package](https://pub.dev/packages/kpostal)
