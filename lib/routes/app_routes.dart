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
      name: acceptTerms,
      bindings: [AcceptTermsBinding()],
      page: () => AcceptTerms(),
    ),
    GetPage(
      bindings: [InitialBindings()],
      name: appGateway,
      page: () => GatewayScreen(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: bookDatetimePicker,
      page: () => DatetimePickerBottomSheet(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: carStatusInfo,
      page: () => CarStatusInformation(),
    ),
    GetPage(
      bindings: [],
      name: chatWithTeam,
      page: () => DashChatWithFriendsPage(
        appId: 'appId',
        userId: 'userId',
        otherUserIds: ['otherUserIds'],
      ),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: idPwLogin,
      page: () => LoginWithIdAndPassword(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: myProfile,
      page: () => MyProfilePage(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: noSubscription,
      page: () => SubscriptionInfoNoService(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: phoneAuth,
      page: () => ValidatePhone(),
    ),
    GetPage(
      bindings: [RegisterCreditCardBinding()],
      name: registerCreditCard,
      page: () => RegisterCreditCard(),
    ),
    GetPage(
      bindings: [RegisterCreditCardBinding()],
      name: registeredCardList,
      page: () => RegisteredCreditCardList(),
    ),
    GetPage(
      bindings: [RegisterLicenseBinding()],
      name: registerLicense,
      page: () => RegisterLicense(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: registerSuccess,
      page: () => RegisterSuccess(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: registerZipCode,
      page: () => RegisterZipCode(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: reservationsCheck,
      page: () => ReservationsCheckingPageDialog(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: sendingInvitation,
      page: () => SendingInvitationLog(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: sharedSchedule,
      page: () => TeamScheduleShare(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: smartKeyAvailable,
      page: () => SmartKeyAvailablePage(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: smartKeyUnavailable,
      page: () => SmartKeyNotAvailable(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: splashScreen,
      page: () => SplashLoading(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: unsubscribeConfirm,
      page: () => UnsubscriptionConfirm(),
    ),
    GetPage(
      page: () => UnsubscriptionConfirmWarnDialog(),
      bindings: [TeamScheduleBinding()],
      name: unsubscribeWarn,
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: upcomingUnsubscription + "_filled",
      page: () => UpcomingUnsubscriptionFilled(),
    ),
    GetPage(
      bindings: [TeamScheduleBinding()],
      name: upcomingUnsubscription + "_outlined",
      page: () => UpcomingUnsubscriptionOutlined(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: myProfile,
      page: () => MyProfilePage(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: profileInfoPage,
      page: () => ProfileInfoPage(),
    ),
    GetPage(
      bindings: [UserAuthBinding()],
      name: appGateway,
      page: () => GatewayScreen(),
    )
  ];
}
