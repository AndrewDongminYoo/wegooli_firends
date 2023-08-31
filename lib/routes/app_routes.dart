// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/screens/register_license/binding/_binding.dart';
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
        page: () => AcceptTerms(),
        bindings: [AcceptTermsBinding()]),
    GetPage(name: appGateway, page: () => GatewayScreen()),
    GetPage(
        name: bookDatetimePicker,
        page: () => ReservationDatetimePickerBottomSheet(
            ScheduleController.to)),
    GetPage(name: carStatusInfo, page: () => CarStatusInformation()),
    GetPage(
        name: chatWithTeam,
        page: () => DashChatWithFriendsPage(
            appId: 'appId', userId: 'userId', otherUserIds: ['otherUserIds'])),
    GetPage(
        name: idPwLogin,
        page: () => LoginWithIdAndPassword(),
        bindings: [UserAuthBInding()]),
    GetPage(name: myProfile, page: () => MyProfilePage()),
    GetPage(name: noSubscription, page: () => SubscriptionInfoNoService()),
    GetPage(
        name: phoneAuth,
        page: () => ValidatePhone(),
        bindings: [UserAuthBInding()]),
    GetPage(
        name: registerCreditCard,
        page: () => RegisterCreditCard(),
        bindings: [RegisterCreditCardBinding()]),
    GetPage(
        name: registeredCardList,
        page: () => RegisteredCreditCardList(),
        bindings: [RegisterCreditCardBinding()]),
    GetPage(
        name: registerLicense,
        page: () => RegisterLicense(),
        bindings: [RegisterLicenseBinding()]),
    GetPage(
        name: registerSuccess,
        page: () => RegisterSuccess(),
        bindings: [UserAuthBInding()]),
    GetPage(
        name: registerZipCode,
        page: () => RegisterZipCode(),
        bindings: [UserAuthBInding()]),
    GetPage(
        name: reservationsCheck, page: () => ReservationsCheckingPageDialog()),
    GetPage(
        name: sendingInvitation,
        page: () =>
            SendingCrewInvitationDialog(DeviceController.to)),
    GetPage(
        name: sharedSchedule,
        page: () => TeamScheduleShare(),
        bindings: [TeamScheduleBinding()]),
    GetPage(name: smartKeyAvailable, page: () => SmartKeyAvailablePage()),
    GetPage(name: smartKeyUnavailable, page: () => SmartKeyNotAvailable()),
    GetPage(name: splashScreen, page: () => SplashLoading()),
    GetPage(name: unsubscribeConfirm, page: () => UnsubscriptionConfirm()),
    GetPage(
        name: unsubscribeWarn, page: () => UnsubscriptionConfirmWarnDialog()),
    GetPage(
        name: upcomingUnsubscription + "_filled",
        page: () => UpcomingUnsubscriptionFilled(),
        bindings: [TeamScheduleBinding()]),
    GetPage(
        name: upcomingUnsubscription + "_outlined",
        page: () => UpcomingUnsubscriptionOutlined(),
        bindings: [TeamScheduleBinding()]),
    GetPage(name: myProfile, page: () => MyProfilePage()),
    GetPage(name: profileInfoPage, page: () => ProfileInfoPage()),
    GetPage(name: appGateway, page: () => GatewayScreen())
  ];
}
