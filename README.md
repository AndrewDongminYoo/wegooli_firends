# wegooli_friends

## Table of contents

- [System requirements](/README.md#system-requirements)
- [Figma design guidelines for better UI accuracy](/README.md#figma-design-guideline-for-better-accuracy)
- [Check the UI of the entire app](/README.md#app-navigations)
- [Application structure](/README.md#project-structure)
- [How to format your code?](/README.md#how-you-can-do-code-formatting)
- [Libraries and tools used](/README.md#libraries-and-tools-used)

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
    │   ├── auth                    - 인증 관련 인터셉터, 클라이언트 구현.
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

- `built_collection` - 빌드 컬렉션은 빌더 패턴을 사용하는 불변성 클래스 컬렉션입니다.
  https://pub.dev/packages/built_collection
- `built_value` - 불변성을 제공하고 복제 기능이 포함된 패키지. JSON 직렬화와 Enum 타입 제공.
  https://pub.dev/packages/built_value
- `cached_network_image` - 온라인에서 이미지를 표시하고 캐시 디렉토리에 보관하는 플러터 라이브러리입니다.
  https://pub.dev/packages/cached_network_image
- `connectivity_plus` - 네트워크 연결을 검색하고 셀룰러 연결과 WiFi 연결을 구분할 수 있게 되어 그에 따라 스스로 구성할 수 있음.
  https://pub.dev/packages/connectivity_plus
- `cookie_jar` - 쿠키 정책 및 지속성을 처리하는 데 도움이 되는 Dart의 http 요청용 쿠키 관리자입니다.
  https://pub.dev/packages/cookie_jar
- `dash_chat_2` - 사용하기 쉽고, 사용자 정의가 가능하며, 다양한 기능을 갖추고 있는 Flutter용 채팅 UI.
  https://pub.dev/packages/dash_chat_2
- `dio_cookie_manager` - 인터셉터 알고리즘을 기반으로 위의 cookie_jar와 dio를 결합.
  https://pub.dev/packages/dio_cookie_manager
- `dio` - 글로벌 구성, 인터셉터, 폼, 취소, 업/다운로드, 타임아웃, 커스텀 어댑터, 트랜스포머를 지원하는 강력한 Flutter용 HTTP.
  https://pub.dev/packages/dio
- `flutter_gen` - 에셋, 폰트, 색상 등을 위한 Flutter 코드 생성기 - 모든 오염되기 쉬운 문자열 기반 에셋 API를 제거.
  https://pub.dev/packages/flutter_gen
- `flutter_localization` - 맵 데이터 구조를 사용한 인앱 로컬라이제이션 패키지.
  https://pub.dev/packages/flutter_localization
- `flutter_lorem` - "lorem ipsum" 같은 임의의 문장과 단락을 생성하기 위한 Flutter 패키지.
  https://pub.dev/packages/flutter_lorem
- `flutter_svg` - Flutter를 사용하여 SVG 파일을 렌더링.
  https://pub.dev/packages/flutter_svg
- `get` - GetX는 Flutter의 상태 관리, 의존성 주입 및 라우팅 관리를 빠르고 실용적으로 결합한 매우 가볍고 강력한 솔루션.
  https://pub.dev/packages/get
- `intl` - 복수 및 성별, 날짜/숫자 서식 및 구문 분석, 양방향 텍스트를 포함한 국제화 및 현지화 기능 제공.
  https://pub.dev/packages/intl
- `just_the_tooltip` - 플러터 자체 툴팁보다 더 유연한 위치와 스타일을 제공하는 인터페이스.
  https://pub.dev/packages/just_the_tooltip
- `lottie` - Bodymovin을 사용하여 json으로 내보낸 Adobe After Effects 애니메이션을 파싱하여 네이티브 렌더링.
  https://pub.dev/packages/lottie
- `sendbird_sdk` - 최소한의 노력으로 실시간 채팅을 초기화, 구성 및 통합할 수 있는 센드버드 공식 SDK.
  https://pub.dev/packages/sendbird_sdk
- `shared_preferences` - int, double, bool, String 및 List\<String> 데이터를 위한 영구 저장소 제공.
  https://pub.dev/packages/shared_preferences
- `table_calendar` - 고도로 커스터마이징 가능하고 다양한 기능을 갖춘 Flutter용 캘린더 위젯.
  https://pub.dev/packages/table_calendar

## Wegooli Friends API 명세

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v0.0.1
- Build package: org.openapitools.codegen.languages.DartDioClientCodegen

## Getting Started

```dart
import 'package:wegooli_friends/api.dart';

final api = WegooliFriends().getAccountAgreementControllerApi();
final String classification = classification_example; // String |
final String accountId = accountId_example; // String |

try {
    final response = await api.deleteAccountAgreement(classification, accountId);
    print(response);
} catch on DioException (e) {
    print("Exception when calling AccountAgreementControllerApi->deleteAccountAgreement: $e\n");
}

```

## Documentation for API Endpoints

| Class                                                                             | Method                                                                                            | HTTP request                                               | Description |
| --------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ---------------------------------------------------------- | ----------- |
| [*AccountAgreementController*](doc/AccountAgreementController.md)           | [**deleteAccountAgreement**](doc/AccountAgreementController.md#deleteaccountagreement)         | **DELETE** /account/agreement/{classification}/{accountId} |
| [*AccountAgreementController*](doc/AccountAgreementController.md)           | [**insertAccountAgreement**](doc/AccountAgreementController.md#insertaccountagreement)         | **POST** /account/agreement                                |
| [*AccountAgreementController*](doc/AccountAgreementController.md)           | [**selectAccountAgreement**](doc/AccountAgreementController.md#selectaccountagreement)         | **GET** /account/agreement/{classification}/{accountId}    |
| [*AccountAgreementController*](doc/AccountAgreementController.md)           | [**selectAccountAgreementList**](doc/AccountAgreementController.md#selectaccountagreementlist) | **GET** /account/agreement                                 |
| [*AccountAgreementController*](doc/AccountAgreementController.md)           | [**updateAccountAgreement**](doc/AccountAgreementController.md#updateaccountagreement)         | **PUT** /account/agreement                                 |
| [*DeviceController*](doc/DeviceController.md)                               | [**doorClose**](doc/DeviceController.md#doorclose)                                             | **PUT** /control/door/close                                |
| [*DeviceController*](doc/DeviceController.md)                               | [**doorOpen**](doc/DeviceController.md#dooropen)                                               | **PUT** /control/door/open                                 |
| [*DeviceController*](doc/DeviceController.md)                               | [**selectDeviceControlHistoryList**](doc/DeviceController.md#selectdevicecontrolhistorylist)   | **GET** /control/history/list                              |
| [*DeviceController*](doc/DeviceController.md)                               | [**turnOnEmergencyLight**](doc/DeviceController.md#turnonemergencylight)                       | **PUT** /control/light                                     |
| [*DeviceController*](doc/DeviceController.md)                               | [**turnOnHorn**](doc/DeviceController.md#turnonhorn)                                           | **PUT** /control/horn                                      |
| [*LicenseController*](doc/LicenseController.md)                             | [**deleteLicense**](doc/LicenseController.md#deletelicense)                                    | **DELETE** /license/{seq}                                  |
| [*LicenseController*](doc/LicenseController.md)                             | [**deleteLicenseByMemberSeq**](doc/LicenseController.md#deletelicensebymemberseq)              | **DELETE** /license/member/{memberSeq}                     |
| [*LicenseController*](doc/LicenseController.md)                             | [**insertLicense**](doc/LicenseController.md#insertlicense)                                    | **POST** /license                                          |
| [*LicenseController*](doc/LicenseController.md)                             | [**selectLicense**](doc/LicenseController.md#selectlicense)                                    | **GET** /license/{seq}                                     |
| [*LicenseController*](doc/LicenseController.md)                             | [**selectLicenseList**](doc/LicenseController.md#selectlicenselist)                            | **GET** /license/list                                      |
| [*LicenseController*](doc/LicenseController.md)                             | [**selectServiceStop**](doc/LicenseController.md#selectservicestop)                            | **GET** /license/stop                                      |
| [*LicenseController*](doc/LicenseController.md)                             | [**updateLicense**](doc/LicenseController.md#updatelicense)                                    | **PUT** /license/{seq}                                     |
| [*MetisController*](doc/MetisController.md)                                 | [**receivced**](doc/MetisController.md#receivced)                                              | **GET** /metis/m2m/digiparts                               |
| [*MetisController*](doc/MetisController.md)                                 | [**receiveTerminalResponse**](doc/MetisController.md#receiveterminalresponse)                  | **GET** /metis/digiparts                                   |
| [*PaymentCardController*](doc/PaymentCardController.md)                     | [**deletePaymentCard**](doc/PaymentCardController.md#deletepaymentcard)                        | **DELETE** /payment/card/{seq}                             |
| [*PaymentCardController*](doc/PaymentCardController.md)                     | [**insertPaymentCard**](doc/PaymentCardController.md#insertpaymentcard)                        | **POST** /payment/card                                     |
| [*PaymentCardController*](doc/PaymentCardController.md)                     | [**selectPaymentCard**](doc/PaymentCardController.md#selectpaymentcard)                        | **GET** /payment/card/{seq}                                |
| [*PaymentCardController*](doc/PaymentCardController.md)                     | [**selectPaymentCardList**](doc/PaymentCardController.md#selectpaymentcardlist)                | **GET** /payment/card                                      |
| [*PaymentCardController*](doc/PaymentCardController.md)                     | [**updatePaymentCard**](doc/PaymentCardController.md#updatepaymentcard)                        | **PUT** /payment/card/{seq}                                |
| [*ScheduleController*](doc/ScheduleController.md)                           | [**deleteSchedule**](doc/ScheduleController.md#deleteschedule)                                 | **PUT** /schedule/delete/{seq}                             |
| [*ScheduleController*](doc/ScheduleController.md)                           | [**registSchedule**](doc/ScheduleController.md#registschedule)                                 | **POST** /schedule/regist                                  |
| [*ScheduleController*](doc/ScheduleController.md)                           | [**selectSchedule**](doc/ScheduleController.md#selectschedule)                                 | **GET** /schedule/detail/{seq}                             |
| [*ScheduleController*](doc/ScheduleController.md)                           | [**selectScheduleList**](doc/ScheduleController.md#selectschedulelist)                         | **GET** /schedule/list                                     |
| [*ScheduleController*](doc/ScheduleController.md)                           | [**updateSchedule**](doc/ScheduleController.md#updateschedule)                                 | **PUT** /schedule/update/{seq}                             |
| [*ShareServiceController*](doc/ShareServiceController.md)                   | [**getShareService**](doc/ShareServiceController.md#getshareservice)                           | **GET** /getShareService                                   |
| [*ShareServiceController*](doc/ShareServiceController.md)                   | [**getShareServiceDetail**](doc/ShareServiceController.md#getshareservicedetail)               | **GET** /getShareServiceDetail                             |
| [*ShareServiceController*](doc/ShareServiceController.md)                   | [**setServiceLeader**](doc/ShareServiceController.md#setserviceleader)                         | **GET** /setServiceLeader                                  |
| [*TeamAccountConnectionController*](doc/TeamAccountConnectionController.md) | [**deleteTeamAccount**](doc/TeamAccountConnectionController.md#deleteteamaccount)              | **DELETE** /team/account/{seq}                             |
| [*TeamAccountConnectionController*](doc/TeamAccountConnectionController.md) | [**insertTeamAccount**](doc/TeamAccountConnectionController.md#insertteamaccount)              | **POST** /team/account                                     |
| [*TeamAccountConnectionController*](doc/TeamAccountConnectionController.md) | [**selectTeamAccount**](doc/TeamAccountConnectionController.md#selectteamaccount)              | **GET** /team/account/{seq}                                |
| [*TeamAccountConnectionController*](doc/TeamAccountConnectionController.md) | [**selectTeamAccountList**](doc/TeamAccountConnectionController.md#selectteamaccountlist)      | **GET** /team/account                                      |
| [*TeamCarConnectionController*](doc/TeamCarConnectionController.md)         | [**teamCarConnection**](doc/TeamCarConnectionController.md#teamcarconnection)                  | **PUT** /team/car/teamCarConnection                        |
| [*TeamCarConnectionController*](doc/TeamCarConnectionController.md)         | [**teamCarDisConnection**](doc/TeamCarConnectionController.md#teamcardisconnection)            | **PUT** /team/car/teamCarDisConnection                     |
| [*TeamController*](doc/TeamController.md)                                   | [**deleteTeam**](doc/TeamController.md#deleteteam)                                             | **DELETE** /team/{teamSeq}                                 |
| [*TeamController*](doc/TeamController.md)                                   | [**insertTeam**](doc/TeamController.md#insertteam)                                             | **POST** /team                                             |
| [*TeamController*](doc/TeamController.md)                                   | [**selectTeam**](doc/TeamController.md#selectteam)                                             | **GET** /team/{teamSeq}                                    |
| [*TeamController*](doc/TeamController.md)                                   | [**selectTeamByTeamCode**](doc/TeamController.md#selectteambyteamcode)                         | **GET** /team/code/{teamCode}                              |
| [*TeamController*](doc/TeamController.md)                                   | [**selectTeamList**](doc/TeamController.md#selectteamlist)                                     | **GET** /team                                              |
| [*TeamController*](doc/TeamController.md)                                   | [**updateTeam**](doc/TeamController.md#updateteam)                                             | **PUT** /team/{teamSeq}                                    |
| [*TerminalController*](doc/TerminalController.md)                           | [**registTerminal**](doc/TerminalController.md#registterminal)                                 | **POST** /terminal/regist                                  |
| [*TerminalController*](doc/TerminalController.md)                           | [**selectTerminal**](doc/TerminalController.md#selectterminal)                                 | **GET** /terminal/detail/{seq}                             |
| [*TerminalController*](doc/TerminalController.md)                           | [**selectTerminalList**](doc/TerminalController.md#selectterminallist)                         | **GET** /terminal/list                                     |
| [*TerminalController*](doc/TerminalController.md)                           | [**updateTerminal**](doc/TerminalController.md#updateterminal)                                 | **PUT** /terminal/update/{seq}                             |
| [*TestController*](doc/TestController.md)                                   | [**callTest**](doc/TestController.md#calltest)                                                 | **GET** /test/test                                         |
| [*UserController*](doc/UserController.md)                                   | [**checkId**](doc/UserController.md#checkid)                                                   | **GET** /auth/checkId                                      |
| [*UserController*](doc/UserController.md)                                   | [**generateToken**](doc/UserController.md#generatetoken)                                       | **POST** /auth/generateToken                               | 토큰 발급   |
| [*UserController*](doc/UserController.md)                                   | [**getUserDetail**](doc/UserController.md#getuserdetail)                                       | **POST** /auth/getUserDetail                               |
| [*UserController*](doc/UserController.md)                                   | [**logOut**](doc/UserController.md#logout)                                                     | **GET** /auth/logout                                       |
| [*UserController*](doc/UserController.md)                                   | [**login**](doc/UserController.md#login)                                                       | **POST** /auth/login                                       |
| [*UserController*](doc/UserController.md)                                   | [**signin**](doc/UserController.md#signin)                                                     | **POST** /auth/signin                                      |
| [*UserController*](doc/UserController.md)                                   | [**signout**](doc/UserController.md#signout)                                                   | **GET** /auth/signout                                      |

## Documentation For Models

- [Account](doc/Account.md)
- [AccountAgreementModel](doc/AccountAgreementModel.md)
- [AccountAgreementRequest](doc/AccountAgreementRequest.md)
- [ApiResponseObject](doc/ApiResponseObject.md)
- [CarControlHistoryModel](doc/CarControlHistoryModel.md)
- [DeviceControlResultDTO](doc/DeviceControlResultDTO.md)
- [DeviceOption](doc/DeviceOption.md)
- [GrantedAuthority](doc/GrantedAuthority.md)
- [LeaderSetRequest](doc/LeaderSetRequest.md)
- [LicenseModel](doc/LicenseModel.md)
- [LicenseRequest](doc/LicenseRequest.md)
- [PaymentCardModel](doc/PaymentCardModel.md)
- [PaymentCardRequest](doc/PaymentCardRequest.md)
- [ScheduleModel](doc/ScheduleModel.md)
- [ScheduleRequest](doc/ScheduleRequest.md)
- [SelectTeamAccountConnectionRequest](doc/SelectTeamAccountConnectionRequest.md)
- [ServiceCarDetailRequest](doc/ServiceCarDetailRequest.md)
- [ServiceDetail](doc/ServiceDetail.md)
- [ShareServiceModel](doc/ShareServiceModel.md)
- [ShareServiceRequest](doc/ShareServiceRequest.md)
- [TeamAccountConnectionModel](doc/TeamAccountConnectionModel.md)
- [TeamAccountConnectionRequest](doc/TeamAccountConnectionRequest.md)
- [TeamCarConnection](doc/TeamCarConnection.md)
- [TeamModel](doc/TeamModel.md)
- [TeamRequest](doc/TeamRequest.md)
- [TerminalModel](doc/TerminalModel.md)
- [TerminalRequest](doc/TerminalRequest.md)
- [TestModel](doc/TestModel.md)
- [UserDTO](doc/UserDTO.md)
- [UserDetailsDTO](doc/UserDetailsDTO.md)
- [UserSubInfo](doc/UserSubInfo.md)

## Documentation For Authorization

Authentication schemes defined for the API: **jwtAuth**

- **Type**: HTTP basic authentication
