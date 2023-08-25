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
      page: () => RegisterZipCode(),
      bindings: [
        RegisterZipCodeBinding(),
      ],
    ),
    GetPage(
      name: registerLicense,
      page: () => RegisterLicense(),
      bindings: [
        RegisterLicensePageBinding(),
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
      page: () => RegisterSuccess(),
      bindings: [
        RegisterSuccessPageBinding(),
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
      name: smartKeyAvailable,
      page: () => SmartKeyAvailablePage(),
      bindings: [
        SmartKeyAvailableBinding(),
      ],
    ),
    GetPage(
      name: smartKeyUnavailable,
      page: () => SmartKeyNotAvailable(),
      bindings: [
        SmartKeyAvailableBinding(),
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
      name: carStatusInfo,
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
      name: unsubscriptionInfo,
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
    )
  ];
}
