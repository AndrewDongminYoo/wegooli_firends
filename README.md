# wegooli_friends

## Table of contents

- [System requirements](/README.md#system-requirements)
- [Figma design guidelines for better UI accuracy](/README.md#figma-design-guideline-for-better-accuracy)
- [Check the UI of the entire app](/README.md#app-navigations)
- [Application structure](/README.md#project-structure)
- [How to format your code?](/README.md#how-you-can-do-code-formatting)
- [Libraries and tools used](/README.md#libraries-and-tools-used)
- [Support](#support)

## System requirements

Dart SDK 버전 2.18.0 이상.
Flutter SDK 버전 3.3.0 이상.

## Figma design guidelines for better UI accuracy

DhiWise의 가이드라인을 읽고 Figma 설계를 최적화하여 설계에서 코드로의 변환 정확도를 높이세요.
https://docs.dhiwise.com/docs/Designguidelines/intro

## Check the UI of the entire app

개발 기간 중에는 AppRoutes.dart 파일에서 'initialRoute'를 AppGateway로 설정하여 모든 앱 화면의 UI를 한 곳에서 확인할 수 있습니다.

## Application structure

빌드가 완료되면 애플리케이션 구조는 다음과 같아야 합니다:

```shell
.
├── android                         - Android 애플리케이션을 실행하는 데 필요한 파일.
├── ios                             - iOS 애플리케이션을 실행하는 데 필요한 파일.
├── macOS                           - macOS 애플리케이션을 실행하는 데 필요한 파일.
├── web                             - web 애플리케이션을 실행하는 데 필요한 파일.
├── assets                          - 글꼴, 이미지, 애니메이션 등 정적 리소스 포함.
├── lib                             - 애플리케이션의 주요 기능과 관련된 핵심 코드.
    ├── main.dart                   - 애플리케이션의 엔트리 포인트
    ├── core
    │   ├── app_export.dart         - 자주 사용되는 소스코드 익스포트.
    │   ├── constants               - 비즈니스 관련 모든 상수 포함.
    │   ├── environment             - Flavor 별 환경 변수 포함.
    │   ├── errors                  - 오류 처리 클래스 포함.
    │   ├── network                 - 네트워크 관련 클래스 포함.
    │   └── utils                   - 애플리케이션의 공통 파일 및 유틸리티 포함.
    ├── data
    │   ├── api_client              - API 호출 메서드 포함. 인터셉터, 어댑터 등 구현.
    │   ├── models                  - 요청/응답 모델 포함.
    │   └── repository              - 네트워크 리포지토리 포함(설계 완료 후 추가).
    ├── l10n                        - 국제화/현지화 클래스 포함.
    ├── gen                         - flutter_gen, build_runner가 생성하는 클래스 포함 (직접 수정 X).
    ├── screens                     - 스크린 위젯과 뷰와 관련된 컨트롤러/모델/바인딩 포함.
    ├── routes                      - 애플리케이션의 모든 경로를 포함.
    └── theme                       - 앱 테마 및 데코레이션 클래스 포함.
    └── widgets                     - 모든 사용자 지정 위젯 클래스 포함.
```

## How to format your code?

- 코드의 포맷이 지정되지 않은 경우 터미널에서 다음 명령을 실행하여 코드의 포맷을 정리합니다.

```shell
dart format .
```

## Libraries and tools used

- get - GetX는 Flutter의 상태 관리, 의존성 주입 및 라우팅 관리를 빠르고 실용적으로 결합한 매우 가볍고 강력한 솔루션.
  https://pub.dev/packages/get
- connectivity_plus - 네트워크 연결을 검색하고 셀룰러 연결과 WiFi 연결을 구분할 수 있게 되어 그에 따라 스스로 구성할 수 있음.
  https://pub.dev/packages/connectivity_plus
- shared_preferences - int, double, bool, String 및 List\<String> 데이터를 위한 영구 저장소 제공.
  https://pub.dev/packages/shared_preferences
- cached_network_image - 온라인에서 이미지를 표시하고 캐시 디렉토리에 보관하는 플러터 라이브러리입니다.
  https://pub.dev/packages/cached_network_image
- cookie_jar - 쿠키 정책 및 지속성을 처리하는 데 도움이 되는 Dart의 http 요청용 쿠키 관리자입니다.
  https://pub.dev/packages/cookie_jar
- dash_chat_2 - 사용하기 쉽고, 사용자 정의가 가능하며, 다양한 기능을 갖추고 있는 Flutter용 채팅 UI.
  https://pub.dev/packages/dash_chat_2
- dio - 글로벌 구성, 인터셉터, 폼, 취소, 업/다운로드, 타임아웃, 커스텀 어댑터, 트랜스포머를 지원하는 강력한 Flutter용 HTTP.
  https://pub.dev/packages/dio
- dio_cookie_manager - 인터셉터 알고리즘을 기반으로 위의 cookie_jar와 dio를 결합.
  https://pub.dev/packages/dio_cookie_manager
- flutter_gen - 에셋, 폰트, 색상 등을 위한 Flutter 코드 생성기 - 모든 오염되기 쉬운 문자열 기반 에셋 API를 제거.
  https://pub.dev/packages/flutter_gen
- flutter_lorem - "lorem ipsum" 같은 임의의 문장과 단락을 생성하기 위한 Flutter 패키지.
  https://pub.dev/packages/flutter_lorem
- flutter_svg - Flutter를 사용하여 SVG 파일을 렌더링.
  https://pub.dev/packages/flutter_svg
- intl - 복수 및 성별, 날짜/숫자 서식 및 구문 분석, 양방향 텍스트를 포함한 국제화 및 현지화 기능 제공.
  https://pub.dev/packages/intl
- just_the_tooltip - 플러터 자체 툴팁보다 더 유연한 위치와 스타일을 제공하는 인터페이스.
  https://pub.dev/packages/just_the_tooltip
- lottie - Bodymovin을 사용하여 json으로 내보낸 Adobe After Effects 애니메이션을 파싱하여 네이티브 렌더링.
  https://pub.dev/packages/lottie
- sendbird_sdk - 최소한의 노력으로 실시간 채팅을 초기화, 구성 및 통합할 수 있는 센드버드 공식 SDK.
  https://pub.dev/packages/sendbird_sdk
- table_calendar - 고도로 커스터마이징 가능하고 다양한 기능을 갖춘 Flutter용 캘린더 위젯.
  https://pub.dev/packages/table_calendar

## Support

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
