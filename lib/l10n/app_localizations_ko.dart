// 🌎 Project imports:
import 'app_localizations.dart';

/// The translations for Korean (`ko`).
class LocalizedKo extends Localized {
  LocalizedKo([String locale = 'ko']) : super(locale);

  @override
  String get accept => '동의';

  @override
  String get acceptAll => '전체 동의';

  @override
  String get acceptanceComplete => '동의합니다';

  @override
  String get acceptTerms => '이용약관에 동의해주세요';

  @override
  String get addAnSchedule => '일정 추가 +';

  @override
  String get addAppointment => '일정 추가';

  @override
  String get addressSearch => '주소 검색';

  @override
  String get all => '전체';

  @override
  String get alphanumericSpecialCharacterCombination612Characters =>
      '영문/숫자/특수문자 조합 (6~12자)';

  @override
  String anotherMemberUsingTheCar(String username) {
    return '$username님이 사용중입니다.';
  }

  @override
  String get answer => '답변';

  @override
  String get answerComplete => '답변 완료';

  @override
  String get appVersion => '앱 버전';

  @override
  String areYouSureYouWantToUnsubscribe(String nickname) {
    return '$nickname님 정말로 구독을\n해지하시겠습니까?';
  }

  @override
  String get attachAnImage => '이미지 첨부';

  @override
  String get authenticateYourself => '본인 인증';

  @override
  String get authenticationComplete => '인증 완료';

  @override
  String get available => '사용 가능합니다.';

  @override
  String get basicInfo => '기본 정보';

  @override
  String get batteryStatus => '배터리 상태';

  @override
  String get becomeALeader => '리더 신청';

  @override
  String get callAnAgent => '상담원에게 전화 연결';

  @override
  String get cancel => '취소';

  @override
  String get cancelingASubscription => '구독 해지하기';

  @override
  String get cardAddition => '카드 추가';

  @override
  String get cardModification => '카드 수정';

  @override
  String get cardNumber => '카드번호';

  @override
  String cardPasswordNumDigits(num num) {
    return '카드 비밀번호 앞 $num자리';
  }

  @override
  String get cardRegistration => '카드 등록';

  @override
  String get carInfo => '차량 정보';

  @override
  String get carMorning => '모닝';

  @override
  String get carRayGen3 => '레이 3세대';

  @override
  String get carRentalTermsAndConditionsRequired => '자동차 대여약관 (필수)';

  @override
  String get carStatusInformation => '차량 상세정보';

  @override
  String get carType => '차종';

  @override
  String get cellPhoneInformation => '휴대폰 정보';

  @override
  String get cellPhoneNumber => '휴대전화 번호';

  @override
  String get change => '변경하기';

  @override
  String get changeNumber => '번호 변경';

  @override
  String get changePassword => '비밀번호 변경';

  @override
  String get changeProfile => '프로필 변경';

  @override
  String get changeYourPersonalInformation => '개인정보 변경하기';

  @override
  String get chat => '채팅';

  @override
  String get checkYourAppUI => '아래 데모 화면에서 앱의 UI를 확인하세요.';

  @override
  String get collectionUseOfPersonalInformationForMarketingPurposes =>
      '마케팅 목적 개인정보 수집/이용';

  @override
  String get completeRegistration => '회원가입 완료';

  @override
  String get confirm => '확인';

  @override
  String get confirmPassword => '비밀번호 확인';

  @override
  String get consentToCollectAndUseVehicleLocationInformation =>
      '차량 위치정보의 수집 이용 제공 동의';

  @override
  String get consentToCollectionAndUseOfVehicleLocationInfo =>
      '차량 위치정보의 수집 이용 제공 동의 (필수)';

  @override
  String get consentToReceiveAppPushes => '앱 푸시 수신 동의';

  @override
  String get consentToReceiveEmails => '메일 수신 동의';

  @override
  String get consentToReceiveSms => 'SMS 수신 동의';

  @override
  String get contactUs => '문의하기';

  @override
  String get contents => '내용';

  @override
  String get copy => '복사하기';

  @override
  String get corporateCard => '법인카드';

  @override
  String get coupon => 'coupon';

  @override
  String get currentNickname => '현재닉네임';

  @override
  String get dashChatWithFriendsPage => '팀 채팅하기';

  @override
  String get delete => '삭제';

  @override
  String get detailedAddressSuchAsCityLakeEtc => '동·호수 등 상세 주소';

  @override
  String get details => '상세정보';

  @override
  String get digitOf13SocialSecurityNumber => '주민등록번호 13자리';

  @override
  String get driverSLicense => '자동차 운전면허증';

