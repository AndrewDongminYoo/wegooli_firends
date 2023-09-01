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
  static const String smartKeyAvailable = '/smart_key_available';
  static const String smartKeyUnavailable = '/smart_key_unavailable';
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
      page: () => AcceptTerms(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: bookDatetimePicker,
      page: () => DatetimePickerBottomSheet(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: carStatusInfo,
      page: () => CarStatusInformation(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: chatWithTeam,
      page: () => DashChatWithFriendsPage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: idPwLogin,
      page: () => LoginWithIdAndPassword(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: myProfile,
      page: () => MyProfilePage(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: noSubscription,
      page: () => SubscriptionInfoNoService(),
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
      page: () => RegisteredCreditCardList(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerLicense,
      page: () => RegisterLicense(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerSuccess,
      page: () => RegisterSuccess(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: registerZipCode,
      page: () => RegisterZipCode(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: reservationsCheck,
      page: () => ReservationsCheckingPageDialog(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: sendingInvitation,
      page: () => SendingInvitationLog(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: sharedSchedule,
      page: () => TeamScheduleShare(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: smartKeyAvailable,
      page: () => SmartKeyAvailablePage(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: smartKeyUnavailable,
      page: () => SmartKeyNotAvailable(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: splashScreen,
      page: () => SplashLoading(),
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
      name: upcomingUnsubscription + "_filled",
      page: () => UpcomingUnsubscriptionFilled(),
    ),
    GetPage(
      bindings: [TeamCommunityBinding()],
      name: upcomingUnsubscription + "_outlined",
      page: () => UpcomingUnsubscriptionOutlined(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: myProfile,
      page: () => MyProfilePage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: profileInfoPage,
      page: () => ProfileInfoPage(),
    ),
    GetPage(
      bindings: [UserAccountBinding()],
      name: appGateway,
      page: () => GatewayScreen(),
    )
  ];
}
