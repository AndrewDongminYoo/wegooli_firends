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
      bindings: [UserAccountBinding()],
      page: () => const AcceptTerms(),
    ),
    GetPage(
      name: acceptTermsDetail,
      bindings: [UserAccountBinding()],
      page: AcceptTermsDetail.new,
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: idPwLogin,
      page: () => const LoginPage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: myProfile,
      page: MyProfilePage.new,
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: phoneAuth,
      page: RegisterPhone.new,
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerCreditCard,
      page: RegisterCreditCard.new,
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registeredCardList,
      page: () => const MyProfileCardList(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerLicense,
      page: () => const RegisterLicense(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerSuccess,
      page: () => const RegisterSuccess(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerZipCode,
      page: () => RegisterZipCode(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: splashScreen,
      page: () => const SplashLoading(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: profileInfoPage,
      page: () => const MyProfileDetail(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: teamInvitation,
      page: TeamInvitation.new,
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: appGateway,
      page: GatewayScreen.new,
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: bookDatetimePicker,
      page: DatetimePickerBottomSheet.new,
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: carStatusInfo,
      page: () => const CarStatusDetail(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: chatWithTeam,
      page: () => const DashChatWithFriendsPage(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: noSubscription,
      page: () => const NoSubscription(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: reservationsCheck,
      page: ReservationsCheckingPageDialog.new,
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: home,
      page: () => const MainPage(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: carSmartKey,
      page: () => const CarStatusPage(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: unsubscribeConfirm,
      page: UnsubscriptionConfirm.new,
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: upcomingUnsubscription,
      page: () => const UnsubscriptionUpcoming(),
    ),
  ];
}