  @override
  String get driverSLicenseRegistration => '운전면허 등록';

  @override
  String get dropOffTime => '반납시간';

  @override
  String get edit => '수정';

  @override
  String get eligibilityPeriodTestExpirationDate => '적성기간 만료일';

  @override
  String get emailId => '이메일 아이디';

  @override
  String get engineOilChangedDate => '엔진오일 점검일';

  @override
  String englishNumberCombinationNumNumCharacters(num max, num min) {
    return '영문, 숫자 조합 ($min~$max자)';
  }

  @override
  String englishNumberSpecialCharacterCombinationNumNumCharacters(
      num max, num min) {
    return '영문/숫자/특수문자 조합 ($min~$max자)';
  }

  @override
  String get enter => '입력';

  @override
  String get enterANicknameUpTo10Characters => '닉네임 입력 (10자 이내)';

  @override
  String enterANicknameWithinNumCharacters(num max) {
    return '닉네임 입력 ($max자 이내)';
  }

  @override
  String get enterEmailAddress => '이메일 주소 입력';

  @override
  String get enterInvitationCode => '초대코드 입력';

  @override
  String get enterPassword => '비밀번호 입력';

  @override
  String get enterVerificationNumber => '인증번호 입력';

  @override
  String get enterYourEligibilityPeriodTestExpirationDate =>
      '적성기간 만료일(숫자만)을 입력해주세요.';

  @override
  String get enterYourEmail => '이메일 입력';

  @override
  String get enterYourInformation => '정보 입력';

  @override
  String get enterYourInvitationCode => '리더에게 받은 초대코드를 입력하세요.';

  @override
  String get enterYourVerificationNumber => '인증 번호를 입력하세요.';

  @override
  String get expand => '펼치기';

  @override
  String get expectedUnsubscribeDate => '해지 예정일';

  @override
  String get expirationDate => '유효기간';

  @override
  String get filledIn => '입력 완료';

  @override
  String get findARoom => '방 찾기';

  @override
  String get first2DigitsOfCardPassword => '카드 비밀번호 앞 2자리';

  @override
  String get friends => 'FRIENDS';

  @override
  String get fuel => '연료';

  @override
  String get gasLevelIcon => '주유량 아이콘';

  @override
  String gasMileageNum(num remain) {
    return '주유량 : $remain%';
  }

  @override
  String get gasoline => '휘발유';

  @override
  String gasolineNum(num remain) {
    return '휘발유 $remain%';
  }

  @override
  String get getInvolved => '참여하기';

  @override
  String get getStarted => '시작하기';

  @override
  String get good => '양호';

  @override
  String get haveNoAnySubscriptionInfo => '구독 정보가 없습니다.';

  @override
  String get home => '홈';

  @override
  String get homeAddress => '집 주소';

  @override
  String get honkTheHorn => '경적';

  @override
  String get iAgree => '동의합니다';

  @override
  String get iAgreeToAllTermsAndConditionsOfPaymentService =>
      '결제서비스 이용약관 모두 동의';

  @override
  String get id => '아이디';

  @override
  String get inquiryType => '문의 유형';

  @override
  String get invitationCode => '초대 코드';

  @override
  String get invite => '초대하기';

  @override
  String get joinATeamAndStartUsingTheService => '팀에 가입하고 이용해주세요.';

  @override
  String get kt => 'KT';

  @override
  String get licenseIssueDate => '면허발급일자';

  @override
  String get licenseNumber => '면허증 번호';

  @override
  String get licensePlatePlaceholder => '12가 3456';

  @override
  String get licenseType => '면허증 종류';

  @override
  String get locationBasedServicesTerms => '위치기반서비스 이용약관 (필수)';

  @override
  String get locationBasedServicesTermsOfUse => '위치기반서비스 이용약관 (필수)';

  @override
  String get lockTheDoor => '문잠금';

  @override
  String get loginRegisterCreditCard => '신용카드 등록';

  @override
  String get loginRegisterLicensePage => '운전면허증 등록';

  @override
  String get loginRegisterSuccessPage => '입력/가입 성공';

  @override
  String get loginRegisterZipCode => '주소 검색/등록';

  @override
  String get loginValidatePhoneAuth => '휴대 전화 인증';

  @override
  String get loginWithIdAndPassword => '사용자 로그인';

  @override
  String get loginFailDialog => '로그인 실패';

  @override
  String get logOut => '로그아웃';

  @override
  String get longTermRentalInquiry => '장기 렌트 문의';

  @override
  String get longTermRentals => '장기 렌트';

  @override
  String get loremipsum => '아무거나저거저거이거이거';

  @override
  String get maintenanceStatus => '정비 상태';

