// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:wegooli_friends/screens/screens.dart';

class AppRoutes {
  static const String splashScreen = '/splash';

  static const String logInIdPassword = '/id_pw_login';

  static const String acceptTerms = '/accept_terms';

  static const String validatePhone = '/phone_auth';

  static const String registerZipCode = '/register_zip_code';

  static const String registerLicense = '/register_license';

  static const String registerCredits = '/register_credit_card';

  static const String signUpSuccess = '/register_success';

  static const String myPage = '/my_profile';

  static const String sharedCalendar = '/shared_calendar';

  static const String sharedSchedule = '/shared_schedule';

  static const String chatWithFriends = '/chat_with_team';

  static const String smartKeyAvailable = '/key_available';

  static const String smartKeyUnavailable = '/key_unavailable';

  static const String registeredCardList = '/credit_card_list';

  static const String carStatusInfo1 = '/car_status_info1';

  static const String carStatusInfo2 = '/car_status_info2';

  static const String unsubscriptionConfirm = '/unsubscribe';

  static const String unsubscriptionInfo1 = '/unsubscribingInfo1';

  static const String unsubscriptionInfo2 = '/unsubscribingInfo2';

  static const String subscriptionNoService = '/no_subscription';

  static const String appGateway = '/app_gateway';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashLoading(),
      bindings: [
        SplashLoadingBinding(),
      ],
    ),
    GetPage(
      name: logInIdPassword,
      page: () => LoginWithIdAndPassword(),
      bindings: [
        LoginWithIdAndPasswordBinding(),
      ],
    ),
    GetPage(
      name: acceptTerms,
      page: () => AcceptTerms(),
      bindings: [
        SignupAcceptTermsBinding(),
      ],
    ),
    GetPage(
      name: validatePhone,
      page: () => ValidatePhone(),
      bindings: [
        LoginValidatePhoneAuthBinding(),
      ],
    ),
    GetPage(
      name: registerZipCode,
      page: () => LoginRegisterZipCode(),
      bindings: [
        LoginRegisterZipCodeBinding(),
      ],
    ),
    GetPage(
      name: registerLicense,
      page: () => LoginRegisterLicensePage(),
      bindings: [
        LoginRegisterLicensePageBinding(),
      ],
    ),
    GetPage(
      name: registerCredits,
      page: () => RegisterCreditCard(),
      bindings: [
        RegisterCreditCardBinding(),
      ],
    ),
    GetPage(
      name: signUpSuccess,
      page: () => LoginRegisterSuccessPage(),
      bindings: [
        LoginRegisterSuccessPageBinding(),
      ],
    ),
    GetPage(
      name: sharedSchedule,
      page: () => TeamScheduleShare(),
      bindings: [
        TeamScheduleShareBinding(),
      ],
    ),
    GetPage(
      name: smartKeyUnavailable,
      page: () => SmartKeyNotAvailable(),
      bindings: [
        SmartKeyNotAvailableBinding(),
      ],
    ),
    GetPage(
      name: registeredCardList,
      page: () => RegisteredCreditCardList(),
      bindings: [
        RegisteredCreditCardListBinding(),
      ],
    ),
    GetPage(
      name: carStatusInfo1,
      page: () => CarStatusInformation(),
      bindings: [
        CarStatusInformationBinding(),
      ],
    ),
    GetPage(
      name: carStatusInfo2,
      page: () => CarStateInformation(),
      bindings: [
        CarStateInformationBinding(),
      ],
    ),
    GetPage(
      name: unsubscriptionConfirm,
      page: () => UnsubscriptionConfirm(),
      bindings: [
        UnsubscriptionConfirmBinding(),
      ],
    ),
    GetPage(
      name: unsubscriptionInfo1,
      page: () => UpcomingUnsubscriptionOutlined(),
      bindings: [
        UpcomingUnsubscriptionViewBinding(),
      ],
    ),
    GetPage(
      name: unsubscriptionInfo2,
      page: () => UpcomingUnsubscriptionFilled(),
      bindings: [
        UpcomingUnsubscriptionViewBinding(),
      ],
    ),
    GetPage(
      name: subscriptionNoService,
      page: () => SubscriptionInfoNoService(),
      bindings: [
        SubscriptionInfoNoServiceBinding(),
      ],
    ),
    GetPage(
      name: appGateway,
      page: () => GatewayScreen(),
      bindings: [
        AppGatewayBinding(),
      ],
    )
  ];
}
