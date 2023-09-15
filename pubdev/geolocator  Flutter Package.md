---
created: 23-09-02T14:15:22
tags: []
source: https://pub.dev/packages/geolocator
author: Author #
---

# geolocator | Flutter Package

[![pub package](https://img.shields.io/pub/v/geolocator.svg)(https://pub.dartlang.org/packages/geolocator)]
[Build status](https://github.com/Baseflow/flutter-geolocator/workflows/geolocator/badge.svg?branch=master)
[![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)](https://github.com/tenhobi/effective_dart)
[![coverage](https://codecov.io/gh/Baseflow/flutter-geolocator/branch/master/graph/badge.svg)](https://codecov.io/gh/Baseflow/flutter-geolocator)

A Flutter geolocation plugin which provides easy access to platform specific location services ([FusedLocationProviderClient](https://developers.google.com/android/reference/com/google/android/gms/location/FusedLocationProviderClient) or if not available the [LocationManager](https://developer.android.com/reference/android/location/LocationManager) on Android and [CLLocationManager](https://developer.apple.com/documentation/corelocation/cllocationmanager) on iOS).

- 마지막으로 알려진 위치를 가져옵니다;
- 장치의 현재 위치를 가져옵니다;
- 지속적인 위치 업데이트 받기;
- 기기에서 위치 서비스가 활성화되어 있는지 확인합니다;
- 두 위치 좌표 사이의 거리(미터)를 계산합니다;
- 두 위치 좌표 사이의 방위를 계산합니다;

> **중요:**
>
> 지오로케이터 플러그인 버전 7.0.0에는 몇 가지 중요한 변경 사항이 포함되어 있으며, 전체 개요는 [7.0.0의 주요 변경 사항](https://github.com/Baseflow/flutter-geolocator/wiki/Breaking-changes-in-7.0.0) 위키 페이지를 참조하세요.
>
> 버전 6.0.0부터 지오코딩 기능(`placemarkFromAddress` 및 `placemarkFromCoordinates`)은 더 이상 위치정보 플러그인의 일부가 아닙니다. 이 기능은 자체 플러그인으로 이동했습니다: [지오코딩](https://pub.dev/packages/geocoding). 이 새로운 플러그인은 이전 방법의 개선된 버전입니다.

Flutter 애플리케이션에 지오로케이터를 추가하려면 [설치](https://pub.dev/packages/geolocator/install) 지침을 참조하십시오. 다음은 지오로케이터가 올바르게 작동하는 데 필요한 몇 가지 Android 및 iOS 세부 정보입니다.

## Android

**Upgrade pre 1.12 Android projects**

Since version 5.0.0 this plugin is implemented using the Flutter 1.12 Android plugin APIs. Unfortunately this means App developers also need to migrate their Apps to support the new Android infrastructure. You can do so by following the [Upgrading pre 1.12 Android projects](https://github.com/flutter/flutter/wiki/Upgrading-pre-1.12-Android-projects) migration guide. Failing to do so might result in unexpected behaviour.

**AndroidX**

지오로케이터 플러그인에는 AndroidX 버전의 Android 지원 라이브러리가 필요합니다. 즉, Android 프로젝트가 AndroidX를 지원하는지 확인해야 합니다. 자세한 지침은 [여기](https://flutter.dev/docs/development/packages-and-plugins/androidx-compatibility)에서 확인할 수 있습니다.

The TL;DR version is:

1. "gradle.properties" 파일에 다음을 추가합니다:

   ```dart
   android.useAndroidX=true
   android.enableJetifier=true
   ```

2. "android/app/build.gradle" 파일에서 `compileSdkVersion`을 33으로 설정합니다:

   ```dart
   android {
       compileSdkVersion 33

       ...
   }
   ```

3. 모든 `android.` 종속성을 AndroidX 종속성으로 교체했는지 확인합니다(전체 목록은 여기에서 확인할 수 있습니다): [AndroidX로 마이그레이션](https://developer.android.com/jetpack/androidx/migrate)).

**Permissions**

안드로이드에서는 안드로이드 매니페스트에 `ACCESS_COARSE_LOCATION` 또는 `ACCESS_FINE_LOCATION` 권한을 추가해야 합니다. 이렇게 하려면 AndroidManifest.xml 파일(android/app/src/main 아래에 위치)을 열고 다음 두 줄 중 하나를 `<manifest>` 태그의 직접 자식으로 추가합니다(두 권한을 모두 구성하면 `ACCESS_FINE_LOCATION`이 지오로케이터 플러그인에서 사용됨):

```dart
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
```

안드로이드 10부터는 앱이 백그라운드에서 실행 중일 때에도 업데이트를 계속 수신하려면 `ACCESS_BACKGROUND_LOCATION` 권한을 추가해야 합니다(지오로케이터 플러그인은 백그라운드 실행 중 위치 업데이트 수신 및 처리를 지원하지 않음에 유의하세요):

```dart
<uses-permission android:name="android.permission.ACCESS_BACKGROUND_LOCATION" />
```

> \*\*참고: `ACCESS_COARSE_LOCATION` 권한을 지정하면 도시 블록과 거의 동일한 정확도로 위치가 업데이트됩니다. ACCESS_COARSE_LOCATION`은 네트워크 서비스만 사용하여 디바이스의 위치를 계산하므로 첫 번째 위치 수정이 완료되기까지 오랜 시간(몇 분)이 소요될 수 있습니다. 자세한 내용은 [여기](https://developer.android.com/training/location/retrieve-current#permissions)에서 확인할 수 있습니다.

## iOS

iOS에서 디바이스의 위치에 액세스하려면 Info.plist 파일(ios/Runner 아래에 위치)에 다음 항목을 추가해야 합니다. Info.plist 파일을 열고 다음을 추가하기만 하면 됩니다(앱의 맥락에서 의미가 있도록 설명을 업데이트해야 합니다):

```dart
<key>NSLocationWhenInUseUsageDescription</key>
<string>This app needs access to location when open.</string>
<key>NSLocationAlwaysUsageDescription</key>
<string>This app needs access to location when in the background.</string>
```

앱이 백그라운드에 있을 때 업데이트를 받으려면 XCode 프로젝트에 백그라운드 모드 기능을 추가하고(프로젝트 > 서명 및 기능 > "+ 기능" 버튼) 위치 업데이트를 선택해야 합니다. 앱스토어에 앱을 제출할 때 앱에 이 기능이 필요한 이유를 Apple에 자세히 설명해야 하므로 주의해야 합니다. Apple이 설명에 만족하지 못하면 앱이 거부됩니다.

요청 임시 전체 정확도({목적키: "YourPurposeKey"})` 메서드 사용 시, Info.plist 파일에 사전을 추가해야 합니다.

```dart
<key>NSLocationTemporaryUsageDescriptionDictionary</key>
<dict>
  <key>YourPurposeKey</key>
  <string>The example App requires temporary access to the device&apos;s precise location.</string>
</dict>
```

두 번째 키(이 예제에서는 `YourPurposeKey`라고 함)는 `requestTemporaryFullAccuracy()` 메서드에서 전달된 purposeKey와 일치해야 합니다. 앱의 여러 기능에 대해 여러 개의 키를 정의할 수 있습니다. 자세한 내용은 Apple의 [문서](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationtemporaryusagedescriptiondictionary)에서 확인할 수 있습니다.

> 참고: 임시 전체 정확도 액세스를 처음 요청하는 경우 팝업이 표시되는 데 몇 초가 걸릴 수 있습니다. 이는 iOS가 정확한 사용자 위치를 파악하는 데 몇 초가 걸리기 때문입니다. 안타깝게도 이는 저희의 손을 벗어난 문제입니다.

## macOS

macOS에서는 장치의 위치에 액세스하기 위해 Info.plist 파일(macOS/Runner 아래에 위치)에 다음 항목을 추가해야 합니다. Info.plist 파일을 열고 다음을 추가하기만 하면 됩니다(앱의 맥락에서 의미가 있도록 설명을 업데이트해야 합니다):

```dart
<key>NSLocationUsageDescription</key>
<string>This app needs access to location.</string>
```

또한 DebugProfile.entitlements 및 Release.entitlements 파일에 다음 항목을 추가해야 합니다. 이렇게 하면 앱이 기기의 위치 서비스를 사용하도록 선언하고 '시스템 환경설정' -> '보안 및 권한' -> '개인정보' 설정의 목록에 추가됩니다.

```dart
<key>com.apple.security.personal-information.location</key>
<true/>
```

요청 `TemporaryFullAccuracy({purposeKey: "YourPurposeKey"})` 메서드를 사용할 경우, Info.plist 파일에 딕셔너리를 추가해야 합니다.

```dart
<key>NSLocationTemporaryUsageDescriptionDictionary</key>
<dict>
  <key>YourPurposeKey</key>
  <string>The example App requires temporary access to the device&apos;s precise location.</string>
</dict>
```

두 번째 키(이 예제에서는 `YourPurposeKey`라고 함)는 `requestTemporaryFullAccuracy()` 메서드에서 전달된 purposeKey와 일치해야 합니다. 앱의 여러 기능에 대해 여러 개의 키를 정의할 수 있습니다. 자세한 내용은 Apple의 [문서](https://developer.apple.com/documentation/bundleresources/information_property_list/nslocationtemporaryusagedescriptiondictionary)에서 확인할 수 있습니다.

> 참고: 임시 전체 정확도 액세스를 처음 요청하는 경우 팝업이 표시되는 데 몇 초가 걸릴 수 있습니다. 이는 macOS가 정확한 사용자 위치를 파악하는 데 몇 초가 소요될 수 있기 때문입니다. 안타깝게도 이는 저희의 손을 벗어난 문제입니다.

## Web

웹에서 지오로케이터 플러그인을 사용하려면 Flutter 1.20 이상을 사용해야 합니다. Flutter는 `geolocator: ^6.2.0` 종속성을 `pubspec.yaml`에 추가하면 자동으로 추가됩니다.

The following methods of the geolocator API are not supported on the web and will result in a `PlatformException` with the code `UNSUPPORTED_OPERATION`:

- `getLastKnownPosition({ bool forceAndroidLocationManager = true })`
- `openAppSettings()`
- `openLocationSettings()`

**NOTE**

Geolocator Web is available only in [secure_contexts](https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts) (HTTPS). More info about the Geolocator API can be found [here](https://developer.mozilla.org/en-US/docs/Web/API/Geolocation_API).

## Windows

Windows에서 지오로케이터 플러그인을 사용하려면 Flutter 2.10 이상을 사용해야 합니다. `지오로케이터`를 추가하면 Flutter가 자동으로 승인된 geolocator_windows 패키지를 애플리케이션에 추가합니다: 8.1.0`종속성을`pubspec.yaml`에 추가하면 자동으로 추가됩니다.

The code below shows an example on how to acquire the current position of the device, including checking if the location services are enabled and checking / requesting permission to access the position of the device:

```dart
import 'package:geolocator/geolocator.dart';

/// Determine the current position of the device.
///
/// 위치 서비스가 활성화되지 않았거나 권한이 없는 경우
/// are denied the `Future` will return an error.
Future<Position> _determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // 권한이 거부되었습니다, 다음에 시도해 보세요.
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // 이제 앱에 설명 UI가 표시될 것입니다.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
      'Location permissions are permanently denied, we cannot request permissions.');
  }

  // 여기에 도달하면 권한이 부여되어 다음을 수행할 수 있습니다.
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}
```

### Current location

To query the current location of the device simply make a call to the `getCurrentPosition` method. You can finetune the results by specifying the following parameters:

- `desiredAccuracy`: 앱이 수신하고자 하는 위치 데이터의 정확도입니다;
- `timeLimit`: 현재 위치를 획득하는 데 허용되는 최대 시간입니다. 시간 제한이 지나면 `TimeOutException` will be thrown and the call will be cancelled. By default no limit is configured.

```dart
import 'package:geolocator/geolocator.dart';

Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
```

### Last known location

디바이스에 저장된 마지막으로 알려진 위치를 쿼리하려면 `getLastKnownPosition` 메서드를 사용할 수 있습니다(위치 세부 정보가 없는 경우 `null` 값이 반환될 수 있음):

```dart
import 'package:geolocator/geolocator.dart';

Position? position = await Geolocator.getLastKnownPosition();
```

### Listen to location updates

위치 변경을 수신하려면 `getPositionStream`을 호출하여 위치 업데이트를 수신할 수 있는 스트림을 수신할 수 있습니다. 다음 매개변수를 지정하여 결과를 세밀하게 조정할 수 있습니다:

- `accuracy`: 앱이 수신하고자 하는 위치 데이터의 정확도입니다;
- `distanceFilter`: 업데이트 이벤트가 발생하기 전에 기기가 수평으로 이동해야 하는 최소 거리(미터 단위로 측정)입니다. generated;
- `timeLimit`: 위치 업데이트 사이에 허용되는 최대 시간. 시간 제한이 지나면 `TimeOutException` will be thrown and the stream will be cancelled. By default no limit is configured.

```dart
import 'package:geolocator/geolocator.dart';

final LocationSettings locationSettings = LocationSettings(
  accuracy: LocationAccuracy.high,
  distanceFilter: 100,
);
StreamSubscription<Position> positionStream = Geolocator.getPositionStream(locationSettings: locationSettings).listen(
    (Position? position) {
        print(position == null ? 'Unknown' : '${position.latitude.toString()}, ${position.longitude.toString()}');
    });
```

In certain situation it is necessary to specify some platform specific settings. This can be accomplished using the platform specific `AndroidSettings` or `AppleSettings` classes. 플랫폼별 클래스를 사용하는 경우 플랫폼별 패키지도 함께 가져와야 합니다. 예를 들어

```dart
import 'package:geolocator/geolocator.dart';
import 'package:geolocator_apple/geolocator_apple.dart';
import 'package:geolocator_android/geolocator_android.dart';

late LocationSettings locationSettings;

if (defaultTargetPlatform == TargetPlatform.android) {
  locationSettings = AndroidSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
    forceLocationManager: true,
    intervalDuration: const Duration(seconds: 10),
    //(Optional) Set foreground notification config to keep the app alive
    //when going to the background
    foregroundNotificationConfig: const ForegroundNotificationConfig(
        notificationText:
        "예제 앱은 사용자가 앱을 사용하지 않을 때에도 계속 위치를 수신합니다",
        notificationTitle: "Running in Background",
        enableWakeLock: true,
    )
  );
} else if (defaultTargetPlatform == TargetPlatform.iOS || defaultTargetPlatform == TargetPlatform.macOS) {
  locationSettings = AppleSettings(
    accuracy: LocationAccuracy.high,
    activityType: ActivityType.fitness,
    distanceFilter: 100,
    pauseLocationUpdatesAutomatically: true,
    // Only set to true if our app will be started up in the background.
    showBackgroundLocationIndicator: false,
  );
} else {
    locationSettings = LocationSettings(
    accuracy: LocationAccuracy.high,
    distanceFilter: 100,
  );
}

StreamSubscription<Position> positionStream = Geolocator.getPositionStream(locationSettings: locationSettings).listen(
    (Position? position) {
        print(position == null ? 'Unknown' : '${position.latitude.toString()}, ${position.longitude.toString()}');
    });
```

### Location accuracy (Android and iOS 14+ only)

사용자가 대략적인 위치 가져오기 또는 정확한 위치 가져오기를 사용하도록 설정했는지 쿼리하려면 `Geolocator().getLocationAccuracy()` 메서드를 호출하면 됩니다. 이 메서드는 `Future<LocationAccuracyStatus>`를 반환하며, 이 메서드가 완료되면 사용자가 대략적인 위치 가져오기를 활성화한 경우 `LocationAccuracyStatus.reduced`, 정확한 위치 가져오기를 활성화한 경우 `LocationAccuracyStatus.precise`가 포함됩니다. 사용자가 권한을 부여하기 전에 `getLocationAccuracy`를 호출하면 메서드는 기본적으로 `LocationAccuracyStatus.reduced`를 반환합니다. iOS 13 이하에서는 기본값이 `LocationAccuracy`이므로 `getLocationAccuracy` 메서드는 항상 `LocationAccuracyStatus.precise`를 반환합니다.

```dart
import 'package:geolocator/geolocator.dart';

var accuracy = await Geolocator.getLocationAccuracy();
```

### Location service information

위치 서비스가 활성화되어 있는지 확인하려면 `isLocationServiceEnabled` 메서드를 호출하면 됩니다:

```dart
import 'package:geolocator/geolocator.dart';

bool isLocationServiceEnabled  = await Geolocator.isLocationServiceEnabled();
```

서비스 상태 변경을 수신하려면 `getServiceStatusStream`을 호출하면 됩니다. 그러면 위치 서비스 상태 업데이트를 수신하기 위해 수신할 수 있는 `Stream<서비스 상태>`가 반환됩니다.

```dart
import 'package:geolocator/geolocator.dart';

StreamSubscription<ServiceStatus> serviceStatusStream = Geolocator.getServiceStatusStream().listen(
    (ServiceStatus status) {
        print(status);
    });
```

웹 플랫폼을 사용하는 경우, 브라우저가 자바스크립트 권한 API를 지원하지 않는 경우 `checkPermission` 메서드는 `LocationPermission.denied` 상태를 반환합니다. 그럼에도 불구하고 웹 플랫폼에서 `getCurrentPosition` 및 `getPositionStream` 메서드는 계속 사용할 수 있습니다.

사용자가 이미 디바이스의 위치를 획득할 수 있는 권한을 부여했는지 확인하려면 `checkPermission` 메서드를 호출하면 됩니다:

```dart
import 'package:geolocator/geolocator.dart';

LocationPermission permission = await Geolocator.checkPermission();
```

디바이스의 위치 접근 권한을 요청하려면 `requestPermission` 메서드를 호출하면 됩니다:

```dart
import 'package:geolocator/geolocator.dart';

LocationPermission permission = await Geolocator.requestPermission();
```

Possible results from the `checkPermission` and `requestPermission` methods are:

| Permission    | Description                                                                                                                                                          |
| ------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| denied        | Permission to access the device's location is denied by the user. You are free to request permission again (this is also the initial permission state).              |
| deniedForever | Permission to access the device's location is permanently denied. 권한을 요청할 때 사용자가 앱 설정에서 권한을 업데이트할 때까지 권한 대화 상자가 표시되지 않습니다. |
| whileInUse    | Permission to access the device's location is allowed only while the App is in use.                                                                                  |
| always        | Permission to access the device's location is allowed even when the App is running in the background.                                                                |

> 참고: 안드로이드는 권한을 확인할 때 '동안 사용 중', '항상' 또는 '거부됨'만 반환할 수 있습니다. 안드로이드 OS의 제한으로 인해 권한을 확인할 때 권한이 영구적으로 거부되었는지 여부를 확인할 수 없습니다. 해결 방법을 사용하면 '요청 권한' 메서드를 통해서만 지리적 위치를 확인할 수 있습니다. 자세한 내용은 [위키](https://github.com/Baseflow/flutter-geolocator/wiki/Breaking-changes-in-7.0.0#android-permission-update)에서 확인할 수 있습니다.

경우에 따라 사용자에게 요청하여 디바이스 설정을 업데이트해야 하는 경우도 있습니다. 예를 들어 사용자가 처음에 디바이스의 위치에 액세스할 수 있는 권한을 영구적으로 거부했거나 위치 서비스가 활성화되어 있지 않은 경우(Android의 경우 자동 확인 기능이 작동하지 않는 경우) 등이 이에 해당합니다. 이러한 경우 `openAppSettings` 또는 `openLocationSettings` 메서드를 사용하여 사용자를 즉시 디바이스의 설정 페이지로 리디렉션할 수 있습니다.

On Android the `openAppSettings` method will redirect the user to the App specific settings where the user can update necessary permissions. The `openLocationSettings` method will redirect the user to the location settings where the user can enable/ disable the location services.

On iOS we are not allowed to open specific setting pages so both methods will redirect the user to the Settings App from where the user can navigate to the correct settings category to update permissions or enable/ disable the location services.

```dart
import 'package:geolocator/geolocator.dart';

await Geolocator.openAppSettings();
await Geolocator.openLocationSettings();
```

두 위치 좌표 사이의 거리(미터)를 계산하려면 `distanceBetween` 메서드를 사용할 수 있습니다. 거리 간격` 메서드에는 네 개의 매개 변수가 필요합니다:

| Parameter      | Type   | Description                           |
| -------------- | ------ | ------------------------------------- |
| startLatitude  | double | Latitude of the start position        |
| startLongitude | double | Longitude of the start position       |
| endLatitude    | double | Latitude of the destination position  |
| endLongitude   | double | Longitude of the destination position |

```dart
import 'package:geolocator/geolocator.dart';

double distanceInMeters = Geolocator.distanceBetween(52.2165157, 6.9437819, 52.3546274, 4.8285838);
```

두 지오좌표 사이의 방위를 계산하려면 `bearingBetween` 메서드를 사용할 수 있습니다. 베어링 사이` 메서드에도 네 개의 매개 변수가 필요합니다:

| Parameter      | Type   | Description                           |
| -------------- | ------ | ------------------------------------- |
| startLatitude  | double | Latitude of the start position        |
| startLongitude | double | Longitude of the start position       |
| endLatitude    | double | Latitude of the destination position  |
| endLongitude   | double | Longitude of the destination position |

```dart
import 'package:geolocator/geolocator.dart';

double bearing = Geolocator.bearingBetween(52.2165157, 6.9437819, 52.3546274, 4.8285838);
```

The table below outlines the accuracy options per platform:

|                       | Android    | iOS                                                                                                                     |
| --------------------- | ---------- | ----------------------------------------------------------------------------------------------------------------------- |
| **lowest**            | 500m       | 3000m                                                                                                                   |
| **low**               | 500m       | 1000m                                                                                                                   |
| **medium**            | 100 - 500m | 100m                                                                                                                    |
| **high**              | 0 - 100m   | 10m                                                                                                                     |
| **best**              | 0 - 100m   | ~0m                                                                                                                     |
| **bestForNavigation** | 0 - 100m   | [Optimized for navigation](https://developer.apple.com/documentation/corelocation/kcllocationaccuracybestfornavigation) |

문제, 버그 또는 기능 요청이 있으면 [GitHub](https://github.com/Baseflow/flutter-geolocator/issues) 페이지에 이슈로 제출해 주세요. 상업적 지원은 [hello@baseflow.com](mailto:hello@baseflow.com)로 문의하실 수 있습니다.

문서 개선, 버그 해결, 멋진 새 기능 추가 등 플러그인에 기여하고 싶다면 [기여 가이드](https://github.com/baseflow/flutter-geolocator/blob/main/CONTRIBUTING.md)를 주의 깊게 검토한 후 [풀 리퀘스트](https://github.com/Baseflow/flutter-geolocator/pulls)를 보내주시기 바랍니다.

This Geolocator plugin for Flutter is developed by [Baseflow](https://baseflow.com/).

[geolocator | Flutter Package](https://pub.dev/packages/geolocator)
