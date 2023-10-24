// 🌎 Project imports:
import '/routes/route_model.dart';
import '/ui/app_navigation_screen/app_navigation_screen.dart';
import '/ui/card_list_screen/card_list_screen.dart';
import '/ui/card_register_screen/card_register_screen.dart';
import '/ui/contact_us_history_page/contact_us_empty_history_screen.dart';
import '/ui/contact_us_history_screen/contact_us_history_screen.dart';
import '/ui/empty_notice_screen/empty_notice_screen.dart';
import '/ui/expiring_subscriptions_screen/expiring_subscriptions_screen.dart';
import '/ui/home_page_screen/home_page_screen.dart';
import '/ui/identity_verification_empty_screen/identity_verification_empty_screen.dart';
import '/ui/identity_verification_filled_screen/identity_verification_filled_screen.dart';
import '/ui/identity_verification_waiting_screen/identity_verification_waiting_screen.dart';
import '/ui/license_register_screen/license_register_screen.dart';
import '/ui/my_page_screen/my_page_screen.dart';
import '/ui/notices_screen/notices_screen.dart';
import '/ui/one_on_one_screen/one_on_one_screen.dart';
import '/ui/personal_info_form_zip_code_screen/personal_info_form_zip_code_screen.dart';
import '/ui/schedules_screen/schedules_screen.dart';
import '/ui/signin_page_screen/signin_page_screen.dart';
import '/ui/signup_complete_screen/signup_complete_screen.dart';
import '/ui/smart_key_screen/another_is_using_screen.dart';
import '/ui/smart_key_screen/smart_key_screen.dart';
import '/ui/splash_screen_one_screen/splash_screen_one_screen.dart';
import '/ui/splash_screen_two_screen/splash_screen_two_screen.dart';
import '/ui/subscribe_info_no_subscription_screen/subscribe_info_no_subscription_screen.dart';
import '/ui/subscribe_info_screen/subscribe_info_screen.dart';
import '/ui/unsubscribe_screen/unsubscribe_screen.dart';

final List<AppRoute> pages = [
  AppRoute(
    path: VerificationWaitingScreen.routeName,
    builder: (context, params) => const VerificationWaitingScreen(),
  ),
  AppRoute(
    path: SignupCompleteScreen.routeName,
    builder: (context, params) => const SignupCompleteScreen(),
  ),
  AppRoute(
    path: EmptyNoticeScreen.routeName,
    builder: (context, params) => const EmptyNoticeScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: SigninPageScreen.routeName,
    builder: (context, params) => const SigninPageScreen(),
  ),
  AppRoute(
    path: VerificationEmptyScreen.routeName,
    builder: (context, params) => const VerificationEmptyScreen(),
  ),
  AppRoute(
    path: PersonalInfoFormZipCodeScreen.routeName,
    builder: (context, params) => const PersonalInfoFormZipCodeScreen(),
  ),
  AppRoute(
    path: SplashScreenOne.routeName,
    builder: (context, params) => const SplashScreenOne(),
  ),
  AppRoute(
    path: SplashScreenTwo.routeName,
    builder: (context, params) => const SplashScreenTwo(),
  ),
  AppRoute(
    path: LicenseRegisterScreen.routeName,
    builder: (context, params) => const LicenseRegisterScreen(),
  ),
  AppRoute(
    path: VerificationFilledScreen.routeName,
    builder: (context, params) => const VerificationFilledScreen(),
  ),
  AppRoute(
    path: HomePageScreen.routeName,
    builder: (context, params) => const HomePageScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: SchedulesScreen.routeName,
    builder: (context, params) => const SchedulesScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: SmartKeyScreen.routeName,
    builder: (context, params) => const SmartKeyScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: MyPageScreen.routeName,
    builder: (context, params) => const MyPageScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: CardListScreen.routeName,
    builder: (context, params) => const CardListScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: AnotherIsUsingScreen.routeName,
    builder: (context, params) => const AnotherIsUsingScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: NoSubscriptionScreen.routeName,
    builder: (context, params) => const NoSubscriptionScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: SubscribeInfoScreen.routeName,
    builder: (context, params) => const SubscribeInfoScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: ContactUsEmptyHistoryScreen.routeName,
    builder: (context, params) => const ContactUsEmptyHistoryScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: ContactUsHistoryScreen.routeName,
    builder: (context, params) => const ContactUsHistoryScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: UnsubscribeScreen.routeName,
    builder: (context, params) => const UnsubscribeScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: CardRegisterScreen.routeName,
    builder: (context, params) => const CardRegisterScreen(),
  ),
  AppRoute(
    path: NoticesScreen.routeName,
    builder: (context, params) => const NoticesScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: OneOnOneScreen.routeName,
    builder: (context, params) => const OneOnOneScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: ExpiringSubscriptionsScreen.routeName,
    builder: (context, params) => const ExpiringSubscriptionsScreen(),
    requireAuth: true,
  ),
  AppRoute(
    path: AppNavigationScreen.routeName,
    builder: (context, params) => const AppNavigationScreen(),
  ),
];