  @override
  String get mileage => '주행거리';

  @override
  String get mobileHello => 'LG헬로모바일';

  @override
  String get mobileKct => '티플러스';

  @override
  String get mobileKt => 'KT엠모바일';

  @override
  String get mobileLgu => 'LG U+';

  @override
  String get mobileSk7 => 'SK7모바일';

  @override
  String get mobileSkt => 'SKT';

  @override
  String get model => '모델';

  @override
  String get modelName => '모델명';

  @override
  String get monthlyPayment => '월 결제 금액';

  @override
  String get monthlySubscriptionFee => '월 구독료';

  @override
  String get myInfo => '내 정보';

  @override
  String get myProfile => '마이페이지';

  @override
  String get name => '이름';

  @override
  String get newEvent => '신규 이벤트';

  @override
  String get nickname => '닉네임';

  @override
  String get no => '아니오';

  @override
  String get noPostsHaveBeenCreated => '작성된 글이 없습니다.';

  @override
  String get notAMember => '회원이 아니신가요?';

  @override
  String get notice => '공지사항';

  @override
  String get notifications => '알림';

  @override
  String get numberOfPeople => '인원';

  @override
  String get numericOnly => '(숫자만)';

  @override
  String get openAppDrawerTooltip => '탐색 메뉴 열기';

  @override
  String get openDoor => '문열기';

  @override
  String get optional => '(선택)';

  @override
  String get optionalInvitaionCode => '(선택) 초대코드';

  @override
  String get parkingLotLocation => '주차장 위치';

  @override
  String get password => '비밀번호';

  @override
  String get paymentDueDate => '결제 예정일';

  @override
  String get paymentRegisterFailed => '결제수단 등록에 실패하였습니다.\n 다시 확인해주세요.';

  @override
  String get paymentRegistration => '결제수단 등록';

  @override
  String get personalCard => '개인카드';

  @override
  String get personalInfo => '개인 정보';

  @override
  String get phoneCall => '전화 연결';

  @override
  String get pleaseAcceptTheTermsOfUse => '이용약관에 동의해주세요.';

  @override
  String get pleaseEnter => '를 입력해주세요.';

  @override
  String get pleaseEnterYourInvitationCode => '초대코드를 입력하세요.';

  @override
  String get pleaseEnterYourLicenseIssueDateOnlyNumbers =>
      '면허발급일자(숫자만)를 입력해주세요.';

  @override
  String get pleaseEnterYourLicenseNumbersOnly => '면허증번호(숫자만)를 입력해주세요.';

  @override
  String get pleaseEnterYourName => '이름을 입력해주세요.';

  @override
  String get pleaseSelect => '를 선택하세요.';

  @override
  String get pleaseSelectYourLicenseType => '면허증 종류를 선택하세요.';

  @override
  String get primaryAddress => '기본주소';

  @override
  String get privacyPolicyRequiredConsent => '개인정보 처리방침 (필수)';

  @override
  String get processing => '처리중';

  @override
  String get profileInfoPage => '마이페이지 / 내 정보보기';

  @override
  String get reEnterYourPassword => '비밀번호 재입력';

  @override
  String get region => '지역';

  @override
  String get register => '등록하기';

  @override
  String get registerCard => '카드등록';

  @override
  String get registeredCreditCardList => '카드 관리 페이지';

  @override
  String get registerPersonalCard => '개인카드 등록';

  @override
  String get registrationComplete => '등록 완료';

  @override
  String remainingFuelLevel(String oil, String remain) {
    return '$oil $remain';
  }

  @override
  String get rentalTime => '대여시간';

  @override
  String get reportAnIncident => '사고 접수';

  @override
  String get required => '(필수)';

  @override
  String get resendAuthorizationNumber => '인증번호 재발송';

  @override
  String get reservationDatetimePicker => '[BottomSheet] 예약 날짜 선택기';

  @override
  String get reservationsCheckingPage => '[PopupDialog] 예약 확인 페이지';

  @override
  String reservationTotalPeriod(String totalReservationTime,
      String reservationStartTime, String reservationEndTime) {
    return '총 $totalReservationTime 이용\n$reservationStartTime ~ $reservationEndTime';
  }

  @override
  String get roomName => '방이름';

  @override
  String get schedule => '일정';

  @override
  String get scheduleAnUnsubscribe => '구독 해지 예약';

  @override
  String get searchForALocation => '위치 검색';

  @override
  String seater(int seat) {
    return '$seat 인승';
  }

  @override
  String get segmentB => '소형차';

  @override
  String get sendAuthorizationNumber => '인증번호 발송';

  @override
  String get sendingCrewInvitation => '[PopupDialog] 팀 초대하기';

