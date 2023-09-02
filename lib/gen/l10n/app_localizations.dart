// 🎯 Dart imports:
import 'dart:async';

// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

// 📦 Package imports:
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

// 🌎 Project imports:
import 'app_localizations_ko.dart';

/// Callers can lookup localized strings with an instance of Localized
/// returned by `Localized.of(context)`.
///
/// Applications need to include `Localized.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: Localized.localizationsDelegates,
///   supportedLocales: Localized.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the Localized.supportedLocales
/// property.
abstract class Localized {
  Localized(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Localized? of(BuildContext context) {
    return Localizations.of<Localized>(context, Localized);
  }

  static const LocalizationsDelegate<Localized> delegate = _LocalizedDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ko')
  ];

  /// 모든 약관에 동의합니다.
  ///
  /// In ko, this message translates to:
  /// **'전체 동의'**
  String get acceptAll;

  /// 상기 이용 약관에 동의합니다.
  ///
  /// In ko, this message translates to:
  /// **'약관 동의'**
  String get acceptTerms;

  /// 유저 등록 정보 제공 요청 후 소셜로그인 이후 동의한 약관 표시
  ///
  /// In ko, this message translates to:
  /// **'동의 완료'**
  String get acceptanceComplete;

  /// 결제를 위한 개인 신용카드 등록
  ///
  /// In ko, this message translates to:
  /// **'카드 추가'**
  String get addACard;

  /// 캘린더 하단 일정 추가 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'일정 추가 +'**
  String get addAnItineraryAdd;

  /// The question at the bottom to confirm 'Warning'.$nickname is user's nickname or name
  ///
  /// In ko, this message translates to:
  /// **'{nickname}님 정말로 구독을\n해지하시겠습니까?'**
  String areYouSureYouWantToUnsubscribe(String nickname);

  /// 스마트키 화면에서 현재 차량이 이용가능한 상태임을 알리는 텍스트
  ///
  /// In ko, this message translates to:
  /// **'사용 가능합니다.'**
  String get available;

  /// 창 닫기, 행동 취소, 비활성화 등의 상황에 쓰임
  ///
  /// In ko, this message translates to:
  /// **'취소'**
  String get cancel;

  /// 팀의 서비스 구독 상태를 해지하며 다음 결제일까지만 서비스를 이용할 것입니다.
  ///
  /// In ko, this message translates to:
  /// **'구독 해지하기'**
  String get cancelingASubscription;

  /// 신용카드 결제를 위한 필수 입력
  ///
  /// In ko, this message translates to:
  /// **'카드번호'**
  String get cardNumber;

  /// 신용카드 자동결제 등록
  ///
  /// In ko, this message translates to:
  /// **'카드 등록'**
  String get cardRegistration;

  /// 서비스 이용 중인 차량에 대한 정보 (주유 상태, 이용 중 여부, 차종 등)
  ///
  /// In ko, this message translates to:
  /// **'차량 정보'**
  String get carInfo;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'자동차 대여약관 (필수)'**
  String get carRentalTermsAndConditionsRequired;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 차량 상세정보'**
  String get carStatusInformation;

  /// 개인정보 변경 스크린 (주소, 전화번호, 이메일 등)
  ///
  /// In ko, this message translates to:
  /// **'개인정보 변경하기'**
  String get changeYourPersonalInformation;

  /// 차량 공유 유저 간 채팅하기
  ///
  /// In ko, this message translates to:
  /// **'채팅'**
  String get chat;

  /// 디버그를 위한 게이트웨이 스크린 안내 문구
  ///
  /// In ko, this message translates to:
  /// **'아래 데모 화면에서 앱의 UI를 확인하세요.'**
  String get checkYourAppUI;

  /// 알겠습니다/승인합니다/동의합니다/확인했습니다.
  ///
  /// In ko, this message translates to:
  /// **'확인'**
  String get confirm;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'차량 위치정보의 수집 이용 제공 동의 (필수)'**
  String get consentToCollectionAndUseOfVehicleLocationInfo;

  /// 초대 코드 복사하기 버튼
  ///
  /// In ko, this message translates to:
  /// **'복사하기'**
  String get copy;

