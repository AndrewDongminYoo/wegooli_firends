import 'package:wegooli_friends_public/presentation/map_view_cars_screen/map_view_cars_screen.dart';
import 'package:wegooli_friends_public/presentation/map_view_cars_screen/binding/map_view_cars_binding.dart';
import 'package:wegooli_friends_public/presentation/select_car_screen/select_car_screen.dart';
import 'package:wegooli_friends_public/presentation/select_car_screen/binding/select_car_binding.dart';
import 'package:wegooli_friends_public/presentation/splash_screen/splash_screen.dart';
import 'package:wegooli_friends_public/presentation/splash_screen/binding/splash_binding.dart';
import 'package:wegooli_friends_public/presentation/id_pw_login_screen/id_pw_login_screen.dart';
import 'package:wegooli_friends_public/presentation/id_pw_login_screen/binding/id_pw_login_binding.dart';
import 'package:wegooli_friends_public/presentation/register_zip_code_screen/register_zip_code_screen.dart';
import 'package:wegooli_friends_public/presentation/register_zip_code_screen/binding/register_zip_code_binding.dart';
import 'package:wegooli_friends_public/presentation/register_license_screen/register_license_screen.dart';
import 'package:wegooli_friends_public/presentation/register_license_screen/binding/register_license_binding.dart';
import 'package:wegooli_friends_public/presentation/register_credit_card_screen/register_credit_card_screen.dart';
import 'package:wegooli_friends_public/presentation/register_credit_card_screen/binding/register_credit_card_binding.dart';
import 'package:wegooli_friends_public/presentation/accept_terms_screen/accept_terms_screen.dart';
import 'package:wegooli_friends_public/presentation/accept_terms_screen/binding/accept_terms_binding.dart';
import 'package:wegooli_friends_public/presentation/register_success_screen/register_success_screen.dart';
import 'package:wegooli_friends_public/presentation/register_success_screen/binding/register_success_binding.dart';
import 'package:wegooli_friends_public/presentation/phone_auth_screen/phone_auth_screen.dart';
import 'package:wegooli_friends_public/presentation/phone_auth_screen/binding/phone_auth_binding.dart';
import 'package:wegooli_friends_public/presentation/personal_info_screen/personal_info_screen.dart';
import 'package:wegooli_friends_public/presentation/personal_info_screen/binding/personal_info_binding.dart';
import 'package:wegooli_friends_public/presentation/terms_dialog_screen/terms_dialog_screen.dart';
import 'package:wegooli_friends_public/presentation/terms_dialog_screen/binding/terms_dialog_binding.dart';
import 'package:wegooli_friends_public/presentation/settings_screen/settings_screen.dart';
import 'package:wegooli_friends_public/presentation/settings_screen/binding/settings_binding.dart';
import 'package:wegooli_friends_public/presentation/notifications_screen/notifications_screen.dart';
import 'package:wegooli_friends_public/presentation/notifications_screen/binding/notifications_binding.dart';
import 'package:wegooli_friends_public/presentation/terms_dialog_checked_screen/terms_dialog_checked_screen.dart';
import 'package:wegooli_friends_public/presentation/terms_dialog_checked_screen/binding/terms_dialog_checked_binding.dart';
import 'package:wegooli_friends_public/presentation/no_contents_screen/no_contents_screen.dart';
import 'package:wegooli_friends_public/presentation/no_contents_screen/binding/no_contents_binding.dart';
import 'package:wegooli_friends_public/presentation/no_team_data_screen/no_team_data_screen.dart';
import 'package:wegooli_friends_public/presentation/no_team_data_screen/binding/no_team_data_binding.dart';
import 'package:wegooli_friends_public/presentation/subscription_info_screen/subscription_info_screen.dart';
import 'package:wegooli_friends_public/presentation/subscription_info_screen/binding/subscription_info_binding.dart';
import 'package:wegooli_friends_public/presentation/smart_key_unavailable_screen/smart_key_unavailable_screen.dart';
import 'package:wegooli_friends_public/presentation/smart_key_unavailable_screen/binding/smart_key_unavailable_binding.dart';
import 'package:wegooli_friends_public/presentation/unsubscribe_screen/unsubscribe_screen.dart';
import 'package:wegooli_friends_public/presentation/unsubscribe_screen/binding/unsubscribe_binding.dart';
import 'package:wegooli_friends_public/presentation/profile_add_card_screen/profile_add_card_screen.dart';
import 'package:wegooli_friends_public/presentation/profile_add_card_screen/binding/profile_add_card_binding.dart';
import 'package:wegooli_friends_public/presentation/car_status_info_screen/car_status_info_screen.dart';
import 'package:wegooli_friends_public/presentation/car_status_info_screen/binding/car_status_info_binding.dart';
import 'package:wegooli_friends_public/presentation/upcoming_unsubscription_screen/upcoming_unsubscription_screen.dart';
import 'package:wegooli_friends_public/presentation/upcoming_unsubscription_screen/binding/upcoming_unsubscription_binding.dart';
import 'package:wegooli_friends_public/presentation/no_subscription_screen/no_subscription_screen.dart';
import 'package:wegooli_friends_public/presentation/no_subscription_screen/binding/no_subscription_binding.dart';
import 'package:wegooli_friends_public/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:wegooli_friends_public/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String homeScreenPage = '/home_screen_page';

  static const String mapViewCarsScreen = '/map_view_cars_screen';

  static const String selectCarScreen = '/select_car_screen';

  static const String splashScreen = '/splash_screen';

  static const String idPwLoginScreen = '/id_pw_login_screen';

  static const String registerZipCodeScreen = '/register_zip_code_screen';

  static const String registerLicenseScreen = '/register_license_screen';

  static const String registerCreditCardScreen = '/register_credit_card_screen';

  static const String acceptTermsScreen = '/accept_terms_screen';

  static const String registerSuccessScreen = '/register_success_screen';

  static const String phoneAuthScreen = '/phone_auth_screen';

  static const String myProfilePage = '/my_profile_page';

  static const String personalInfoScreen = '/personal_info_screen';

  static const String termsDialogScreen = '/terms_dialog_screen';

  static const String settingsScreen = '/settings_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String termsDialogCheckedScreen = '/terms_dialog_checked_screen';

  static const String noContentsScreen = '/no_contents_screen';

  static const String noTeamDataScreen = '/no_team_data_screen';

  static const String dashTeamChatPage = '/dash_team_chat_page';

  static const String subscriptionInfoScreen = '/subscription_info_screen';

  static const String smartKeyAvailablePage = '/smart_key_available_page';

  static const String smartKeyUnavailableScreen =
      '/smart_key_unavailable_screen';

  static const String unsubscribeScreen = '/unsubscribe_screen';

  static const String profileAddCardScreen = '/profile_add_card_screen';

  static const String carStatusInfoScreen = '/car_status_info_screen';

  static const String upcomingUnsubscriptionScreen =
      '/upcoming_unsubscription_screen';

  static const String noSubscriptionScreen = '/no_subscription_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: mapViewCarsScreen,
      page: () => MapViewCarsScreen(),
      bindings: [
        MapViewCarsBinding(),
      ],
    ),
    GetPage(
      name: selectCarScreen,
      page: () => SelectCarScreen(),
      bindings: [
        SelectCarBinding(),
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
      name: registerZipCodeScreen,
      page: () => RegisterZipCodeScreen(),
      bindings: [
        RegisterZipCodeBinding(),
      ],
    ),
    GetPage(
      name: registerLicenseScreen,
      page: () => RegisterLicenseScreen(),
      bindings: [
        RegisterLicenseBinding(),
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
      name: registerSuccessScreen,
      page: () => RegisterSuccessScreen(),
      bindings: [
        RegisterSuccessBinding(),
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
      name: personalInfoScreen,
      page: () => PersonalInfoScreen(),
      bindings: [
        PersonalInfoBinding(),
      ],
    ),
    GetPage(
      name: termsDialogScreen,
      page: () => TermsDialogScreen(),
      bindings: [
        TermsDialogBinding(),
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
      name: notificationsScreen,
      page: () => NotificationsScreen(),
      bindings: [
        NotificationsBinding(),
      ],
    ),
    GetPage(
      name: termsDialogCheckedScreen,
      page: () => TermsDialogCheckedScreen(),
      bindings: [
        TermsDialogCheckedBinding(),
      ],
    ),
    GetPage(
      name: noContentsScreen,
      page: () => NoContentsScreen(),
      bindings: [
        NoContentsBinding(),
      ],
    ),
    GetPage(
      name: noTeamDataScreen,
      page: () => NoTeamDataScreen(),
      bindings: [
        NoTeamDataBinding(),
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
      name: smartKeyUnavailableScreen,
      page: () => SmartKeyUnavailableScreen(),
      bindings: [
        SmartKeyUnavailableBinding(),
      ],
    ),
    GetPage(
      name: unsubscribeScreen,
      page: () => UnsubscribeScreen(),
      bindings: [
        UnsubscribeBinding(),
      ],
    ),
    GetPage(
      name: profileAddCardScreen,
      page: () => ProfileAddCardScreen(),
      bindings: [
        ProfileAddCardBinding(),
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
      name: upcomingUnsubscriptionScreen,
      page: () => UpcomingUnsubscriptionScreen(),
      bindings: [
        UpcomingUnsubscriptionBinding(),
      ],
    ),
    GetPage(
      name: noSubscriptionScreen,
      page: () => NoSubscriptionScreen(),
      bindings: [
        NoSubscriptionBinding(),
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
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
