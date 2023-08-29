import 'package:wegooli_friends_public/presentation/one_screen/one_screen.dart';
import 'package:wegooli_friends_public/presentation/one_screen/binding/one_binding.dart';
import 'package:wegooli_friends_public/presentation/k1_screen/k1_screen.dart';
import 'package:wegooli_friends_public/presentation/k1_screen/binding/k1_binding.dart';
import 'package:wegooli_friends_public/presentation/k2_screen/k2_screen.dart';
import 'package:wegooli_friends_public/presentation/k2_screen/binding/k2_binding.dart';
import 'package:wegooli_friends_public/presentation/splash_screen/splash_screen.dart';
import 'package:wegooli_friends_public/presentation/splash_screen/binding/splash_binding.dart';
import 'package:wegooli_friends_public/presentation/id_pw_login_screen/id_pw_login_screen.dart';
import 'package:wegooli_friends_public/presentation/id_pw_login_screen/binding/id_pw_login_binding.dart';
import 'package:wegooli_friends_public/presentation/modify_profile_screen/modify_profile_screen.dart';
import 'package:wegooli_friends_public/presentation/modify_profile_screen/binding/modify_profile_binding.dart';
import 'package:wegooli_friends_public/presentation/phone_auth_screen/phone_auth_screen.dart';
import 'package:wegooli_friends_public/presentation/phone_auth_screen/binding/phone_auth_binding.dart';
import 'package:wegooli_friends_public/presentation/register_credit_card_screen/register_credit_card_screen.dart';
import 'package:wegooli_friends_public/presentation/register_credit_card_screen/binding/register_credit_card_binding.dart';
import 'package:wegooli_friends_public/presentation/accept_terms_screen/accept_terms_screen.dart';
import 'package:wegooli_friends_public/presentation/accept_terms_screen/binding/accept_terms_binding.dart';
import 'package:wegooli_friends_public/presentation/unsubscribe_warn_screen/unsubscribe_warn_screen.dart';
import 'package:wegooli_friends_public/presentation/unsubscribe_warn_screen/binding/unsubscribe_warn_binding.dart';
import 'package:wegooli_friends_public/presentation/calendar_screen/calendar_screen.dart';
import 'package:wegooli_friends_public/presentation/calendar_screen/binding/calendar_binding.dart';
import 'package:wegooli_friends_public/presentation/settings_screen/settings_screen.dart';
import 'package:wegooli_friends_public/presentation/settings_screen/binding/settings_binding.dart';
import 'package:wegooli_friends_public/presentation/upcoming_unsubscription_screen/upcoming_unsubscription_screen.dart';
import 'package:wegooli_friends_public/presentation/upcoming_unsubscription_screen/binding/upcoming_unsubscription_binding.dart';
import 'package:wegooli_friends_public/presentation/smart_key_available_screen/smart_key_available_screen.dart';
import 'package:wegooli_friends_public/presentation/smart_key_available_screen/binding/smart_key_available_binding.dart';
import 'package:wegooli_friends_public/presentation/subscription_info_screen/subscription_info_screen.dart';
import 'package:wegooli_friends_public/presentation/subscription_info_screen/binding/subscription_info_binding.dart';
import 'package:wegooli_friends_public/presentation/car_status_info_screen/car_status_info_screen.dart';
import 'package:wegooli_friends_public/presentation/car_status_info_screen/binding/car_status_info_binding.dart';
import 'package:wegooli_friends_public/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:wegooli_friends_public/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String oneScreen = '/one_screen';

  static const String k1Screen = '/k1_screen';

  static const String k2Screen = '/k2_screen';

  static const String splashScreen = '/splash_screen';

  static const String idPwLoginScreen = '/id_pw_login_screen';

  static const String modifyProfileScreen = '/modify_profile_screen';

  static const String phoneAuthScreen = '/phone_auth_screen';

  static const String registerCreditCardScreen = '/register_credit_card_screen';

  static const String acceptTermsScreen = '/accept_terms_screen';

  static const String unsubscribeWarnScreen = '/unsubscribe_warn_screen';

  static const String sharedSchedulePage = '/shared_schedule_page';

  static const String calendarScreen = '/calendar_screen';

  static const String settingsScreen = '/settings_screen';

  static const String upcomingUnsubscriptionScreen =
      '/upcoming_unsubscription_screen';

  static const String smartKeyAvailableScreen = '/smart_key_available_screen';

  static const String subscriptionInfoScreen = '/subscription_info_screen';

  static const String carStatusInfoScreen = '/car_status_info_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: oneScreen,
      page: () => OneScreen(),
      bindings: [
        OneBinding(),
      ],
    ),
    GetPage(
      name: k1Screen,
      page: () => K1Screen(),
      bindings: [
        K1Binding(),
      ],
    ),
    GetPage(
      name: k2Screen,
      page: () => K2Screen(),
      bindings: [
        K2Binding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: idPwLoginScreen,
      page: () => IdPwLoginScreen(),
      bindings: [
        IdPwLoginBinding(),
      ],
    ),
    GetPage(
      name: modifyProfileScreen,
      page: () => ModifyProfileScreen(),
      bindings: [
        ModifyProfileBinding(),
      ],
    ),
    GetPage(
      name: phoneAuthScreen,
      page: () => PhoneAuthScreen(),
      bindings: [
        PhoneAuthBinding(),
      ],
    ),
    GetPage(
      name: registerCreditCardScreen,
      page: () => RegisterCreditCardScreen(),
      bindings: [
        RegisterCreditCardBinding(),
      ],
    ),
    GetPage(
      name: acceptTermsScreen,
      page: () => AcceptTermsScreen(),
      bindings: [
        AcceptTermsBinding(),
      ],
    ),
    GetPage(
      name: unsubscribeWarnScreen,
      page: () => UnsubscribeWarnScreen(),
      bindings: [
        UnsubscribeWarnBinding(),
      ],
    ),
    GetPage(
      name: calendarScreen,
      page: () => CalendarScreen(),
      bindings: [
        CalendarBinding(),
      ],
    ),
    GetPage(
      name: settingsScreen,
      page: () => SettingsScreen(),
      bindings: [
        SettingsBinding(),
      ],
    ),
    GetPage(
      name: upcomingUnsubscriptionScreen,
      page: () => UpcomingUnsubscriptionScreen(),
      bindings: [
        UpcomingUnsubscriptionBinding(),
      ],
    ),
    GetPage(
      name: smartKeyAvailableScreen,
      page: () => SmartKeyAvailableScreen(),
      bindings: [
        SmartKeyAvailableBinding(),
      ],
    ),
    GetPage(
      name: subscriptionInfoScreen,
      page: () => SubscriptionInfoScreen(),
      bindings: [
        SubscriptionInfoBinding(),
      ],
    ),
    GetPage(
      name: carStatusInfoScreen,
      page: () => CarStatusInfoScreen(),
      bindings: [
        CarStatusInfoBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => OneScreen(),
      bindings: [
        OneBinding(),
      ],
    )
  ];
}
