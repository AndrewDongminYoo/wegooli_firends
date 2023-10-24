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
    name: VerificationWaitingScreen.routeName,
    builder: (context, params) => const VerificationWaitingScreen(),
  ),
  AppRoute(
    name: SignupCompleteScreen.routeName,
    builder: (context, params) => const SignupCompleteScreen(),
  ),
  AppRoute(
    name: EmptyNoticeScreen.routeName,
    builder: (context, params) => const EmptyNoticeScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: SigninPageScreen.routeName,
    builder: (context, params) => const SigninPageScreen(),
  ),
  AppRoute(
    name: VerificationEmptyScreen.routeName,
    builder: (context, params) => const VerificationEmptyScreen(),
  ),
  AppRoute(
    name: PersonalInfoFormZipCodeScreen.routeName,
    builder: (context, params) => const PersonalInfoFormZipCodeScreen(),
  ),
  AppRoute(
    name: SplashScreenOne.routeName,
    builder: (context, params) => const SplashScreenOne(),
  ),
  AppRoute(
    name: SplashScreenTwo.routeName,
    builder: (context, params) => const SplashScreenTwo(),
  ),
  AppRoute(
    name: LicenseRegisterScreen.routeName,
    builder: (context, params) => const LicenseRegisterScreen(),
  ),
  AppRoute(
    name: VerificationFilledScreen.routeName,
    builder: (context, params) => const VerificationFilledScreen(),
  ),
  AppRoute(
    name: HomePageScreen.routeName,
    builder: (context, params) => const HomePageScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: SchedulesScreen.routeName,
    builder: (context, params) => const SchedulesScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: SmartKeyScreen.routeName,
    builder: (context, params) => const SmartKeyScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: MyPageScreen.routeName,
    builder: (context, params) => const MyPageScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: CardListScreen.routeName,
    builder: (context, params) => const CardListScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: AnotherIsUsingScreen.routeName,
    builder: (context, params) => const AnotherIsUsingScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: NoSubscriptionScreen.routeName,
    builder: (context, params) => const NoSubscriptionScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: SubscribeInfoScreen.routeName,
    builder: (context, params) => const SubscribeInfoScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: ContactUsEmptyHistoryScreen.routeName,
    builder: (context, params) => const ContactUsEmptyHistoryScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: ContactUsHistoryScreen.routeName,
    builder: (context, params) => const ContactUsHistoryScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: UnsubscribeScreen.routeName,
    builder: (context, params) => const UnsubscribeScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: CardRegisterScreen.routeName,
    builder: (context, params) => const CardRegisterScreen(),
  ),
  AppRoute(
    name: NoticesScreen.routeName,
    builder: (context, params) => const NoticesScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: OneOnOneScreen.routeName,
    builder: (context, params) => const OneOnOneScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: ExpiringSubscriptionsScreen.routeName,
    builder: (context, params) => const ExpiringSubscriptionsScreen(),
    requireAuth: true,
  ),
  AppRoute(
    name: AppNavigationScreen.routeName,
    builder: (context, params) => const AppNavigationScreen(),
  ),
];
