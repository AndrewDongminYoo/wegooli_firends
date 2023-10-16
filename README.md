# Wegooli Friends

## Features

- 차량 대여 및 주요 기능 액세스 제공
- 대여 차량 팀 공유를 위한 커뮤니티 기능 제공
- 캠페인 및 차량 관련 아티클 등을 제공하는 포털 기능 제공

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

```shell
flutter clean ; flutter pub get
flutter run
```

### Prerequisites

What things you need to install the software and how to install them

- Dart SDK 버전 2.18.0 이상.
- Flutter SDK 버전 3.3.0 이상.
- 안드로이드 스튜디오, VS Code(권장), XCode 등 원하는 IDE

## Built With

- [Flutter](https://flutter.dev/) - The mobile app framework used
- [Dhiwise](https://dhiwise.com/) - 로우 코드 툴로써, 피그마와 같은 디자인 도구의 실시간 작업물로부터 플러터 코드 보일러코드를 생성.
- [OpenAPI Generator](https://openapi-generator.tech) - lib/dart 내의 비즈니스 관련 dio 코드들은 Open API 스펙에 의해 자동으로 생성.

## Application structure

빌드가 완료되면 애플리케이션 구조는 다음과 같아야 합니다:

```plaintext
.
├── android                  - Android 애플리케이션을 실행하는 데 필요한 파일
├── ios                      - iOS 애플리케이션을 실행하는 데 필요한 파일
├── macOS                    - macOS 애플리케이션을 실행하는 데 필요한 파일
├── web                      - web 애플리케이션을 실행하는 데 필요한 파일
├── assets                   - 글꼴, 이미지, 애니메이션 등 정적 리소스 포함
└── lib                      - 애플리케이션의 주요 기능과 관련된 핵심 코드
    ├── main.dart            - 애플리케이션의 엔트리 포인트
    ├── controllers          - GetX 컨트롤러 및 바인딩 관련 코드 포함
    ├── core                 - 가장 중요한 코어 디렉토리
    │   ├── errors           - 에러 클래스 및 관련 함수 포함
    │   ├── network          - 네트워크 요청/응답/오류 처리 담당 코드
    │   ├── utils            - 애플리케이션의 공통 파일 및 유틸리티 포함
    │   │   ├── extensions   - Dart 기본 타입 확장 (클린코드)
    │   │   └── formatters   - 입력 포맷 변환 관련 코드
    ├── data                 - 비즈니스 로직 관련 코드
    │   ├── api              - API 서비스 및 HTTP 관련 코드
    │   ├── auth             - Bearer Auth 및 Firebase 인증 관련 코드
    │   ├── custom           - Json to Dart 생성 코드 + 커스텀 DTO
    │   ├── docs             - 텍스트형 데이터 (이용 약관, 사업 정보 등)
    │   ├── firebase         - Firebase 관련 코드
    │   └── model            - Swagger 스펙으로부터 생성한 모델 클래스
    ├── gen                  - flutter_gen, build_runner 생성 코드
    │   └── l10n             - flutter_localizations 생성 코드
    ├── l10n                 - .arb 파일 모음 (l10ns 베이스 코드)
    ├── layout               - 반응형 UI 및 공통 레이아웃 코드
    ├── routes               - 라우트 관리 및 네비게이터 관련 코드
    ├── screens              - 애플리케이션 화면 관련 코드
    │   ├── app_gateway      - 빠른 개발을 위한 게이트웨이 스크린
    │   ├── buttons          - 사용된 버튼 (주로 elevated_button)
    │   ├── car_status       - 차량 상태 모니터링 화면
    │   ├── forms            - 애플리케이션의 다양한 폼 (가입, 로그인 등)
    │   ├── select           - 드롭다운 및 라디오 버튼 등 선택 위젯
    │   └── shared_calenda   - table_calendar 파트 코드들
    ├── services             - 컨트롤러 대신 API 로직 처리하는 서비스 클래스들
    ├── theme                - 앱 테마 및 데코레이션 클래스 포함
    └── widgets              - 비즈니스 관련성 적은, 공통으로 사용되는 위젯 클래스
        ├── app_bar          - 스캐폴드 앱바 관련 위젯
        └── buttons          - 로우 레벨 버튼 위젯
```

## Before Commit (pre-commit hook is on Going)

- build_runner 등 코드 제너레이터 관련 코드 변경 시 `yarn generate` 실행.
- 코드의 포맷이 지정되지 않은 경우 터미널에서 `yarn format (또는 yarn format:hard)` 실행하여 코드의 포맷을 정리합니다.

```shell
# 적당한 CLI 툴을 찾지 못해 Yarn 기반 스크립트 관리 중입니다.
yarn generate ; yarn format:hard
```

## Package and Tools Used in this Project

- `build_runner`: Dart 코드를 사용하여 파일을 생성하는 구체적인 방법을 제공합니다. 파일은 항상 디스크에 직접 생성되며, "Bazel"에서 영감을 받은 증분 방식
- `build_web_compilers`: dart2js 및 DDC 컴파일러를 래핑하는 빌더 구현.
- `cached_network_image`: 온라인에서 이미지를 표시하고 캐시 디렉토리에 보관하는 플러터 라이브러리.
- `carousel_slider`: 캐러셀 슬라이더 위젯, 무한 스크롤 및 사용자 정의 하위 위젯 지원.
- `catcher_2`: 개발자가 포착하지 못한 에러를 처리하기 위한 여러 핸들러를 제공하는 에러 포착용 플러그인.
- `collection`: 컬렉션 작업을 더 쉽게 할 수 있도록 "dart:collection" 스타일의 유틸리티 함수와 클래스가 포함.
- `color`: 색상을 생성, 변환 및 비교하는 데 사용할 수 있는 Color 클래스를 노출하는 간단한 Dart 패키지.
- `connectivity_plus`: 네트워크 연결을 검색하고 셀룰러 연결과 WiFi 연결을 구분할 수 있게 되어 그에 따라 스스로 구성할 수 있음.
- `cookie_jar`: 쿠키 정책 및 지속성을 처리하는 데 도움이 되는 Dart의 http 요청용 쿠키 관리자.
- `credit_card_validator`: 신용 카드의 신용카드 번호, 만료일, 보안 코드(CVV/CVC)를 검증하는 Dart 패키지.
- `dash_chat_2`: 사용하기 쉽고, 사용자 정의가 가능하며, 다양한 기능을 갖추고 있는 Flutter용 채팅 UI.
- `dio`: 글로벌 구성, 인터셉터, 폼, 취소, 업/다운로드, 타임아웃, 커스텀 어댑터, 트랜스포머를 지원하는 강력한 Flutter용 HTTP.
- `dio_cookie_manager`: 인터셉터 알고리즘을 기반으로 위의 cookie_jar와 dio를 결합.
- `equatable`: Dart에서 객체를 비교하기 위해 작성해야 하는 장황한 "==" 연산자 및 "hashCode" 메소드 재정의를 대신할 수 있는 패키지.
- `firebase_auth`: 비밀번호, 전화번호, Google, Facebook, Twitter와 같은 ID 공급자를 사용하여 인증할 수 있는 Firebase Auth용 Flutter 플러그인.
- `firebase_core`: 여러 Firebase 앱에 연결할 수 있는 Firebase Core 플러그인.
- `firebase_crashlytics`: "Firebase Crashlytics용 Flutter" 플러그인. 잡히지 않은 에러 Firebase 콘솔에 보고.
- `firebase_messaging`: Android 및 iOS에서 메시지를 안정적으로 전달할 수 있는 크로스 플랫폼 메시징 솔루션인 Firebase 클라우드 메시징용 Flutter 플러그인.
- `flutter_dotenv`: ".env" 파일을 사용하여 전역 변수가 있는 모든 Flutter 애플리케이션 쉽게 구성 가능
- `flutter_gen`: 에셋, 폰트, 색상 등을 위한 Flutter 코드 생성기. 오염되기 쉬운 문자열 기반 에셋 API를 제거.
- `flutter_launcher_icons`: Flutter 앱의 런처 아이콘을 업데이트하는 작업을 간소화하는 명령줄 도구
- `flutter_lints`: 이 패키지에는 올바른 코딩 관행을 장려하기 위해 Flutter 앱, 패키지 및 플러그인을 위한 권장 린트 세트가 포함.
- `flutter_localization`: 맵 데이터 구조를 사용한 인앱 로컬라이제이션 패키지.
- `flutter_lorem`: "lorem ipsum" 같은 임의의 문장과 단락을 생성하기 위한 Flutter 패키지.
- `flutter_markdown`: Flutter용 마크다운 렌더러. 마크다운 오리지널 형식만 지원 (마크다운 확장형 문법 및 인라인 HTML은 지원하지 않음)
- `flutter_native_splash`: 배경색과 스플래시 이미지로 Flutter의 기본 흰색 기본 스플래시 화면을 사용자 지정할 수 있습니다. 다크 모드, 전체 화면 등 지원.
- `flutter_svg`: Flutter를 사용하여 SVG 파일을 렌더링.
- `get`: GetX는 Flutter의 상태 관리, 의존성 주입 및 라우팅 관리를 빠르고 실용적으로 결합한 매우 가볍고 강력한 솔루션.
- `image_picker`: 이미지 라이브러리에서 이미지를 선택하고 카메라로 새 사진을 찍을 수 있는 iOS 및 Android용 Flutter 플러그인.
- `import_sorter`: 다트 임포트를 자동으로 정리하는 다트 패키지. 모든 다트 임포트 파일을 알파벳순으로 정렬한 다음 다트-플러터-패키지-로컬 순서로 그룹화.
- `intl`: 복수 및 성별, 날짜/숫자 서식 및 구문 분석, 양방향 텍스트를 포함한 국제화 및 현지화 기능 제공.
- `json_annotation`: JSON 직렬화 및 역직렬화를 위한 코드를 생성하기 위해 "package:json_serializable"에서 사용하는 어노테이션을 정의.
- `json_serializable`: 빌더는 "package:json_annotation"에 정의된 클래스로 주석이 달린 멤버를 찾으면 코드를 생성.
- `just_the_tooltip`: 플러터 자체 툴팁보다 더 유연한 위치와 스타일을 제공하는 인터페이스.
- `kpostal`: Kpostal 패키지는 카카오 우편번호 서비스를 이용해 한국 우편 주소를 검색 가능.
- `logger`: 작고 사용하기 쉬우며 확장 가능한 로거로 아름다운 로그를 출력.
- `lottie`: Bodymovin을 사용하여 json 형식으로 내보낸 "Adobe After Effects" 애니메이션을 파싱하여 네이티브 렌더링.
- `path_provider`: 파일 시스템에서 자주 사용되는 위치를 찾기 위한 Flutter 플러그인. 안드로이드, iOS, 리눅스, 맥OS, 윈도우 지원.
- `sendbird_sdk`: 최소한의 노력으로 실시간 채팅을 초기화, 구성 및 통합할 수 있는 센드버드 공식 SDK.
- `shared_preferences`: "int", "double", "bool", "String" 및 "List<String>" 데이터를 위한 영구 저장소 제공.
- `smooth_page_indicator`: 내장된 효과 세트로 사용자 정의 가능한 애니메이션 페이지 인디케이터.
- `table_calendar`: 고도로 커스터마이징 가능하고 다양한 기능을 갖춘 Flutter용 캘린더 위젯.
- `url_launcher`: URL 실행을 위한 Flutter 플러그인. 웹, 전화, SMS, 이메일 스키마 지원.

## Wegooli Friends API 명세

- API version: v0.0.1
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Documentation For Authorization

Authentication schemes defined for the API: **jwtAuth**

- **Type**: HTTP Bearer authentication

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
