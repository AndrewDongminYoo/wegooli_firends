import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

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
  Localized(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static Localized of(BuildContext context) {
    return Localizations.of<Localized>(context, Localized)!;
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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('ko')];

  /// No description provided for @accept.
  ///
  /// In ko, this message translates to:
  /// **'동의'**
  String get accept;

  /// 모든 약관에 동의합니다.
  ///
  /// In ko, this message translates to:
  /// **'전체 동의'**
  String get acceptAll;

  /// 유저 등록 정보 제공 요청 후 소셜로그인 이후 동의한 약관 표시
  ///
  /// In ko, this message translates to:
  /// **'동의합니다'**
  String get acceptanceComplete;

  /// 상기 이용 약관에 동의합니다.
  ///
  /// In ko, this message translates to:
  /// **'이용약관에 동의해주세요'**
  String get acceptTerms;

  /// 캘린더 하단 일정 추가 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'일정 추가 +'**
  String get addAnSchedule;

  /// No description provided for @addAppointment.
  ///
  /// In ko, this message translates to:
  /// **'일정 추가'**
  String get addAppointment;

  /// No description provided for @addressSearch.
  ///
  /// In ko, this message translates to:
  /// **'주소 검색'**
  String get addressSearch;

  /// No description provided for @all.
  ///
  /// In ko, this message translates to:
  /// **'전체'**
  String get all;

  /// No description provided for @alphanumericSpecialCharacterCombination612Characters.
  ///
  /// In ko, this message translates to:
  /// **'영문/숫자/특수문자 조합 (6~12자)'**
  String get alphanumericSpecialCharacterCombination612Characters;

  /// 스마트키 화면 중 팀원이 이용 중인 차량에서 위험한 접근 방지.
  ///
  /// In ko, this message translates to:
  /// **'{username}님이 사용중입니다.'**
  String anotherMemberUsingTheCar(String username);

  /// No description provided for @answer.
  ///
  /// In ko, this message translates to:
  /// **'답변'**
  String get answer;

  /// No description provided for @answerComplete.
  ///
  /// In ko, this message translates to:
  /// **'답변 완료'**
  String get answerComplete;

  /// No description provided for @appVersion.
  ///
  /// In ko, this message translates to:
  /// **'앱 버전'**
  String get appVersion;

  /// The question at the bottom to confirm 'Warning'.$nickname is user's nickname or name
  ///
  /// In ko, this message translates to:
  /// **'{nickname}님 정말로 구독을\n해지하시겠습니까?'**
  String areYouSureYouWantToUnsubscribe(String nickname);

  /// No description provided for @attachAnImage.
  ///
  /// In ko, this message translates to:
  /// **'이미지 첨부'**
  String get attachAnImage;

  /// No description provided for @authenticateYourself.
  ///
  /// In ko, this message translates to:
  /// **'본인 인증'**
  String get authenticateYourself;

  /// No description provided for @authenticationComplete.
  ///
  /// In ko, this message translates to:
  /// **'인증 완료'**
  String get authenticationComplete;

  /// 스마트키 화면에서 현재 차량이 이용가능한 상태임을 알리는 텍스트
  ///
  /// In ko, this message translates to:
  /// **'사용 가능합니다.'**
  String get available;

  /// No description provided for @basicInfo.
  ///
  /// In ko, this message translates to:
  /// **'기본 정보'**
  String get basicInfo;

  /// No description provided for @batteryStatus.
  ///
  /// In ko, this message translates to:
  /// **'배터리 상태'**
  String get batteryStatus;

  /// No description provided for @becomeALeader.
  ///
  /// In ko, this message translates to:
  /// **'리더 신청'**
  String get becomeALeader;

  /// No description provided for @callAnAgent.
  ///
  /// In ko, this message translates to:
  /// **'상담원에게 전화 연결'**
  String get callAnAgent;

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

  /// 결제를 위한 신용카드 추가
  ///
  /// In ko, this message translates to:
  /// **'카드 추가'**
  String get cardAddition;

  /// 결제를 위한 신용카드 수정
  ///
  /// In ko, this message translates to:
  /// **'카드 수정'**
  String get cardModification;

  /// 신용카드 결제를 위한 필수 입력
  ///
  /// In ko, this message translates to:
  /// **'카드번호'**
  String get cardNumber;

  /// No description provided for @cardPasswordNumDigits.
  ///
  /// In ko, this message translates to:
  /// **'카드 비밀번호 앞 {num}자리'**
  String cardPasswordNumDigits(num num);

  /// 결제를 위한 신용카드 등록
  ///
  /// In ko, this message translates to:
  /// **'카드 등록'**
  String get cardRegistration;

  /// 서비스 이용 중인 차량에 대한 정보 (주유 상태, 이용 중 여부, 차종 등)
  ///
  /// In ko, this message translates to:
  /// **'차량 정보'**
  String get carInfo;

  /// 차량 모델명.
  ///
  /// In ko, this message translates to:
  /// **'모닝'**
  String get carMorning;

  /// No description provided for @carRayGen3.
  ///
  /// In ko, this message translates to:
  /// **'레이 3세대'**
  String get carRayGen3;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'자동차 대여약관 (필수)'**
  String get carRentalTermsAndConditionsRequired;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'차량 상세정보'**
  String get carStatusInformation;

  /// 차량의 종류
  ///
  /// In ko, this message translates to:
  /// **'차종'**
  String get carType;

  /// 사용자 휴대폰 디바이스 정보
  ///
  /// In ko, this message translates to:
  /// **'휴대폰 정보'**
  String get cellPhoneInformation;

  /// No description provided for @cellPhoneNumber.
  ///
  /// In ko, this message translates to:
  /// **'휴대전화 번호'**
  String get cellPhoneNumber;

  /// No description provided for @change.
  ///
  /// In ko, this message translates to:
  /// **'변경하기'**
  String get change;

  /// No description provided for @changeNumber.
  ///
  /// In ko, this message translates to:
  /// **'번호 변경'**
  String get changeNumber;

  /// No description provided for @changePassword.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호 변경'**
  String get changePassword;

  /// No description provided for @changeProfile.
  ///
  /// In ko, this message translates to:
  /// **'프로필 변경'**
  String get changeProfile;

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

  /// No description provided for @collectionUseOfPersonalInformationForMarketingPurposes.
  ///
  /// In ko, this message translates to:
  /// **'마케팅 목적 개인정보 수집/이용'**
  String get collectionUseOfPersonalInformationForMarketingPurposes;

  /// No description provided for @completeRegistration.
  ///
  /// In ko, this message translates to:
  /// **'회원가입 완료'**
  String get completeRegistration;

  /// 알겠습니다/승인합니다/동의합니다/확인했습니다.
  ///
  /// In ko, this message translates to:
  /// **'확인'**
  String get confirm;

  /// 비밀번호 오입력 방지를 위한 비밀번호 텍스트 반복 입력
  ///
  /// In ko, this message translates to:
  /// **'비밀번호 확인'**
  String get confirmPassword;

  /// No description provided for @consentToCollectAndUseVehicleLocationInformation.
  ///
  /// In ko, this message translates to:
  /// **'차량 위치정보의 수집 이용 제공 동의'**
  String get consentToCollectAndUseVehicleLocationInformation;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'차량 위치정보의 수집 이용 제공 동의 (필수)'**
  String get consentToCollectionAndUseOfVehicleLocationInfo;

  /// No description provided for @consentToReceiveAppPushes.
  ///
  /// In ko, this message translates to:
  /// **'앱 푸시 수신 동의'**
  String get consentToReceiveAppPushes;

  /// No description provided for @consentToReceiveEmails.
  ///
  /// In ko, this message translates to:
  /// **'메일 수신 동의'**
  String get consentToReceiveEmails;

  /// No description provided for @consentToReceiveSms.
  ///
  /// In ko, this message translates to:
  /// **'SMS 수신 동의'**
  String get consentToReceiveSms;

  /// No description provided for @contactUs.
  ///
  /// In ko, this message translates to:
  /// **'문의하기'**
  String get contactUs;

  /// No description provided for @contents.
  ///
  /// In ko, this message translates to:
  /// **'내용'**
  String get contents;

  /// 초대 코드 복사하기 버튼
  ///
  /// In ko, this message translates to:
  /// **'복사하기'**
  String get copy;

  /// No description provided for @corporateCard.
  ///
  /// In ko, this message translates to:
  /// **'법인카드'**
  String get corporateCard;

  /// No description provided for @coupon.
  ///
  /// In ko, this message translates to:
  /// **'coupon'**
  String get coupon;

  /// No description provided for @currentNickname.
  ///
  /// In ko, this message translates to:
  /// **'현재닉네임'**
  String get currentNickname;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'팀 채팅하기'**
  String get dashChatWithFriendsPage;

  ///
  ///
  /// In ko, this message translates to:
  /// **'삭제'**
  String get delete;

  /// No description provided for @detailedAddressSuchAsCityLakeEtc.
  ///
  /// In ko, this message translates to:
  /// **'동·호수 등 상세 주소'**
  String get detailedAddressSuchAsCityLakeEtc;

  /// No description provided for @details.
  ///
  /// In ko, this message translates to:
  /// **'상세정보'**
  String get details;

  /// 주민등록번호 13자리 입력 헬프 텍스트 13자리 yymmdd-xxxxxxx
  ///
  /// In ko, this message translates to:
  /// **'주민등록번호 13자리'**
  String get digitOf13SocialSecurityNumber;

  /// No description provided for @driverSLicense.
  ///
  /// In ko, this message translates to:
  /// **'자동차 운전면허증'**
  String get driverSLicense;

  /// 개인 사용자 운전면허 촬영 등록하기
  ///
  /// In ko, this message translates to:
  /// **'운전면허 등록'**
  String get driverSLicenseRegistration;

  /// No description provided for @dropOffTime.
  ///
  /// In ko, this message translates to:
  /// **'반납시간'**
  String get dropOffTime;

  /// 메세지, 일정 내용, 개인정보 등 수정
  ///
  /// In ko, this message translates to:
  /// **'수정'**
  String get edit;

  /// 운전면허 적성검사 유효기간 만료일
  ///
  /// In ko, this message translates to:
  /// **'적성기간 만료일'**
  String get eligibilityPeriodTestExpirationDate;

  /// No description provided for @emailId.
  ///
  /// In ko, this message translates to:
  /// **'이메일 아이디'**
  String get emailId;

  /// 자동차 엔진오일 교체 및 엔진 상태 점검일
  ///
  /// In ko, this message translates to:
  /// **'엔진오일 점검일'**
  String get engineOilChangedDate;

  /// No description provided for @englishNumberCombinationNumNumCharacters.
  ///
  /// In ko, this message translates to:
  /// **'영문, 숫자 조합 ({min}~{max}자)'**
  String englishNumberCombinationNumNumCharacters(num max, num min);

  /// No description provided for @englishNumberSpecialCharacterCombinationNumNumCharacters.
  ///
  /// In ko, this message translates to:
  /// **'영문/숫자/특수문자 조합 ({min}~{max}자)'**
  String englishNumberSpecialCharacterCombinationNumNumCharacters(
      num max, num min);

  /// No description provided for @enter.
  ///
  /// In ko, this message translates to:
  /// **'입력'**
  String get enter;

  /// 팀원 닉네임을 입력하는 인풋 비어있을 시 나타나는 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'닉네임 입력 (10자 이내)'**
  String get enterANicknameUpTo10Characters;

  /// No description provided for @enterANicknameWithinNumCharacters.
  ///
  /// In ko, this message translates to:
  /// **'닉네임 입력 ({max}자 이내)'**
  String enterANicknameWithinNumCharacters(num max);

  /// 사용자의 이메일 주소를 입력받는 인풋(가입 이후 변경 가능)
  ///
  /// In ko, this message translates to:
  /// **'이메일 주소 입력'**
  String get enterEmailAddress;

  /// No description provided for @enterInvitationCode.
  ///
  /// In ko, this message translates to:
  /// **'초대코드 입력'**
  String get enterInvitationCode;

  /// No description provided for @enterPassword.
  ///
  /// In ko, this message translates to:
  /// **'비밀번호 입력'**
  String get enterPassword;

  /// No description provided for @enterVerificationNumber.
  ///
  /// In ko, this message translates to:
  /// **'인증번호 입력'**
  String get enterVerificationNumber;

  /// 20240912와 같은 형식으로 적성기간 연월일 입력 요구.
  ///
  /// In ko, this message translates to:
  /// **'적성기간 만료일(숫자만)을 입력해주세요.'**
  String get enterYourEligibilityPeriodTestExpirationDate;

  /// No description provided for @enterYourEmail.
  ///
  /// In ko, this message translates to:
  /// **'이메일 입력'**
  String get enterYourEmail;

  /// No description provided for @enterYourInformation.
  ///
  /// In ko, this message translates to:
  /// **'정보 입력'**
  String get enterYourInformation;

  /// 팀원 초대 코드 입력 받는 부분 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'리더에게 받은 초대코드를 입력하세요.'**
  String get enterYourInvitationCode;

  /// 휴대폰 인증코드 입력 화면 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'인증 번호를 입력하세요.'**
  String get enterYourVerificationNumber;

  /// No description provided for @expand.
  ///
  /// In ko, this message translates to:
  /// **'펼치기'**
  String get expand;

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

  /// 모든 입력을 완료하였음을 확인함
  ///
  /// In ko, this message translates to:
  /// **'입력 완료'**
  String get filledIn;

  /// No description provided for @findARoom.
  ///
  /// In ko, this message translates to:
  /// **'방 찾기'**
  String get findARoom;

  /// 토스페이에 보낼 데이터 중 신용카드 비밀번호 앞 2자리
  ///
  /// In ko, this message translates to:
  /// **'카드 비밀번호 앞 2자리'**
  String get first2DigitsOfCardPassword;

  /// No description provided for @friends.
  ///
  /// In ko, this message translates to:
  /// **'FRIENDS'**
  String get friends;

  /// 자동차 연료 종류의 표기 텍스트
  ///
  /// In ko, this message translates to:
  /// **'연료'**
  String get fuel;

  /// No description provided for @gasLevelIcon.
  ///
  /// In ko, this message translates to:
  /// **'주유량 아이콘'**
  String get gasLevelIcon;

  /// No description provided for @gasMileageNum.
  ///
  /// In ko, this message translates to:
  /// **'주유량 : {remain}%'**
  String gasMileageNum(num remain);

  /// 자동차 연료의 한 종류
  ///
  /// In ko, this message translates to:
  /// **'휘발유'**
  String get gasoline;

  /// No description provided for @gasolineNum.
  ///
  /// In ko, this message translates to:
  /// **'휘발유 {remain}%'**
  String gasolineNum(num remain);

  /// No description provided for @getInvolved.
  ///
  /// In ko, this message translates to:
  /// **'참여하기'**
  String get getInvolved;

  /// 서비스 첫 이용 시 유저 행동 유도
  ///
  /// In ko, this message translates to:
  /// **'시작하기'**
  String get getStarted;

  /// 상태 표기 텍스트. 자동차 상태를 '양호'로 나타냄
  ///
  /// In ko, this message translates to:
  /// **'양호'**
  String get good;

  /// 구독 해지 신청 후 다음 결제일이 지난 사용자 또는 구독을 신청한 적 없는 팀에 소속된 유저를 위한 문구
  ///
  /// In ko, this message translates to:
  /// **'구독 정보가 없습니다.'**
  String get haveNoAnySubscriptionInfo;

  /// No description provided for @home.
  ///
  /// In ko, this message translates to:
  /// **'홈'**
  String get home;

  /// 사용자의 주거지 주소
  ///
  /// In ko, this message translates to:
  /// **'집 주소'**
  String get homeAddress;

  /// 스마트키 버튼 중 하나.
  ///
  /// In ko, this message translates to:
  /// **'경적'**
  String get honkTheHorn;

  /// No description provided for @iAgree.
  ///
  /// In ko, this message translates to:
  /// **'동의합니다'**
  String get iAgree;

  /// No description provided for @iAgreeToAllTermsAndConditionsOfPaymentService.
  ///
  /// In ko, this message translates to:
  /// **'결제서비스 이용약관 모두 동의'**
  String get iAgreeToAllTermsAndConditionsOfPaymentService;

  /// 사용자의 서비스 이용에 필요한 아이디
  ///
  /// In ko, this message translates to:
  /// **'아이디'**
  String get id;

  /// No description provided for @inquiryType.
  ///
  /// In ko, this message translates to:
  /// **'문의 유형'**
  String get inquiryType;

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

  /// No description provided for @joinATeamAndStartUsingTheService.
  ///
  /// In ko, this message translates to:
  /// **'팀에 가입하고 이용해주세요.'**
  String get joinATeamAndStartUsingTheService;

  /// No description provided for @kt.
  ///
  /// In ko, this message translates to:
  /// **'KT'**
  String get kt;

  /// 운전면허 발급된 날짜
  ///
  /// In ko, this message translates to:
  /// **'면허발급일자'**
  String get licenseIssueDate;

  /// No description provided for @licenseNumber.
  ///
  /// In ko, this message translates to:
  /// **'면허증 번호'**
  String get licenseNumber;

  /// 차량 번호판 4자리 숫자/영문 입력 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'12가 3456'**
  String get licensePlatePlaceholder;

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

  /// No description provided for @locationBasedServicesTermsOfUse.
  ///
  /// In ko, this message translates to:
  /// **'위치기반서비스 이용약관 (필수)'**
  String get locationBasedServicesTermsOfUse;

  /// 스마트키 버튼 중 하나.
  ///
  /// In ko, this message translates to:
  /// **'문잠금'**
  String get lockTheDoor;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'신용카드 등록'**
  String get loginRegisterCreditCard;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'운전면허증 등록'**
  String get loginRegisterLicensePage;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'입력/가입 성공'**
  String get loginRegisterSuccessPage;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'주소 검색/등록'**
  String get loginRegisterZipCode;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'휴대 전화 인증'**
  String get loginValidatePhoneAuth;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'사용자 로그인'**
  String get loginWithIdAndPassword;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'로그인 실패'**
  String get loginFailDialog;

  /// 서비스 접속 종료하기
  ///
  /// In ko, this message translates to:
  /// **'로그아웃'**
  String get logOut;

  /// No description provided for @longTermRentalInquiry.
  ///
  /// In ko, this message translates to:
  /// **'장기 렌트 문의'**
  String get longTermRentalInquiry;

  /// No description provided for @longTermRentals.
  ///
  /// In ko, this message translates to:
  /// **'장기 렌트'**
  String get longTermRentals;

  /// 아무 뜻 없는 텍스트 ...Lorem ipsum
  ///
  /// In ko, this message translates to:
  /// **'아무거나저거저거이거이거'**
  String get loremipsum;

  /// 자동차 최근 정비 상태 확인
  ///
  /// In ko, this message translates to:
  /// **'정비 상태'**
  String get maintenanceStatus;

  /// No description provided for @mileage.
  ///
  /// In ko, this message translates to:
  /// **'주행거리'**
  String get mileage;

  /// 알뜰폰 통신사 HELLO
  ///
  /// In ko, this message translates to:
  /// **'LG헬로모바일'**
  String get mobileHello;

  /// 알뜰폰 통신사 KCT
  ///
  /// In ko, this message translates to:
  /// **'티플러스'**
  String get mobileKct;

  /// 통신사 KT
  ///
  /// In ko, this message translates to:
  /// **'KT엠모바일'**
  String get mobileKt;

  /// 통신사 LGU
  ///
  /// In ko, this message translates to:
  /// **'LG U+'**
  String get mobileLgu;

  /// 알뜰폰 통신사 SK7
  ///
  /// In ko, this message translates to:
  /// **'SK7모바일'**
  String get mobileSk7;

  /// 통신사 SKT
  ///
  /// In ko, this message translates to:
  /// **'SKT'**
  String get mobileSkt;

  /// No description provided for @model.
  ///
  /// In ko, this message translates to:
  /// **'모델'**
  String get model;

  /// 차량 모델명 정보
  ///
  /// In ko, this message translates to:
  /// **'모델명'**
  String get modelName;

  /// 사용자가 서비스 이용을 위해 매월 지불하는 요금
  ///
  /// In ko, this message translates to:
  /// **'월 결제 금액'**
  String get monthlyPayment;

  /// No description provided for @monthlySubscriptionFee.
  ///
  /// In ko, this message translates to:
  /// **'월 구독료'**
  String get monthlySubscriptionFee;

  /// 사용자 개인정보 화면 헬프 텍스트 및 네비게이션 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'내 정보'**
  String get myInfo;

  /// 구독 정보, 사용자 정보, 앱 내 설정, 알림 설정, 탈퇴 신청 등 진입할 수 있는 페이지
  ///
  /// In ko, this message translates to:
  /// **'마이페이지'**
  String get myProfile;

  /// 사용자의 이름
  ///
  /// In ko, this message translates to:
  /// **'이름'**
  String get name;

  /// No description provided for @newEvent.
  ///
  /// In ko, this message translates to:
  /// **'신규 이벤트'**
  String get newEvent;

  /// 별명 또는 사용자 정의 닉네임
  ///
  /// In ko, this message translates to:
  /// **'닉네임'**
  String get nickname;

  /// no
  ///
  /// In ko, this message translates to:
  /// **'아니오'**
  String get no;

  /// No description provided for @noPostsHaveBeenCreated.
  ///
  /// In ko, this message translates to:
  /// **'작성된 글이 없습니다.'**
  String get noPostsHaveBeenCreated;

  /// No description provided for @notAMember.
  ///
  /// In ko, this message translates to:
  /// **'회원이 아니신가요?'**
  String get notAMember;

  /// No description provided for @notice.
  ///
  /// In ko, this message translates to:
  /// **'공지사항'**
  String get notice;

  /// No description provided for @notifications.
  ///
  /// In ko, this message translates to:
  /// **'알림'**
  String get notifications;

  /// 차량을 함께 사용하는 팀의 초대된 인원 수 (최대 4명)
  ///
  /// In ko, this message translates to:
  /// **'인원'**
  String get numberOfPeople;

  /// No description provided for @numericOnly.
  ///
  /// In ko, this message translates to:
  /// **'(숫자만)'**
  String get numericOnly;

  /// 네비게이션 메뉴를 열 수 있는 앱 드로어 버튼 위의 툴팁
  ///
  /// In ko, this message translates to:
  /// **'탐색 메뉴 열기'**
  String get openAppDrawerTooltip;

  /// 스마트키 버튼 중 하나.
  ///
  /// In ko, this message translates to:
  /// **'문열기'**
  String get openDoor;

  /// No description provided for @optional.
  ///
  /// In ko, this message translates to:
  /// **'(선택)'**
  String get optional;

  /// 가입 시 초대받은 코드를 입력하거나 나중에 입력할 수 있음
  ///
  /// In ko, this message translates to:
  /// **'(선택) 초대코드'**
  String get optionalInvitaionCode;

  /// No description provided for @parkingLotLocation.
  ///
  /// In ko, this message translates to:
  /// **'주차장 위치'**
  String get parkingLotLocation;

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

  /// 서비스 결제 수단 등록 실패 알람 텍스트
  ///
  /// In ko, this message translates to:
  /// **'결제수단 등록에 실패하였습니다.\n 다시 확인해주세요.'**
  String get paymentRegisterFailed;

  /// 서비스 결제 수단 등록
  ///
  /// In ko, this message translates to:
  /// **'결제수단 등록'**
  String get paymentRegistration;

  /// No description provided for @personalCard.
  ///
  /// In ko, this message translates to:
  /// **'개인카드'**
  String get personalCard;

  /// 사용자의 신상과 관련된 정보
  ///
  /// In ko, this message translates to:
  /// **'개인 정보'**
  String get personalInfo;

  /// No description provided for @phoneCall.
  ///
  /// In ko, this message translates to:
  /// **'전화 연결'**
  String get phoneCall;

  /// No description provided for @pleaseAcceptTheTermsOfUse.
  ///
  /// In ko, this message translates to:
  /// **'이용약관에 동의해주세요.'**
  String get pleaseAcceptTheTermsOfUse;

  /// No description provided for @pleaseEnter.
  ///
  /// In ko, this message translates to:
  /// **'를 입력해주세요.'**
  String get pleaseEnter;

  /// No description provided for @pleaseEnterYourInvitationCode.
  ///
  /// In ko, this message translates to:
  /// **'초대코드를 입력하세요.'**
  String get pleaseEnterYourInvitationCode;

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

  /// 사용자의 이름 설정시에 나타나는 인풋 헬프 텍스트.
  ///
  /// In ko, this message translates to:
  /// **'이름을 입력해주세요.'**
  String get pleaseEnterYourName;

  /// No description provided for @pleaseSelect.
  ///
  /// In ko, this message translates to:
  /// **'를 선택하세요.'**
  String get pleaseSelect;

  /// 면허종류 중 하나를 선택하는 드롭다운의 헬프 텍스트
  ///
  /// In ko, this message translates to:
  /// **'면허증 종류를 선택하세요.'**
  String get pleaseSelectYourLicenseType;

  /// 우편번호 검색에서 기준이 되는 주소
  ///
  /// In ko, this message translates to:
  /// **'기본주소'**
  String get primaryAddress;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'개인정보 처리방침 (필수)'**
  String get privacyPolicyRequiredConsent;

  /// No description provided for @processing.
  ///
  /// In ko, this message translates to:
  /// **'처리중'**
  String get processing;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'마이페이지 / 내 정보보기'**
  String get profileInfoPage;

  /// 비밀번호 입력 실수 방지를 위한 반복 입력 텍스트 필드의 플레이스 홀더
  ///
  /// In ko, this message translates to:
  /// **'비밀번호 재입력'**
  String get reEnterYourPassword;

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

  /// No description provided for @registerCard.
  ///
  /// In ko, this message translates to:
  /// **'카드등록'**
  String get registerCard;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'카드 관리 페이지'**
  String get registeredCreditCardList;

  /// No description provided for @registerPersonalCard.
  ///
  /// In ko, this message translates to:
  /// **'개인카드 등록'**
  String get registerPersonalCard;

  /// 개인 신용카드/ 운전면허증 등록 완료 안내 텍스트
  ///
  /// In ko, this message translates to:
  /// **'등록 완료'**
  String get registrationComplete;

  /// 원활한 이용을 위해 남은 연료의 양 표기 및 기록
  ///
  /// In ko, this message translates to:
  /// **'{oil} {remain}'**
  String remainingFuelLevel(String oil, String remain);

  /// 차량 대여 시간 경과
  ///
  /// In ko, this message translates to:
  /// **'대여시간'**
  String get rentalTime;

  /// 사고 발생 후 운영센터 또는 고객센터와 연결하는 등의 기능이 있는 텍스트 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'사고 접수'**
  String get reportAnIncident;

  /// No description provided for @required.
  ///
  /// In ko, this message translates to:
  /// **'(필수)'**
  String get required;

  /// 휴대폰 인증번호 재발송 요청하는 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'인증번호 재발송'**
  String get resendAuthorizationNumber;

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

  /// 총 이용 예약 시간
  ///
  /// In ko, this message translates to:
  /// **'총 {totalReservationTime} 이용\n{reservationStartTime} ~ {reservationEndTime}'**
  String reservationTotalPeriod(String totalReservationTime,
      String reservationStartTime, String reservationEndTime);

  /// No description provided for @roomName.
  ///
  /// In ko, this message translates to:
  /// **'방이름'**
  String get roomName;

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

  /// No description provided for @searchForALocation.
  ///
  /// In ko, this message translates to:
  /// **'위치 검색'**
  String get searchForALocation;

  /// [차종], 좌석 장착 개수
  ///
  /// In ko, this message translates to:
  /// **'{seat} 인승'**
  String seater(int seat);

  /// [차종], 후원차종
  ///
  /// In ko, this message translates to:
  /// **'소형차'**
  String get segmentB;

  /// 휴대폰 인증번호를 요청하는 버튼 텍스트
  ///
  /// In ko, this message translates to:
  /// **'인증번호 발송'**
  String get sendAuthorizationNumber;

  /// [PopupDialog]는 원활한 개발을 위한 게이트웨이 모달 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[PopupDialog] 팀 초대하기'**
  String get sendingCrewInvitation;

  /// 사용자 개인정보 설정, 앱 설정 등에 사용
  ///
  /// In ko, this message translates to:
  /// **'설정'**
  String get settings;

  /// No description provided for @shinhanNumCorporate.
  ///
  /// In ko, this message translates to:
  /// **'신한 {cardNum} / 법인'**
  String shinhanNumCorporate(num cardNum);

  /// No description provided for @shinhanNumIndividual.
  ///
  /// In ko, this message translates to:
  /// **'신한 {cardNum} / 개인'**
  String shinhanNumIndividual(num cardNum);

  /// 서비스에 접속하기
  ///
  /// In ko, this message translates to:
  /// **'로그인'**
  String get signIn;

  /// 사용자 가입 해지
  ///
  /// In ko, this message translates to:
  /// **'회원탈퇴'**
  String get signOut;

  /// 서비스에 가입하기
  ///
  /// In ko, this message translates to:
  /// **'회원가입'**
  String get signUp;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'이용 약관 동의'**
  String get signupAcceptTerms;

  /// No description provided for @signUpInformation.
  ///
  /// In ko, this message translates to:
  /// **'가입 정보'**
  String get signUpInformation;

  /// No description provided for @signupIsRestrictedToThoseUnderTheAgeOfNum.
  ///
  /// In ko, this message translates to:
  /// **'만 {num}세 미만은 가입이 제한됩니다.'**
  String signupIsRestrictedToThoseUnderTheAgeOfNum(num num);

  /// No description provided for @small.
  ///
  /// In ko, this message translates to:
  /// **'소형'**
  String get small;

  /// 서비스 이용 중 차량 제어를 위한 스마트키
  ///
  /// In ko, this message translates to:
  /// **'스마트키'**
  String get smartKey;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'스마트키 (사용가능)'**
  String get smartKeyAvailable;

  /// 주민등록번호 앞자리 입력 헬프 텍스트 6자리 YYMMDD
  ///
  /// In ko, this message translates to:
  /// **'주민등록번호 앞자리'**
  String get socialSecurityNumberFirstDigit;

  /// No description provided for @socialSecurityNumberNumDigits.
  ///
  /// In ko, this message translates to:
  /// **'주민등록번호 {num}자리'**
  String socialSecurityNumberNumDigits(num num);

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'스플래시 화면'**
  String get splashLoadingScreen;

  /// No description provided for @startTime.
  ///
  /// In ko, this message translates to:
  /// **'이용시작시간'**
  String get startTime;

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

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'서비스 정보 없음'**
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

  /// No description provided for @teamMemberInformation.
  ///
  /// In ko, this message translates to:
  /// **'팀원 정보'**
  String get teamMemberInformation;

  /// 서비스를 함께 공유하는 팀원 간 호칭
  ///
  /// In ko, this message translates to:
  /// **'팀원'**
  String get teamMembers;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'팀 스케줄 공유'**
  String get teamScheduleShare;

  /// 사용자 휴대전화 통신사 (ex, SKT, LGU+, KT 등) NOTE: 알뜰폰 고려해야 할까?
  ///
  /// In ko, this message translates to:
  /// **'통신사'**
  String get telecomCarrier;

  /// No description provided for @termsOfService.
  ///
  /// In ko, this message translates to:
  /// **'서비스 이용 약관'**
  String get termsOfService;

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'서비스 이용약관 (필수)'**
  String get termsOfServiceRequiredAgreement;

  /// 테스트용 임시 문구
  ///
  /// In ko, this message translates to:
  /// **'테스트'**
  String get test;

  /// No description provided for @thereAreNoInquiries.
  ///
  /// In ko, this message translates to:
  /// **'문의내역이 없습니다.'**
  String get thereAreNoInquiries;

  /// 자동차 타이어 마모 상태 등 종합 점검일
  ///
  /// In ko, this message translates to:
  /// **'타이어 점검일'**
  String get tireInspectionDate;

  /// No description provided for @tryIt.
  ///
  /// In ko, this message translates to:
  /// **'해보세요'**
  String get tryIt;

  /// 스마트키 버튼 중 하나. 특수 상황에 사용.
  ///
  /// In ko, this message translates to:
  /// **'비상등'**
  String get turnOnHazardLights;

  /// 구독 해지 신청 이후, 다음 결제일까지 서비스를 계속 사용할 수 있으며, 이때 해지 예약을 취소할 수도 있음
  ///
  /// In ko, this message translates to:
  /// **'해지하기'**
  String get unsubscribe;

  /// 구독 해지 신청 이후, 다음 결제일까지 서비스를 계속 사용할 수 있으며, 이때 해지 예약을 취소할 수도 있음
  ///
  /// In ko, this message translates to:
  /// **'해지 취소'**
  String get unsubscribeCancel;

  /// [PopupDialog]는 원활한 개발을 위한 게이트웨이 모달 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'구독 해지'**
  String get unsubscriptionConfirm;

  /// [PopupDialog]는 원활한 개발을 위한 게이트웨이 모달 띄우기 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'[PopupDialog] 구독 취소 확인 경고'**
  String get unsubscriptionConfirmWarn;

  /// 원활한 개발을 위한 게이트웨이 스크린의 네비게이션 버튼에 사용됨.
  ///
  /// In ko, this message translates to:
  /// **'예정된 구독 취소 정보'**
  String get upcomingUnsubscriptionInfo;

  /// No description provided for @useAlone.
  ///
  /// In ko, this message translates to:
  /// **'혼자 쓰기'**
  String get useAlone;

  /// No description provided for @useATotalOfTotalReservationTimeHours.
  ///
  /// In ko, this message translates to:
  /// **'총 {totalReservationTime} 시간 이용'**
  String useATotalOfTotalReservationTimeHours(num totalReservationTime);

  /// 이용 약관 항목 중 하나
  ///
  /// In ko, this message translates to:
  /// **'마케팅 목적 개인정보 수집/이용 (선택)'**
  String get useOfPersonalInfoForMarketing;

  /// No description provided for @useWithFriends.
  ///
  /// In ko, this message translates to:
  /// **'같이 쓰기'**
  String get useWithFriends;

  /// No description provided for @vehicleName.
  ///
  /// In ko, this message translates to:
  /// **'차량 명'**
  String get vehicleName;

  /// 자동차 등록 번호판. ex. 12가 3456
  ///
  /// In ko, this message translates to:
  /// **'차량 번호'**
  String get vehicleNumber;

  /// No description provided for @vehicleTermsAndConditions.
  ///
  /// In ko, this message translates to:
  /// **'차량 이용 약관'**
  String get vehicleTermsAndConditions;

  /// No description provided for @verify.
  ///
  /// In ko, this message translates to:
  /// **'인증하기'**
  String get verify;

  /// 차량 이용 일정 확인하기
  ///
  /// In ko, this message translates to:
  /// **'일정 확인'**
  String get viewSchedules;

  /// 사용자 가입 해지
  ///
  /// In ko, this message translates to:
  /// **'회원 탈퇴'**
  String get withdrawingMember;

  /// 가입 해지 모달 안내 문구2
  ///
  /// In ko, this message translates to:
  /// **'위굴리 프렌즈의 회원 탈퇴하시겠습니까?'**
  String get wouldYouLikeToRequestToBeRemovedFromWegooliFriends;

  /// yes
  ///
  /// In ko, this message translates to:
  /// **'예'**
  String get yes;

  /// 가입 해지 모달 안내 문구1
  ///
  /// In ko, this message translates to:
  /// **'해지 시 위굴리 프렌즈의 모든 혜택을 잃게 됩니다. 남은 기간 내에 해지를 취소하실 수 있습니다.'**
  String get youCanCancelAnytime;

  /// No description provided for @youCanGetStraightIntoTheParty.
  ///
  /// In ko, this message translates to:
  /// **'바로 파티에 들어갈 수 있습니다.'**
  String get youCanGetStraightIntoTheParty;

  /// 가입 시 초대코드 입력을 통해 팀 가입 또는 이메일 신청 후 팀 가입 대기 가능 여부 안내 문구
  ///
  /// In ko, this message translates to:
  /// **'바로 팀에 들어갈 수 있습니다.'**
  String get youCanJoinTheTeamRightAway;

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

  /// 우편번호 미입력 시 유저에게 보여줄 오류 문구
  ///
  /// In ko, this message translates to:
  /// **'우편번호는 필수 입력값입니다.'**
  String get yourZipCodeIsRequired;

  /// 주소 검색을 위한 우편번호 입력 인풋 라벨 텍스트
  ///
  /// In ko, this message translates to:
  /// **'우편번호'**
  String get zipCode;

  /// 개인정보 변경 페이지를 위한 텍스트
  ///
  /// In ko, this message translates to:
  /// **'개인정보 변경'**
  String get changePersonalInformation;
}

class _LocalizedDelegate extends LocalizationsDelegate<Localized> {
  const _LocalizedDelegate();

  @override
  Future<Localized> load(Locale locale) {
    return SynchronousFuture<Localized>(lookupLocalized(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ko'].contains(locale.languageCode);

  @override
  bool shouldReload(_LocalizedDelegate old) => false;
}

Localized lookupLocalized(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ko':
      return LocalizedKo();
  }

  throw FlutterError(
      'Localized.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
