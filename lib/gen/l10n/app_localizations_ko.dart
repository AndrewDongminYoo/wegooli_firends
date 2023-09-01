import 'app_localizations.dart';

/// The translations for Korean (`ko`).
class LocalizedKo extends Localized {
  LocalizedKo([String locale = 'ko']) : super(locale);

  @override
  String get acceptAll => '전체 동의';

  @override
  String get acceptTerms => '약관 동의';

  @override
  String get addACard => '카드 추가';

  @override
  String get addAnItineraryAdd => '일정 추가 +';

  @override
  String areYouSureYouWantToUnsubscribe(String nickname) {
    return '$nickname님 정말로 구독을\n해지하시겠습니까?';
  }

  @override
  String get available => '사용 가능합니다.';

  @override
  String get cancel => '취소';

  @override
  String get cancelingASubscription => '구독 해지하기';

  @override
  String get cardNumber => '카드번호';

  @override
  String get cardRegistration => '카드 등록';

  @override
  String get carInfo => '차량 정보';

  @override
  String get carStatusInformation => '[Page] 차량 상세정보';

  @override
  String get changeYourPersonalInformation => '개인정보 변경하기';

  @override
  String get chat => '채팅';

  @override
  String get checkYourAppUI => '아래 데모 화면에서 앱의 UI를 확인하세요.';

  @override
  String get confirm => '확인';

  @override
  String get consentToCollectionAndUseOfVehicleLocationInfo => '차량 위치정보의 수집 이용 제공 동의 (필수)';

  @override
  String get copy => '복사하기';

  @override
  String get delete => '삭제';

  @override
  String get digitOf13SocialSecurityNumber => '주민등록번호 13자리';

  @override
  String get driverSLicenseRegistration => '운전면허 등록';

  @override
  String get edit => '수정';

  @override
  String get eligibilityPeriodExpirationDate => '적성기간 만료일';

  @override
  String get enterYourAptitudePeriodTestExpirationDate => '적성기간 만료일(숫자만)을 입력해주세요.';

  @override
  String get enterYourVerificationNumber => '인증 번호를 입력하세요.';

  @override
  String get expectedUnsubscribeDate => '해지 예정일';

  @override
  String get expirationDate => '유효기간';

  @override
  String get first2DigitsOfCardPassword => '카드 비밀번호 앞 2자리';

  @override
  String remainingFuelLevel(String oil, String remain) {
    return '$oil $remain';
  }

  @override
  String get getStarted => '시작하기';

  @override
  String get haveNoAnySubscriptionInfo => '구독 정보가 없습니다.';

  @override
  String get hongGilDongIsUsingIt => '홍길동님이 사용중입니다.';

  @override
  String get honkTheHorn => '경적';

  @override
  String get invitationCode => '초대 코드';

  @override
  String get invite => '초대하기';

  @override
  String get licenseIssueDate => '면허발급일자';

  @override
  String get licenseType => '면허증 종류';

  @override
  String get locationBasedServicesTerms => '위치기반서비스 이용약관 (필수)';

  @override
  String get lockTheDoor => '문잠금';

  @override
  String get loginRegisterCreditCard => '[Page] 신용카드 등록';

  @override
  String get loginRegisterLicensePage => '[Page] 운전면허증 등록';

  @override
  String get loginRegisterSuccessPage => '[Page] 입력/가입 성공';

  @override
  String get loginRegisterZipCode => '[Page] 주소 검색/등록';

  @override
  String get loginValidatePhoneAuth => '[Page] 휴대 전화 인증';

  @override
  String get loginWithIdAndPassword => '[Page] ID/PASSWORD 로그인';

  @override
  String get monthlyPayment => '월 결제 금액';

  @override
  String get myPage => '마이페이지';

  @override
  String get myProfileScreen => '[Page] 마이페이지';

  @override
  String get nickname => '닉네임';

  @override
  String get openDoor => '문열기';

  @override
  String get password => '비밀번호';

  @override
  String get paymentDueDate => '결제 예정일';

  @override
  String get pleaseEnterYourLicenseIssueDateOnlyNumbers => '면허발급일자(숫자만)를 입력해주세요.';

  @override
  String get pleaseEnterYourLicenseNumbersOnly => '면허증번호(숫자만)를 입력해주세요.';

  @override
  String get pleaseSelectYourLicenseType => '면허증 종류를 선택하세요.';

  @override
  String get privacyPolicyRequiredConsent => '개인정보 처리방침 (필수)';

  @override
  String get rayGen3 => '레이 3세대';

  @override
  String get region => '지역';

  @override
  String get register => '등록하기';

  @override
  String get registeredCreditCardList => '[Page] 카드 관리 페이지';

  @override
  String get registrationComplete => '등록 완료';

  @override
  String get rentalTime => '대여시간';

  @override
  String get reportAnIncident => '사고 접수';

  @override
  String get reservationDatetimePicker => '[BottomSheet] 예약 날짜 선택기';

  @override
  String get reservationsCheckingPage => '[PopupDialog] 예약 확인 페이지';

  @override
  String get settings => '설정';

  @override
  String get schedule => '일정';

  @override
  String get scheduleAnUnsubscribe => '구독 해지 예약';

  @override
  String get sendingCrewInvitation => '[PopupDialog] 팀 초대하기';

  @override
  String get signIn => '로그인';

  @override
  String get signUp => '회원가입';

  @override
  String get signupAcceptTerms => '[Page] 이용 약관 동의';

  @override
  String get smartKey => '스마트키';

  @override
  String get smartKeyAvailable => '[Page] 스마트키 (사용가능)';

  @override
  String get smartKeyNotAvailable => '[Page] 스마트키 (사용중)';

  @override
  String get socialSecurityNumberFirstDigit => '주민등록번호 앞자리';

  @override
  String get splashLoadingScreen => '[Page] 스플래시 화면';

  @override
  String get status => '상태';

  @override
  String get subscription => '구독';

  @override
  String get subscriptionInfoNoService => '[Page] 서비스 정보 없음';

  @override
  String get subscriptionInformation => '구독 정보';

  @override
  String get subscriptionsAreRestrictedToThoseUnderTheAgeOf26 => '· 만 26세 미만은 가입이 제한됩니다.';

  @override
  String subscriptionsWillBeCanceledAfter(int y, int m, int d) {
    return '$y년 $m월 $d일 이후에 구독이 해지됩니다.';
  }

  @override
  String get teamMembers => '팀원';

  @override
  String get teamScheduleShare => '[Page] 팀 스케줄 공유';

  @override
  String get termsOfServiceRequiredAgreement => '서비스 이용약관 (필수)';

  @override
  String get turnOnHazardLights => '비상등';

  @override
  String get unsubscriptionConfirm => '[PopupDialog] 구독 해지';

  @override
  String get unsubscriptionConfirmWarn => '[PopupDialog] 구독 취소 확인 경고';

  @override
  String get upcomingUnsubscriptionInfo => '[Page] 예정된 구독 취소 정보';

  @override
  String get upcomingUnsubscriptionView => '[Page] 예정된 구독 취소 보기';

  @override
  String get useOfPersonalInfoForMarketing => '마케팅 목적 개인정보 수집/이용 (선택)';

  @override
  String get viewSchedules => '일정 확인';

  @override
  String get youCanCancelAnytime => '해지 시 위굴리 프렌즈의 모든 혜택을 잃게 됩니다. 남은 기간 내에 해지를 취소하실 수 있습니다.';

  @override
  String get youHaveNoAccount => '계정이 없으신가요?';

  @override
  String get yourRegistrationHasBeenCompleted => '회원가입이\n완료되었습니다.';
}
