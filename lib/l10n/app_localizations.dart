import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ko.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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

  /// No description provided for @password.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호'**
  String get password;

  /// No description provided for @primaryAddress.
  ///
  /// In ko, this message translates to:
  /// **'기본주소'**
  String get primaryAddress;

  /// No description provided for @enter.
  ///
  /// In ko, this message translates to:
  /// **'입력 '**
  String get enter;

  /// No description provided for @finish.
  ///
  /// In ko, this message translates to:
  /// **'완료'**
  String get finish;

  /// No description provided for @driverSLicenseRegistration.
  ///
  /// In ko, this message translates to:
  /// **'운전면허 등록'**
  String get driverSLicenseRegistration;

  /// No description provided for @signIn.
  ///
  /// In ko, this message translates to:
  /// **'로그인'**
  String get signIn;

  /// No description provided for @licenseType.
  ///
  /// In ko, this message translates to:
  /// **'면허증 종류'**
  String get licenseType;

  /// No description provided for @pleaseSelectYourLicenseType.
  ///
  /// In ko, this message translates to:
  /// **'면허증 종류를 선택하세요.'**
  String get pleaseSelectYourLicenseType;

  /// No description provided for @region.
  ///
  /// In ko, this message translates to:
  /// **'지역'**
  String get region;

  /// No description provided for @eligibilityPeriodExpirationDate.
  ///
  /// In ko, this message translates to:
  /// **'적성기간 만료일'**
  String get eligibilityPeriodExpirationDate;

  /// No description provided for @licenseIssueDate.
  ///
  /// In ko, this message translates to:
  /// **'면허발급일자'**
  String get licenseIssueDate;

  /// No description provided for @registrationComplete.
  ///
  /// In ko, this message translates to:
  /// **'등록 완료'**
  String get registrationComplete;

  /// No description provided for @register.
  ///
  /// In ko, this message translates to:
  /// **'등록하기'**
  String get register;

  /// No description provided for @cardRegistration.
  ///
  /// In ko, this message translates to:
  /// **'카드 등록'**
  String get cardRegistration;

  /// No description provided for @cardNumber.
  ///
  /// In ko, this message translates to:
  /// **'카드번호'**
  String get cardNumber;

  /// No description provided for @expirationDate.
  ///
  /// In ko, this message translates to:
  /// **'유효기간'**
  String get expirationDate;

  /// No description provided for @donTHaveAnAccount.
  ///
  /// In ko, this message translates to:
  /// **'계정이 없으신가요?'**
  String get donTHaveAnAccount;

  /// No description provided for @socialSecurityNumberFirstDigit.
  ///
  /// In ko, this message translates to:
  /// **'주민등록번호 앞자리'**
  String get socialSecurityNumberFirstDigit;

  /// No description provided for @yourRegistrationHasBeenCompleted.
  ///
  /// In ko, this message translates to:
  /// **'회원가입이\n완료되었습니다.'**
  String get yourRegistrationHasBeenCompleted;

  /// No description provided for @getStarted.
  ///
  /// In ko, this message translates to:
  /// **'시작하기'**
  String get getStarted;

  /// No description provided for @nickname.
  ///
  /// In ko, this message translates to:
  /// **'닉네임'**
  String get nickname;

  /// No description provided for @schedule.
  ///
  /// In ko, this message translates to:
  /// **'일정'**
  String get schedule;

  /// No description provided for @chat.
  ///
  /// In ko, this message translates to:
  /// **'채팅'**
  String get chat;

  /// No description provided for @smartKeys.
  ///
  /// In ko, this message translates to:
  /// **'스마트키'**
  String get smartKeys;

  /// No description provided for @myPage.
  ///
  /// In ko, this message translates to:
  /// **'마이페이지'**
  String get myPage;

  /// No description provided for @signUp.
  ///
  /// In ko, this message translates to:
  /// **'회원가입'**
  String get signUp;

  /// No description provided for @teamMembers.
  ///
  /// In ko, this message translates to:
  /// **'팀원'**
  String get teamMembers;

  /// No description provided for @invite.
  ///
  /// In ko, this message translates to:
  /// **'초대하기'**
  String get invite;

  /// No description provided for @sunday.
  ///
  /// In ko, this message translates to:
  /// **'일'**
  String get sunday;

  /// No description provided for @monday.
  ///
  /// In ko, this message translates to:
  /// **'월'**
  String get monday;

  /// No description provided for @tuesday.
  ///
  /// In ko, this message translates to:
  /// **'화'**
  String get tuesday;

  /// No description provided for @wednesday.
  ///
  /// In ko, this message translates to:
  /// **'수'**
  String get wednesday;

  /// No description provided for @thursday.
  ///
  /// In ko, this message translates to:
  /// **'목'**
  String get thursday;

  /// No description provided for @acceptTerms.
  ///
  /// In ko, this message translates to:
  /// **'약관 동의'**
  String get acceptTerms;

  /// No description provided for @friday.
  ///
  /// In ko, this message translates to:
  /// **'금'**
  String get friday;

  /// No description provided for @saturday.
  ///
  /// In ko, this message translates to:
  /// **'토'**
  String get saturday;

  /// No description provided for @addAnItineraryAdd.
  ///
  /// In ko, this message translates to:
  /// **'일정 추가 +'**
  String get addAnItineraryAdd;

  /// No description provided for @roomName.
  ///
  /// In ko, this message translates to:
  /// **'방이름'**
  String get roomName;

  /// No description provided for @hello.
  ///
  /// In ko, this message translates to:
  /// **'안녕하세요'**
  String get hello;

  /// No description provided for @yesILlKeepItClean.
  ///
  /// In ko, this message translates to:
  /// **'네 깨끗하게 사용할게요'**
  String get yesILlKeepItClean;

  /// No description provided for @haveASafeTrip.
  ///
  /// In ko, this message translates to:
  /// **'조심히 다녀오세요'**
  String get haveASafeTrip;

  /// No description provided for @enterYourChat.
  ///
  /// In ko, this message translates to:
  /// **'채팅을 입력하세요.'**
  String get enterYourChat;

  /// No description provided for @status.
  ///
  /// In ko, this message translates to:
  /// **'상태'**
  String get status;

  /// No description provided for @acceptAll.
  ///
  /// In ko, this message translates to:
  /// **'전체 동의'**
  String get acceptAll;

  /// No description provided for @available.
  ///
  /// In ko, this message translates to:
  /// **'사용 가능합니다.'**
  String get available;

  /// No description provided for @openDoor.
  ///
  /// In ko, this message translates to:
  /// **'문열기'**
  String get openDoor;

  /// No description provided for @lockTheDoor.
  ///
  /// In ko, this message translates to:
  /// **'문잠금'**
  String get lockTheDoor;

  /// No description provided for @turnOnHazardLights.
  ///
  /// In ko, this message translates to:
  /// **'비상등'**
  String get turnOnHazardLights;

  /// No description provided for @honkTheHorn.
  ///
  /// In ko, this message translates to:
  /// **'경적'**
  String get honkTheHorn;

  /// No description provided for @reportAnIncident.
  ///
  /// In ko, this message translates to:
  /// **'사고 접수'**
  String get reportAnIncident;

  /// No description provided for @hongGilDongIsUsingIt.
  ///
  /// In ko, this message translates to:
  /// **'홍길동님이 사용중입니다.'**
  String get hongGilDongIsUsingIt;

  /// No description provided for @hongGilDongIsUsing.
  ///
  /// In ko, this message translates to:
  /// **'홍길동님이 사용 중 입니다.'**
  String get hongGilDongIsUsing;

  /// No description provided for @addACard.
  ///
  /// In ko, this message translates to:
  /// **'카드 추가'**
  String get addACard;

  /// No description provided for @termsOfServiceRequiredAgreement.
  ///
  /// In ko, this message translates to:
  /// **'서비스 이용약관 (필수)'**
  String get termsOfServiceRequiredAgreement;

  /// No description provided for @vehicleInformation.
  ///
  /// In ko, this message translates to:
  /// **'차량 정보'**
  String get vehicleInformation;

  /// No description provided for @morning.
  ///
  /// In ko, this message translates to:
  /// **'모닝'**
  String get morning;

  /// No description provided for @monthlyPayment.
  ///
  /// In ko, this message translates to:
  /// **'월 결제 금액'**
  String get monthlyPayment;

  /// No description provided for @subscription.
  ///
  /// In ko, this message translates to:
  /// **'구독'**
  String get subscription;

  /// No description provided for @paymentDueDate.
  ///
  /// In ko, this message translates to:
  /// **'결제 예정일'**
  String get paymentDueDate;

  /// No description provided for @canceling.
  ///
  /// In ko, this message translates to:
  /// **'해지하기'**
  String get canceling;

  /// No description provided for @invitationCode.
  ///
  /// In ko, this message translates to:
  /// **'초대 코드'**
  String get invitationCode;

  /// No description provided for @copy.
  ///
  /// In ko, this message translates to:
  /// **'복사하기'**
  String get copy;

  /// No description provided for @viewSchedule.
  ///
  /// In ko, this message translates to:
  /// **'일정 확인'**
  String get viewSchedule;

  /// No description provided for @edit.
  ///
  /// In ko, this message translates to:
  /// **'수정'**
  String get edit;

  /// No description provided for @privacyPolicyRequiredConsent.
  ///
  /// In ko, this message translates to:
  /// **'개인정보 처리방침 (필수)'**
  String get privacyPolicyRequiredConsent;

  /// No description provided for @delete.
  ///
  /// In ko, this message translates to:
  /// **'삭제'**
  String get delete;

  /// No description provided for @rentalTime.
  ///
  /// In ko, this message translates to:
  /// **'대여시간'**
  String get rentalTime;

  /// No description provided for @cancel.
  ///
  /// In ko, this message translates to:
  /// **'취소'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In ko, this message translates to:
  /// **'확인'**
  String get confirm;

  /// No description provided for @scheduleAnUnsubscribe.
  ///
  /// In ko, this message translates to:
  /// **'구독 해지 예약'**
  String get scheduleAnUnsubscribe;

  /// No description provided for @cancelingASubscription.
  ///
  /// In ko, this message translates to:
  /// **'구독 해지하기'**
  String get cancelingASubscription;

  /// No description provided for @expectedUnsubscribeDate.
  ///
  /// In ko, this message translates to:
  /// **'해지 예정일'**
  String get expectedUnsubscribeDate;

  /// No description provided for @iDonTHaveAnySubscriptionInformation.
  ///
  /// In ko, this message translates to:
  /// **'구독 정보가 없습니다.'**
  String get iDonTHaveAnySubscriptionInformation;

  /// No description provided for @digitOf13SocialSecurityNumber.
  ///
  /// In ko, this message translates to:
  /// **'주민등록번호 13자리'**
  String get digitOf13SocialSecurityNumber;

  /// No description provided for @gasoline20Percent.
  ///
  /// In ko, this message translates to:
  /// **'휘발유 20%'**
  String get gasoline20Percent;

  /// No description provided for @first2DigitsOfCardPassword.
  ///
  /// In ko, this message translates to:
  /// **'카드 비밀번호 앞 2자리'**
  String get first2DigitsOfCardPassword;

  /// No description provided for @rayGen3.
  ///
  /// In ko, this message translates to:
  /// **'레이 3세대'**
  String get rayGen3;

  /// No description provided for @locationBasedServicesTermsOfUseRequiredAgreement.
  ///
  /// In ko, this message translates to:
  /// **'위치기반서비스 이용약관 (필수)'**
  String get locationBasedServicesTermsOfUseRequiredAgreement;

  /// No description provided for @nameAreYouSureYouWantToUnsubscribe.
  ///
  /// In ko, this message translates to:
  /// **'(닉네임)님 정말로 구독을\n해지하시겠습니까?'**
  String get nameAreYouSureYouWantToUnsubscribe;

  /// No description provided for @ifYouCancelYouWillLoseAllBenefitsOfWegooliFriendsYouCanCancelYourSubscriptionWithinTheRemainingPeriod.
  ///
  /// In ko, this message translates to:
  /// **'해지 시 위굴리 프렌즈의 모든 혜택을 잃게 됩니다. 남은 기간 내에 해지를 취소하실 수 있습니다.'**
  String get ifYouCancelYouWillLoseAllBenefitsOfWegooliFriendsYouCanCancelYourSubscriptionWithinTheRemainingPeriod;

  /// No description provided for @consentToCollectionAndUseOfVehicleLocationInformationRequired.
  ///
  /// In ko, this message translates to:
  /// **'차량 위치정보의 수집 이용 제공 동의 (필수)'**
  String get consentToCollectionAndUseOfVehicleLocationInformationRequired;

  /// No description provided for @collectionAndUseOfPersonalInformationForMarketingPurposesOptional.
  ///
  /// In ko, this message translates to:
  /// **'마케팅 목적 개인정보 수집/이용 (선택)'**
  String get collectionAndUseOfPersonalInformationForMarketingPurposesOptional;

  /// No description provided for @pleaseEnterYourLicenseNumberNumbersOnly.
  ///
  /// In ko, this message translates to:
  /// **'면허증번호(숫자만)를 입력해주세요.'**
  String get pleaseEnterYourLicenseNumberNumbersOnly;

  /// No description provided for @pleaseEnterYourAptitudePeriodTestExpirationDateOnlyNumbers.
  ///
  /// In ko, this message translates to:
  /// **'적성기간 만료일(숫자만)을 입력해주세요.'**
  String get pleaseEnterYourAptitudePeriodTestExpirationDateOnlyNumbers;

  /// No description provided for @pleaseEnterYourLicenseIssueDateOnlyNumbers.
  ///
  /// In ko, this message translates to:
  /// **'면허발급일자(숫자만)를 입력해주세요.'**
  String get pleaseEnterYourLicenseIssueDateOnlyNumbers;

  /// No description provided for @iLlBeUsingTheVehicleThisWeekendDoesAnyoneElseNeedIt.
  ///
  /// In ko, this message translates to:
  /// **'이번 주 주말에 차량 사용하려하는데\n필요하신 분 계신가요?'**
  String get iLlBeUsingTheVehicleThisWeekendDoesAnyoneElseNeedIt;

  /// No description provided for @iDonTNeedToUseIt.
  ///
  /// In ko, this message translates to:
  /// **'저는 사용 할 필요 없습니다.'**
  String get iDonTNeedToUseIt;

  /// No description provided for @iThinkILlUseItNextWeekend.
  ///
  /// In ko, this message translates to:
  /// **'저는 다음주 주말에 쓸거 같아요'**
  String get iThinkILlUseItNextWeekend;

  /// No description provided for @subscriptionsWillBeCanceledAfterAugust42023.
  ///
  /// In ko, this message translates to:
  /// **'2023년 8월 4일 이후에 구독이 해지됩니다.'**
  String get subscriptionsWillBeCanceledAfterAugust42023;

  /// No description provided for @subscriptionsAreRestrictedToThoseUnderTheAgeOf26.
  ///
  /// In ko, this message translates to:
  /// **'만 26세 미만은 가입이 제한됩니다.'**
  String get subscriptionsAreRestrictedToThoseUnderTheAgeOf26;

  /// No description provided for @msgCarStateInformation.
  ///
  /// In ko, this message translates to:
  /// **'자동차 상태 정보'**
  String get msgCarStateInformation;

  /// No description provided for @msgCarStatusInformation.
  ///
  /// In ko, this message translates to:
  /// **'차량 상태 정보'**
  String get msgCarStatusInformation;

  /// No description provided for @msgLoginRegisterCreditCard.
  ///
  /// In ko, this message translates to:
  /// **'등록 신용카드'**
  String get msgLoginRegisterCreditCard;

  /// No description provided for @msgLoginRegisterLicensePage.
  ///
  /// In ko, this message translates to:
  /// **'등록 라이센스 페이지'**
  String get msgLoginRegisterLicensePage;

  /// No description provided for @msgLoginRegisterSuccessPage.
  ///
  /// In ko, this message translates to:
  /// **'등록 성공 페이지'**
  String get msgLoginRegisterSuccessPage;

  /// No description provided for @msgLoginRegisterZipCode.
  ///
  /// In ko, this message translates to:
  /// **'등록 우편번호/주소 입력'**
  String get msgLoginRegisterZipCode;

  /// No description provided for @msgLoginValidatePhoneAuth.
  ///
  /// In ko, this message translates to:
  /// **'전화 인증 로그인'**
  String get msgLoginValidatePhoneAuth;

  /// No description provided for @msgLoginWithIdAndPassword.
  ///
  /// In ko, this message translates to:
  /// **'로그인 ID 및 비밀번호 로그인'**
  String get msgLoginWithIdAndPassword;

  /// No description provided for @msgRegisteredCreditCardList.
  ///
  /// In ko, this message translates to:
  /// **'등록된 신용카드 목록'**
  String get msgRegisteredCreditCardList;

  /// No description provided for @msgReservationDatetimePicker.
  ///
  /// In ko, this message translates to:
  /// **'예약 날짜 선택기'**
  String get msgReservationDatetimePicker;

  /// No description provided for @msgReservationsCheckingPage.
  ///
  /// In ko, this message translates to:
  /// **'예약 확인 페이지'**
  String get msgReservationsCheckingPage;

  /// No description provided for @msgSendingCrewInvitation.
  ///
  /// In ko, this message translates to:
  /// **'팀 초대 보내기'**
  String get msgSendingCrewInvitation;

  /// No description provided for @msgSignupAcceptTerms.
  ///
  /// In ko, this message translates to:
  /// **'동의 약관 보기'**
  String get msgSignupAcceptTerms;

  /// No description provided for @msgSignupRegisterCreditCard.
  ///
  /// In ko, this message translates to:
  /// **'등록 신용카드'**
  String get msgSignupRegisterCreditCard;

  /// No description provided for @msgSmartKeyNotAvailable.
  ///
  /// In ko, this message translates to:
  /// **'스마트 키 (사용불가)'**
  String get msgSmartKeyNotAvailable;

  /// No description provided for @msgSplashLoadingScreen.
  ///
  /// In ko, this message translates to:
  /// **'스플래시 화면'**
  String get msgSplashLoadingScreen;

  /// No description provided for @msgSubscriptionInfoNoService.
  ///
  /// In ko, this message translates to:
  /// **'서비스 정보 없음'**
  String get msgSubscriptionInfoNoService;

  /// No description provided for @msgTeamScheduleShare.
  ///
  /// In ko, this message translates to:
  /// **'팀 스케줄 공유'**
  String get msgTeamScheduleShare;

  /// No description provided for @msgUnsubscriptionConfirm.
  ///
  /// In ko, this message translates to:
  /// **'구독 취소 확인'**
  String get msgUnsubscriptionConfirm;

  /// No description provided for @msgUnsubscriptionConfirmWarn.
  ///
  /// In ko, this message translates to:
  /// **'구독 취소 확인 경고'**
  String get msgUnsubscriptionConfirmWarn;

  /// No description provided for @msgUpcomingUnsubscriptionInfo.
  ///
  /// In ko, this message translates to:
  /// **'예정된 구독 취소 정보'**
  String get msgUpcomingUnsubscriptionInfo;

  /// No description provided for @msgUpcomingUnsubscriptionView.
  ///
  /// In ko, this message translates to:
  /// **'예정된 구독 취소 보기'**
  String get msgUpcomingUnsubscriptionView;

  /// No description provided for @appNavigation.
  ///
  /// In ko, this message translates to:
  /// **'앱 네비게이션'**
  String get appNavigation;

  /// No description provided for @checkYourAppUI.
  ///
  /// In ko, this message translates to:
  /// **'아래 데모 화면에서 앱의 UI를 확인하세요.'**
  String get checkYourAppUI;

  /// No description provided for @networkError.
  ///
  /// In ko, this message translates to:
  /// **'네트워크 에러'**
  String get networkError;

  /// No description provided for @somethingWentWrong.
  ///
  /// In ko, this message translates to:
  /// **'오류가 발생했습니다.'**
  String get somethingWentWrong;

  /// No description provided for @subscriptionInformation.
  ///
  /// In ko, this message translates to:
  /// **'구독 정보'**
  String get subscriptionInformation;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ko': return AppLocalizationsKo();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