  /// 일정 등 삭제를 위한 버튼
  ///
  /// In ko, this message translates to:
  /// **'삭제'**
  String get delete;

  ///
  ///
  /// In ko, this message translates to:
  /// **'주민등록번호 13자리'**
  String get digitOf13SocialSecurityNumber;

  ///
  ///
  /// In ko, this message translates to:
  /// **'운전면허 등록'**
  String get driverSLicenseRegistration;

  /// 메세지, 일정 내용, 개인정보 등 수정
  ///
  /// In ko, this message translates to:
  /// **'수정'**
  String get edit;

  /// 운전면허 적성검사 유효기간 만료일
  ///
  /// In ko, this message translates to:
  /// **'적성기간 만료일'**
  String get eligibilityPeriodExpirationDate;

  /// 20240912와 같은 형식으로 적성기간 연월일 입력 요구.
  ///
  /// In ko, this message translates to:
  /// **'적성기간 만료일(숫자만)을 입력해주세요.'**
  String get enterYourAptitudePeriodTestExpirationDate;

  /// 휴대폰 인증코드 입력 화면 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'인증 번호를 입력하세요.'**
  String get enterYourVerificationNumber;

  /// 구독 해지 신청 후 다음 결제 예정일까지 남은 기간 안내.
  ///
  /// In ko, this message translates to:
  /// **'해지 예정일'**
  String get expectedUnsubscribeDate;

  /// 면허나 승인, 인가 등의 유효함이 끝나는 날짜
  ///
  /// In ko, this message translates to:
  /// **'유효기간'**
  String get expirationDate;

  /// 토스페이에 보낼 데이터 중 신용카드 비밀번호 앞 2자리
  ///
  /// In ko, this message translates to:
  /// **'카드 비밀번호 앞 2자리'**
  String get first2DigitsOfCardPassword;

  /// 원활한 이용을 위해 남은 연료의 양 표기 및 기록
  ///
  /// In ko, this message translates to:
  /// **'{oil} {remain}'**
  String remainingFuelLevel(String oil, String remain);

  /// 서비스 첫 이용 시 유저 행동 유도
  ///
  /// In ko, this message translates to:
  /// **'시작하기'**
  String get getStarted;

  /// 구독 해지 신청 후 다음 결제일이 지난 사용자 또는 구독을 신청한 적 없는 팀에 소속된 유저를 위한 문구
  ///
  /// In ko, this message translates to:
  /// **'구독 정보가 없습니다.'**
  String get haveNoAnySubscriptionInfo;

  /// 스마트키 화면 중 팀원이 이용 중인 차량에서 위험한 접근 방지.
  ///
  /// In ko, this message translates to:
  /// **'홍길동님이 사용중입니다.'**
  String get hongGilDongIsUsingIt;

  /// 스마트키 버튼 중 하나.
  ///
  /// In ko, this message translates to:
  /// **'경적'**
  String get honkTheHorn;

  /// GUID 형식의 초대코드 생성 및 승인
  ///
  /// In ko, this message translates to:
  /// **'초대 코드'**
  String get invitationCode;

  /// 초대 코드 발송 및 다이나믹 링크 공유하기
  ///
  /// In ko, this message translates to:
  /// **'초대하기'**
  String get invite;

  /// 운전면허 발급된 날짜
  ///
  /// In ko, this message translates to:
  /// **'면허발급일자'**
  String get licenseIssueDate;

  /// 1종 보통, 2종 보통 등
  ///
  /// In ko, this message translates to:
  /// **'면허증 종류'**
  String get licenseType;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'위치기반서비스 이용약관 (필수)'**
  String get locationBasedServicesTerms;

