// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class AppRoutes {
  /// 디버그용 게이트웨이 화면
  static const String appGateway = '/app_gateway';

  /// 스플래시 스크린
  static const String splashScreen = '/splash_screen';

  /// 로그인 및 가입 관련
  static const String idPwLogin = '/login';
  static const String register = '/register';
  static const String acceptTerms = '/accept_terms';
  static const String acceptTermsDetail = '/terms_detail/:id';
  static const String phoneAuth = '/phone';
  static const String registerCreditCard = '/new_card';
  static const String registerLicense = '/license';
  static const String registerSuccess = '/success';
  static const String registerZipCode = '/zip_code';

  /// 캘린더 관련
  static const String sharedSchedule = '/shared_schedule';
  static const String teamInvitation = '/team_invitation';
  static const String bookDatetimePicker = '/datetime_picker';
  static const String reservationsCheck = '/reservations';

  /// 센드버드 채팅 관련
  static const String chatWithTeam = '/chat_with_team';

  /// 스마트키 관련
  static const String carSmartKey = '/smart_key';
  static const String carStatusInfo = '/car_status_info';

  /// 마이페이지 관련
  static const String registeredCardList = '/card_list';
  static const String modifyCreditCard = '/edit_card';
  static const String myProfile = '/profile';
  static const String profileInfoPage = '/profile/detail';
  static const String noSubscription = '/no_subscription';
  static const String unsubscribeConfirm = '/unsubscribe_confirm';
  static const String upcomingUnsubscription = '/unsubscription';

  static List<GetPage> pages = [
    GetPage(
      name: appGateway,
      page: () => const GatewayScreen(),
    ),
    GetPage(
      name: acceptTerms,
      binding: UserAccountBinding(),
      page: () => const AcceptTerms(),
    ),
    GetPage(
      name: acceptTermsDetail,
      binding: UserAccountBinding(),
      page: () => const AcceptTermsDetail(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: idPwLogin,
      page: () => const LoginPage(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: myProfile,
      page: () => const MyProfilePage(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: phoneAuth,
      page: () => const RegisterPhone(),
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: registerCreditCard,
      page: () => const RegisterCreditCard(),
      parameters: const {'type': 'new'},
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: registeredCardList,
      page: () => const MyProfileCardList(),
      middlewares: [AuthMiddleware()],
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
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: teamInvitation,
      page: () => const TeamInvitation(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      bindings: [UserAccountBinding(), TeamCommunityBinding()],
      name: sharedSchedule,
      page: () => const SharedCalendar(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: bookDatetimePicker,
      page: () => const DatetimePickerBottomSheet(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: carStatusInfo,
      page: () => const CarStatusDetail(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: chatWithTeam,
      page: () => const DashChatWithFriendsPage(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: noSubscription,
      page: () => const NoSubscription(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: reservationsCheck,
      page: () => const ReservationsCheckingPageDialog(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: UserAccountBinding(),
      name: modifyCreditCard,
      page: () => const RegisterCreditCard(),
      parameters: const {'type': 'edit'},
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: carSmartKey,
      page: () => const CarStatusPage(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: unsubscribeConfirm,
      page: () => const UnsubscriptionConfirm(),
      middlewares: [AuthMiddleware()],
    ),
    GetPage(
      binding: TeamCommunityBinding(),
      name: upcomingUnsubscription,
      page: () => const UnsubscriptionUpcoming(),
      middlewares: [AuthMiddleware()],
    ),
  ];
}
