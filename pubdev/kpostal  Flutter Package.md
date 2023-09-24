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
[![한국어](https://img.shields.io/badge/Language-Korean-9cf?style=for-the-badge)](https://github.com/tykann/kpostal/blob/main/README.ko-kr.md)

[카카오 우편번호 서비스](https://postcode.map.daum.net/guide)를 이용해 한국 우편 주소를 검색할 수 있는 Kpostal 패키지입니다.
이 패키지는 단종된 [Kopo](https://pub.dev/packages/kopo) 패키지를 모티브로 제작되었습니다.

기본적으로 깃허브에 호스팅된 주소 검색 페이지를 사용합니다.
가장 쉽게 사용할 수 있는 방법입니다.

호스팅 문제로 발생하는 오류에 대응하기 위해 **로컬 서버 호스팅도 지원합니다**.

Kpostal은 주소의 위도, 경도도 제공합니다. iOS 및 Android 플랫폼에서 제공하는 무료 지오코딩 서비스를 사용합니다. 이는 사용에 제한이 있음을 의미합니다. 자세한 내용은 [iOS용 애플 문서](https://developer.apple.com/documentation/corelocation/clgeocoder), [안드로이드용 구글 문서](https://developer.android.com/reference/android/location/Geocoder) 및 [geocoding](https://pub.dev/packages/geocoding) 플러그인에서 확인할 수 있습니다. **[카카오맵 API](https://apis.map.kakao.com/web/guide/)를 이용하면 카카오 지오코딩 값도 얻을 수 있습니다.**

Null-Safety 지원!

![kpostal](https://tykann.github.io/kpostal/assets/screenshot.png)

pubspec.yaml 파일에 kpostal을 추가합니다:

```yaml
dependencies:
  kpostal:
```

**🧑🏻💻 기본 호스팅을 사용할 때 iOS나 Android 모두 아무런 조치가 필요하지 않습니다.**

로컬 서버를 호스팅하기 위해 [useLocalServer] 옵션을 사용하는 경우, http 통신에 필요한 플랫폼별 설정을 해야 합니다.

## 안드로이드 [#](https://pub.dev/packages/kpostal#android)

android:usesClearextTraffic="true"`를

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

info.plist 파일에 `NSAppTransportSecurity`를 추가합니다.

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

1. [카카오 개발자 사이트](https://developers.kakao.com/)로 이동합니다.
2. 개발자 등록 및 앱 생성
3. 웹 플랫폼 추가를 선택합니다: [앱] - [플랫폼] - [웹 플랫폼 등록] - [사이트 도메인 등록] 선택
4. 사이트 도메인 등록하기: 웹 플랫폼을 선택하고 사이트 도메인을 등록합니다.
   - 기본값은 `https://tykann.github.io`을 사용합니다.
   - 로컬 서버를 사용하는 경우 `http://localhost:{사용자 포트, 기본값은 8080}`을 사용합니다.
5. 페이지 상단의 자바스크립트 키를 지도 API의 앱 키로 사용합니다.

```dart
import 'package:kpostal/kpostal.dart';

// 콜백을 사용합니다.
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

// 콜백을 사용하지 않습니다.
TextButton(
    onPressed: () async {
        Kpostal result = await Navigator.push(context, MaterialPageRoute(builder: (_) => KpostalView()));
        print(result.address);
    },
    child: Text('Search!'),
),

// 로컬 서버를 사용합니다.
KpostalView(
    useLocalServer: true, // 기본값은 false입니다.
    localPort: 8080, // 기본값은 8080입니다.
    kakaoKey: '{귀사의 카카오 개발자 앱의 JS 키}' // 선언되지 않은 경우 플랫폼의 지오코딩만 사용
    callback: ...
)
```

[kpostal | Flutter Package](https://pub.dev/packages/kpostal)
