// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class AppRoutes {
  /// 애플리케이션 홈
  static const String home = '/';

  /// 디버그용 게이트웨이 화면
  static const String appGateway = '/app_gateway';

  /// 스플래시 스크린
  static const String splashScreen = '/splash_screen';

  /// 로그인 및 가입 관련
  static const String idPwLogin = '/id_pw_login';
  static const String acceptTerms = '/accept_terms';
  static const String acceptTermsDetail = '/terms_of_use';
  static const String phoneAuth = '/phone_auth';
  static const String registerCreditCard = '/register_credit_card';
  static const String registerLicense = '/register_license';
  static const String registerSuccess = '/register_success';
  static const String registerZipCode = '/register_zip_code';

  /// 캘린더 관련
  static const String sharedSchedule = '/shared_schedule';
  static const String teamInvitation = '/team_invitation';
  static const String bookDatetimePicker = '/book_datetime_picker';
  static const String reservationsCheck = '/reservations_check';

  /// 센드버드 채팅 관련
  static const String chatWithTeam = '/chat_with_team';

  /// 스마트키 관련
  static const String carSmartKey = '/smart_key';
  static const String carStatusInfo = '/car_status_info';

  /// 마이페이지 관련
  static const String registeredCardList = '/registered_card_list';
  static const String myProfile = '/my_profile';
  static const String profileInfoPage = '/profile_info';
  static const String noSubscription = '/no_subscription';
  static const String unsubscribeConfirm = '/unsubscribe_confirm';
  static const String upcomingUnsubscription = '/upcoming_unsubscription';

  static List<GetPage> pages = [
    GetPage(
      bindings: [UserAccountBinding(), TeamCommunityBinding()],
      name: appGateway,
      page: GatewayScreen.new,
    ),
    GetPage(
      name: acceptTerms,
      binding: UserAccountBinding(),
      page: () => const AcceptTerms(),
    ),
    GetPage(
      name: acceptTermsDetail,
      binding: UserAccountBinding(),
      page: AcceptTermsDetail.new,
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: idPwLogin,
      page: () => const LoginPage(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: myProfile,
      page: MyProfilePage.new,
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: phoneAuth,
      page: RegisterPhone.new,
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: registerCreditCard,
      page: RegisterCreditCard.new,
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: registeredCardList,
      page: () => const MyProfileCardList(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: registerLicense,
      page: () => const RegisterLicense(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: registerSuccess,
      page: () => const RegisterSuccess(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: registerZipCode,
      page: () => const RegisterZipCode(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: splashScreen,
      page: () => const SplashLoading(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: profileInfoPage,
      page: () => const MyProfileDetail(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: teamInvitation,
      page: TeamInvitation.new,
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: appGateway,
      page: GatewayScreen.new,
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: bookDatetimePicker,
      page: DatetimePickerBottomSheet.new,
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: carStatusInfo,
      page: () => const CarStatusDetail(),
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: chatWithTeam,
      page: () => const DashChatWithFriendsPage(),
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: noSubscription,
      page: () => const NoSubscription(),
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: reservationsCheck,
      page: ReservationsCheckingPageDialog.new,
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: home,
      page: () => const MainPage(),
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: carSmartKey,
      page: () => const CarStatusPage(),
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: unsubscribeConfirm,
      page: UnsubscriptionConfirm.new,
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: upcomingUnsubscription,
      page: () => const UnsubscriptionUpcoming(),
    ),
  ];
}