  @override
  String get settings => '설정';

  @override
  String shinhanNumCorporate(num cardNum) {
    return '신한 $cardNum / 법인';
  }

  @override
  String shinhanNumIndividual(num cardNum) {
    return '신한 $cardNum / 개인';
  }

  @override
  String get signIn => '로그인';

  @override
  String get signOut => '회원탈퇴';

  @override
  String get signUp => '회원가입';

  @override
  String get signupAcceptTerms => '이용 약관 동의';

  @override
  String get signUpInformation => '가입 정보';

  @override
  String signupIsRestrictedToThoseUnderTheAgeOfNum(num num) {
    return '만 $num세 미만은 가입이 제한됩니다.';
  }

  @override
  String get small => '소형';

  @override
  String get smartKey => '스마트키';

  @override
  String get smartKeyAvailable => '스마트키 (사용가능)';

  @override
  String get socialSecurityNumberFirstDigit => '주민등록번호 앞자리';

  @override
  String socialSecurityNumberNumDigits(num num) {
    return '주민등록번호 $num자리';
  }

  @override
  String get splashLoadingScreen => '스플래시 화면';

  @override
  String get startTime => '이용시작시간';

  @override
  String get status => '상태';

  @override
  String get subscription => '구독';

  @override
  String get subscriptionInfoNoService => '서비스 정보 없음';

  @override
  String get subscriptionInformation => '구독 정보';

  @override
  String get subscriptionsAreRestrictedToThoseUnderTheAgeOf26 =>
      '· 만 26세 미만은 가입이 제한됩니다.';

  @override
  String subscriptionsWillBeCanceledAfter(int y, int m, int d) {
    return '$y년 $m월 $d일 이후에 구독이 해지됩니다.';
  }

  @override
  String get teamMemberInformation => '팀원 정보';

  @override
  String get teamMembers => '팀원';

  @override
  String get teamScheduleShare => '팀 스케줄 공유';

  @override
  String get telecomCarrier => '통신사';

  @override
  String get termsOfService => '서비스 이용 약관';

  @override
  String get termsOfServiceRequiredAgreement => '서비스 이용약관 (필수)';

  @override
  String get test => '테스트';

  @override
  String get thereAreNoInquiries => '문의내역이 없습니다.';

  @override
  String get tireInspectionDate => '타이어 점검일';

  @override
  String get tryIt => '해보세요';

  @override
  String get turnOnHazardLights => '비상등';

  @override
  String get unsubscribe => '해지하기';

  @override
  String get unsubscribeCancel => '해지 취소';

  @override
  String get unsubscriptionConfirm => '구독 해지';

  @override
  String get unsubscriptionConfirmWarn => '[PopupDialog] 구독 취소 확인 경고';

  @override
  String get upcomingUnsubscriptionInfo => '예정된 구독 취소 정보';

  @override
  String get useAlone => '혼자 쓰기';

  @override
  String useATotalOfTotalReservationTimeHours(num totalReservationTime) {
    return '총 $totalReservationTime 시간 이용';
  }

  @override
  String get useOfPersonalInfoForMarketing => '마케팅 목적 개인정보 수집/이용 (선택)';

  @override
  String get useWithFriends => '같이 쓰기';

  @override
  String get vehicleName => '차량 명';

  @override
  String get vehicleNumber => '차량 번호';

  @override
  String get vehicleTermsAndConditions => '차량 이용 약관';

  @override
  String get verify => '인증하기';

  @override
  String get viewSchedules => '일정 확인';

  @override
  String get withdrawingMember => '회원 탈퇴';

  @override
  String get wouldYouLikeToRequestToBeRemovedFromWegooliFriends =>
      '위굴리 프렌즈의 회원 탈퇴하시겠습니까?';

  @override
  String get yes => '예';

  @override
  String get youCanCancelAnytime =>
      '해지 시 위굴리 프렌즈의 모든 혜택을 잃게 됩니다. 남은 기간 내에 해지를 취소하실 수 있습니다.';

  @override
  String get youCanGetStraightIntoTheParty => '바로 파티에 들어갈 수 있습니다.';

  @override
  String get youCanJoinTheTeamRightAway => '바로 팀에 들어갈 수 있습니다.';

  @override
  String get youHaveNoAccount => '계정이 없으신가요?';

  @override
  String get yourRegistrationHasBeenCompleted => '회원가입이\n완료되었습니다.';

  @override
  String get yourZipCodeIsRequired => '우편번호는 필수 입력값입니다.';

  @override
  String get zipCode => '우편번호';

  @override
  String get changePersonalInformation => '개인정보 변경';
}
