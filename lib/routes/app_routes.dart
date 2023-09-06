// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AppRoutes {
  static const String acceptTerms = '/accept_terms';
  static const String appGateway = '/app_gateway';
  static const String bookDatetimePicker = '/book_datetime_picker';
  static const String carStatusInfo = '/car_status_info';
  static const String chatWithTeam = '/chat_with_team';
  static const String idPwLogin = '/id_pw_login';
  static const String myProfile = '/my_profile';
  static const String profileInfoPage = '/profile_info';
  static const String noSubscription = '/no_subscription';
  static const String phoneAuth = '/phone_auth';
  static const String registerCreditCard = '/register_credit_card';
  static const String registeredCardList = '/registered_card_list';
  static const String registerLicense = '/register_license';
  static const String registerSuccess = '/register_success';
  static const String registerZipCode = '/register_zip_code';
  static const String reservationsCheck = '/reservations_check';
  static const String sendingInvitation = '/sending_invitation';
  static const String sharedSchedule = '/shared_schedule';
  static const String carSmartKey = '/smart_key';
  static const String splashScreen = '/splash_screen';
  static const String unsubscribeConfirm = '/unsubscribe_confirm';
  static const String unsubscribeWarn = '/unsubscribe_warn';
  static const String upcomingUnsubscription = '/upcoming_unsubscription';

  static List<GetPage> pages = [
    GetPage(
      bindings: [InitialBindings()],
      name: appGateway,
      page: () => GatewayScreen(),
    ),
    GetPage(
      name: acceptTerms,
      bindings: [UserAccountBinding()],
      page: () => const AcceptTerms(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: bookDatetimePicker,
      page: () => const DatetimePickerBottomSheet(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: carStatusInfo,
      page: () => const CarStatusInformation(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: chatWithTeam,
      page: () => const DashChatWithFriendsPage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: idPwLogin,
      page: () => const LoginWithIdAndPassword(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: myProfile,
      page: () => const MyProfilePage(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: noSubscription,
      page: () => const SubscriptionInfoNoService(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: phoneAuth,
      page: () => ValidatePhone(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerCreditCard,
      page: () => RegisterCreditCard(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registeredCardList,
      page: () => const RegisteredCreditCardList(),
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
      page: () => const RegisterZipCode(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: reservationsCheck,
      page: () => const ReservationsCheckingPageDialog(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: sendingInvitation,
      page: () => const SendingInvitationLog(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: sharedSchedule,
      page: () => const TeamScheduleShare(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: carSmartKey,
      page: () => const SmartKeyAvailablePage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: splashScreen,
      page: () => const SplashLoading(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: unsubscribeConfirm,
      page: () => UnsubscriptionConfirm(),
    ),
    GetPage(
      page: () => UnsubscriptionConfirmWarnDialog(),
      bindings: [TeamCommunityBinding()],
      name: unsubscribeWarn,
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: upcomingUnsubscription,
      page: () => const UpcomingUnsubscription(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: myProfile,
      page: () => const MyProfilePage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: profileInfoPage,
      page: () => const ProfileInfoPage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: appGateway,
      page: () => GatewayScreen(),
    )
  ];
}
