// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/screens/screens.dart';

class AppRoutes {
  static const String splashScreen = '/splash';

  static const String logInIdPassword = '/id_pw_login';

  static const String acceptTerms = '/accept_terms';

  static const String validatePhone = '/phone_auth';

  static const String registerZipCode = '/register_zip_code';

  static const String registerLicense = '/register_license';

  static const String registerCredits = '/register_credit_card';

  static const String signUpSuccess = '/register_success';

  static const String myProfilePage = '/my_profile';

  static const String sharedSchedule = '/shared_schedule';

  static const String chatWithFriends = '/chat_with_team';

  static const String smartKeyAvailable = '/key_available';

  static const String smartKeyUnavailable = '/key_unavailable';

  static const String registeredCardList = '/credit_card_list';

  static const String carStatusInfo = '/car_status_info1';

  static const String carStatusInfo2 = '/car_status_info2';

  static const String unsubscriptionConfirm = '/unsubscribe';

  static const String unsubscriptionInfo = '/unsubscribingInfo1';

  static const String unsubscriptionInfo2 = '/unsubscribingInfo2';

  static const String subscriptionNoService = '/no_subscription';

  static const String appGateway = '/app_gateway';

  static List<GetPage> pages = [
    GetPage(name: splashScreen, page: () => SplashLoading()),
    GetPage(
        name: logInIdPassword,
        page: () => LoginWithIdAndPassword(),
        bindings: [
          IdPwLoginBinding(),
        ]),
    GetPage(name: acceptTerms, page: () => AcceptTerms(), bindings: [
      AcceptTermsBinding(),
    ]),
    GetPage(name: validatePhone, page: () => ValidatePhone(), bindings: [
      PhoneAuthBinding(),
    ]),
    GetPage(name: registerZipCode, page: () => RegisterZipCode(), bindings: [
      RegisterZipCodeBinding(),
    ]),
    GetPage(name: registerLicense, page: () => RegisterLicense(), bindings: [
      RegisterLicenseBinding(),
    ]),
    GetPage(name: registerCredits, page: () => RegisterCreditCard(), bindings: [
      RegisterCreditCardBinding(),
    ]),
    GetPage(name: signUpSuccess, page: () => RegisterSuccess(), bindings: [
      RegisterSuccessBinding(),
    ]),
    GetPage(name: sharedSchedule, page: () => TeamScheduleShare(), bindings: [
      TeamScheduleShareBinding(),
    ]),
    GetPage(name: smartKeyAvailable, page: () => SmartKeyAvailablePage()),
    GetPage(name: smartKeyUnavailable, page: () => SmartKeyNotAvailable()),
    GetPage(
        name: registeredCardList,
        page: () => RegisteredCreditCardList(),
        bindings: [
          RegisteredCreditCardListBinding(),
        ]),
    GetPage(name: carStatusInfo, page: () => CarStatusInformation()),
    GetPage(name: carStatusInfo2, page: () => CarStateInformation()),
    GetPage(name: unsubscriptionConfirm, page: () => UnsubscriptionConfirm()),
    GetPage(
        name: unsubscriptionInfo,
        page: () => UpcomingUnsubscriptionOutlined(),
        bindings: [
          UpcomingUnsubscriptionBinding(),
        ]),
    GetPage(
        name: unsubscriptionInfo2,
        page: () => UpcomingUnsubscriptionFilled(),
        bindings: [
          UpcomingUnsubscriptionBinding(),
        ]),
    GetPage(
        name: subscriptionNoService, page: () => SubscriptionInfoNoService()),
    GetPage(name: appGateway, page: () => GatewayScreen())
  ];
}