  /// 스마트키 버튼 중 하나.
  ///
  /// In ko, this message translates to:
  /// **'문잠금'**
  String get lockTheDoor;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 신용카드 등록'**
  String get loginRegisterCreditCard;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 운전면허증 등록'**
  String get loginRegisterLicensePage;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 입력/가입 성공'**
  String get loginRegisterSuccessPage;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 주소 검색/등록'**
  String get loginRegisterZipCode;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 휴대 전화 인증'**
  String get loginValidatePhoneAuth;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] ID/PASSWORD 로그인'**
  String get loginWithIdAndPassword;

  /// 사용자가 서비스 이용을 위해 매월 지불하는 요금
  ///
  /// In ko, this message translates to:
  /// **'월 결제 금액'**
  String get monthlyPayment;

  /// 구독 정보, 사용자 정보, 앱 내 설정, 알림 설정, 탈퇴 신청 등 진입할 수 있는 페이지
  ///
  /// In ko, this message translates to:
  /// **'마이페이지'**
  String get myPage;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 마이페이지'**
  String get myProfileScreen;

  /// 별명 또는 사용자 정의 닉네임
  ///
  /// In ko, this message translates to:
  /// **'닉네임'**
  String get nickname;

  /// 스마트키 버튼 중 하나.
  ///
  /// In ko, this message translates to:
  /// **'문열기'**
  String get openDoor;

  /// 가입 또는 사용자 정보 변경 화면의 문구
  ///
  /// In ko, this message translates to:
  /// **'비밀번호'**
  String get password;

  /// 다음 구독 서비스 결제 예정일
  ///
  /// In ko, this message translates to:
  /// **'결제 예정일'**
  String get paymentDueDate;

  /// 면허증이 발급된 날짜를 입력받는 인풋의 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'면허발급일자(숫자만)를 입력해주세요.'**
  String get pleaseEnterYourLicenseIssueDateOnlyNumbers;

  /// 면허증의 고유번호를 입력받는 인풋의 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'면허증번호(숫자만)를 입력해주세요.'**
  String get pleaseEnterYourLicenseNumbersOnly;

  /// 면허종류 중 하나를 선택하는 드롭다운의 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'면허증 종류를 선택하세요.'**
  String get pleaseSelectYourLicenseType;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'개인정보 처리방침 (필수)'**
  String get privacyPolicyRequiredConsent;

  /// 차량 모델명.
  ///
  /// In ko, this message translates to:
  /// **'레이 3세대'**
  String get rayGen3;

  /// 운전면허증 또는 사용자 서비스 이용 지역 표기 텍스트
  ///
  /// In ko, this message translates to:
  /// **'지역'**
  String get region;

  /// 개인 신용카드/ 운전면허증 등록하기 위한 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'등록하기'**
  String get register;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 카드 관리 페이지'**
  String get registeredCreditCardList;

  /// 개인 신용카드/ 운전면허증 등록 완료 안내 텍스트
  ///
  /// In ko, this message translates to:
  /// **'등록 완료'**
  String get registrationComplete;

  /// 차량 대여 시간 경과
  ///
  /// In ko, this message translates to:
  /// **'대여시간'**
  String get rentalTime;

  /// 스마트키 화면 중 플로팅 액션 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'사고 접수'**
  String get reportAnIncident;

  /// [BottomSheet]는 원활한 개발을 위한 게이트웨이 바텀시트 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[BottomSheet] 예약 날짜 선택기'**
  String get reservationDatetimePicker;

  /// [PopupDialog]는 원활한 개발을 위한 게이트웨이 모달 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[PopupDialog] 예약 확인 페이지'**
  String get reservationsCheckingPage;

  /// 사용자 개인정보 설정, 앱 설정 등에 사용
  ///
  /// In ko, this message translates to:
  /// **'설정'**
  String get settings;

  /// 캘린더 상단 제목 텍스트
  ///
  /// In ko, this message translates to:
  /// **'일정'**
  String get schedule;

  /// 서비스 이용 후 다음 결제 예정일에 자동으로 구독 해지하기
  ///
  /// In ko, this message translates to:
  /// **'구독 해지 예약'**
  String get scheduleAnUnsubscribe;

  /// [PopupDialog]는 원활한 개발을 위한 게이트웨이 모달 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[PopupDialog] 팀 초대하기'**
  String get sendingCrewInvitation;

  /// 서비스에 접속하기
  ///
  /// In ko, this message translates to:
  /// **'로그인'**
  String get signIn;

  /// 서비스에 가입하기
  ///
  /// In ko, this message translates to:
  /// **'회원가입'**
  String get signUp;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 이용 약관 동의'**
  String get signupAcceptTerms;

  /// 서비스 이용 중 차량 제어를 위한 스마트키
  ///
  /// In ko, this message translates to:
  /// **'스마트키'**
  String get smartKey;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 스마트키 (사용가능)'**
  String get smartKeyAvailable;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 스마트키 (사용중)'**
  String get smartKeyNotAvailable;

  /// 주민등록번호 앞자리 입력 헬프 텍스트 6자리 YYMMDD
  ///
  /// In ko, this message translates to:
  /// **'주민등록번호 앞자리'**
  String get socialSecurityNumberFirstDigit;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 스플래시 화면'**
  String get splashLoadingScreen;

  /// 현재 상태 표시 텍스트
  ///
  /// In ko, this message translates to:
  /// **'상태'**
  String get status;

  /// 구독 서비스 관련 텍스트
  ///
  /// In ko, this message translates to:
  /// **'구독'**
  String get subscription;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 서비스 정보 없음'**
  String get subscriptionInfoNoService;

  /// 사용 중/ 사용 예정 구독 서비스에 대한 정보
  ///
  /// In ko, this message translates to:
  /// **'구독 정보'**
  String get subscriptionInformation;

  /// 정책에 의해 만 26세 미만의 이용자에게 서비스 가입이 제한됨
  ///
  /// In ko, this message translates to:
  /// **'· 만 26세 미만은 가입이 제한됩니다.'**
  String get subscriptionsAreRestrictedToThoseUnderTheAgeOf26;

  /// 구독 해지 신청 후 남은 이용기간 안내 텍스트
  ///
  /// In ko, this message translates to:
  /// **'{y}년 {m}월 {d}일 이후에 구독이 해지됩니다.'**
  String subscriptionsWillBeCanceledAfter(int y, int m, int d);

  /// 서비스를 함께 공유하는 팀원 간 호칭
  ///
  /// In ko, this message translates to:
  /// **'팀원'**
  String get teamMembers;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 팀 스케줄 공유'**
  String get teamScheduleShare;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'서비스 이용약관 (필수)'**
  String get termsOfServiceRequiredAgreement;

  /// 스마트키 버튼 중 하나. 특수 상황에 사용.
  ///
  /// In ko, this message translates to:
  /// **'비상등'**
  String get turnOnHazardLights;

  /// [PopupDialog]는 원활한 개발을 위한 게이트웨이 모달 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[PopupDialog] 구독 해지'**
  String get unsubscriptionConfirm;

  /// [PopupDialog]는 원활한 개발을 위한 게이트웨이 모달 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[PopupDialog] 구독 취소 확인 경고'**
  String get unsubscriptionConfirmWarn;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 예정된 구독 취소 정보'**
  String get upcomingUnsubscriptionInfo;

  /// [Page]는 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[Page] 예정된 구독 취소 보기'**
  String get upcomingUnsubscriptionView;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'마케팅 목적 개인정보 수집/이용 (선택)'**
  String get useOfPersonalInfoForMarketing;

  /// 차량 이용 일정 확인하기
  ///
  /// In ko, this message translates to:
  /// **'일정 확인'**
  String get viewSchedules;

  /// 해지 모달 안내 문구
  ///
  /// In ko, this message translates to:
  /// **'해지 시 위굴리 프렌즈의 모든 혜택을 잃게 됩니다. 남은 기간 내에 해지를 취소하실 수 있습니다.'**
  String get youCanCancelAnytime;

  /// 로그인 정보를 가지고 있지 않은 사용자에게 보여줄 문구
  ///
  /// In ko, this message translates to:
  /// **'계정이 없으신가요?'**
  String get youHaveNoAccount;

  /// 가입 프로세스 최종 완료 문구
  ///
  /// In ko, this message translates to:
  /// **'회원가입이\n완료되었습니다.'**
  String get yourRegistrationHasBeenCompleted;
}

class _LocalizedDelegate extends LocalizationsDelegate<Localized> {
  const _LocalizedDelegate();

  @override
  Future<Localized> load(Locale locale) {
    return SynchronousFuture<Localized>(lookupLocalized(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_LocalizedDelegate old) => false;
}

Localized lookupLocalized(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ko': return LocalizedKo();
  }

  throw FlutterError(
    'Localized.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
