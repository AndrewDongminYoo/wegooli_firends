// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/app_navigation_screen/app_navigation_screen.dart';
import '/ui/app_navigation_screen/binding/app_navigation_binding.dart';
import '/ui/card_list_screen/binding/card_list_binding.dart';
import '/ui/card_list_screen/card_list_screen.dart';
import '/ui/card_register_screen/binding/card_register_binding.dart';
import '/ui/card_register_screen/card_register_screen.dart';
import '/ui/contact_us_1_1_contact_us_screen/binding/contact_us_1_1_contact_us_binding.dart';
import '/ui/contact_us_1_1_contact_us_screen/contact_us_1_1_contact_us_screen.dart';
import '/ui/contact_us_empty_history_screen/binding/contact_us_empty_history_binding.dart';
import '/ui/contact_us_empty_history_screen/contact_us_empty_history_screen.dart';
import '/ui/contact_us_inquiry_history_expanded_tab_container_screen/binding/contact_us_inquiry_history_expanded_tab_container_binding.dart';
import '/ui/contact_us_inquiry_history_expanded_tab_container_screen/contact_us_inquiry_history_expanded_tab_container_screen.dart';
import '/ui/expiring_subscriptions_screen/binding/expiring_subscriptions_binding.dart';
import '/ui/expiring_subscriptions_screen/expiring_subscriptions_screen.dart';
import '/ui/home_page_screen/binding/home_page_binding.dart';
import '/ui/home_page_screen/home_page_screen.dart';
import '/ui/identity_verification_empty_screen/binding/identity_verification_empty_binding.dart';
import '/ui/identity_verification_empty_screen/identity_verification_empty_screen.dart';
import '/ui/identity_verification_filled_screen/binding/identity_verification_filled_binding.dart';
import '/ui/identity_verification_filled_screen/identity_verification_filled_screen.dart';
import '/ui/identity_verification_terms_bottomsheet_screen/binding/identity_verification_terms_bottomsheet_binding.dart';
import '/ui/identity_verification_terms_bottomsheet_screen/identity_verification_terms_bottomsheet_screen.dart';
import '/ui/identity_verification_waiting_screen/binding/identity_verification_waiting_binding.dart';
import '/ui/identity_verification_waiting_screen/identity_verification_waiting_screen.dart';
import '/ui/license_register_screen/binding/license_register_binding.dart';
import '/ui/license_register_screen/license_register_screen.dart';
import '/ui/my_page_screen/binding/my_page_binding.dart';
import '/ui/my_page_screen/my_page_screen.dart';
import '/ui/notices_no_notice_screen/binding/notices_no_notice_binding.dart';
import '/ui/notices_no_notice_screen/notices_no_notice_screen.dart';
import '/ui/notices_one_screen/binding/notices_one_binding.dart';
import '/ui/notices_one_screen/notices_one_screen.dart';
import '/ui/notices_screen/binding/notices_binding.dart';
import '/ui/notices_screen/notices_screen.dart';
import '/ui/personal_info_form_zip_code_screen/binding/personal_info_form_zip_code_binding.dart';
import '/ui/personal_info_form_zip_code_screen/personal_info_form_zip_code_screen.dart';
import '/ui/schedules_container_screen/binding/schedules_container_binding.dart';
import '/ui/schedules_container_screen/schedules_container_screen.dart';
import '/ui/schedules_team_is_full_screen/binding/schedules_team_is_full_binding.dart';
import '/ui/schedules_team_is_full_screen/schedules_team_is_full_screen.dart';
import '/ui/schedules_team_is_not_full_screen/binding/schedules_team_is_not_full_binding.dart';
import '/ui/schedules_team_is_not_full_screen/schedules_team_is_not_full_screen.dart';
import '/ui/signin_page_screen/binding/signin_page_binding.dart';
import '/ui/signin_page_screen/signin_page_screen.dart';
import '/ui/signup_complete_screen/binding/signup_complete_binding.dart';
import '/ui/signup_complete_screen/signup_complete_screen.dart';
import '/ui/smart_key_another_is_currently_using_screen/binding/smart_key_another_is_currently_using_binding.dart';
import '/ui/smart_key_another_is_currently_using_screen/smart_key_another_is_currently_using_screen.dart';
import '/ui/smart_key_screen/binding/smart_key_binding.dart';
import '/ui/smart_key_screen/smart_key_screen.dart';
import '/ui/splash_screen_one_screen/binding/splash_screen_one_binding.dart';
import '/ui/splash_screen_one_screen/splash_screen_one_screen.dart';
import '/ui/splash_screen_two_screen/binding/splash_screen_two_binding.dart';
import '/ui/splash_screen_two_screen/splash_screen_two_screen.dart';
import '/ui/subscribe_info_no_subscription_screen/binding/subscribe_info_no_subscription_binding.dart';
import '/ui/subscribe_info_no_subscription_screen/subscribe_info_no_subscription_screen.dart';
import '/ui/subscribe_info_screen/binding/subscribe_info_binding.dart';
import '/ui/subscribe_info_screen/subscribe_info_screen.dart';
import '/ui/unsubscribe_screen/binding/unsubscribe_binding.dart';
import '/ui/unsubscribe_screen/unsubscribe_screen.dart';

// String initialRoute = AppGateway.routeName;
String initialRoute = AppNavigationScreen.routeName;

class AppRoutes {
  static List<GetPage> pages = [
    GetPage(
      name: VerificationWaitingScreen.routeName,
      page: () => const VerificationWaitingScreen(),
      bindings: [
        VerificationWaitingBinding(),
      ],
    ),
    GetPage(
      name: SignupCompleteScreen.routeName,
      page: () => const SignupCompleteScreen(),
      bindings: [
        SignupCompleteBinding(),
      ],
    ),
    GetPage(
      name: NoticesOneScreen.routeName,
      page: () => const NoticesOneScreen(),
      bindings: [
        NoticesOneBinding(),
      ],
    ),
    GetPage(
      name: EmptyNoticeScreen.routeName,
      page: () => const EmptyNoticeScreen(),
      bindings: [
        NoticesNoNoticeBinding(),
      ],
    ),
    GetPage(
      name: SchedulesContainerScreen.routeName,
      page: () => const SchedulesContainerScreen(),
      bindings: [
        SchedulesContainerBinding(),
      ],
    ),
    GetPage(
      name: SigninPageScreen.routeName,
      page: () => const SigninPageScreen(),
      bindings: [
        SigninPageBinding(),
      ],
    ),
    GetPage(
      name: TermsBottomsheet.routeName,
      page: () => const TermsBottomsheet(),
      bindings: [
        VerificationTermsBottomsheetBinding(),
      ],
    ),
    GetPage(
      name: VerificationEmptyScreen.routeName,
      page: () => const VerificationEmptyScreen(),
      bindings: [
        VerificationEmptyBinding(),
      ],
    ),
    GetPage(
      name: PersonalInfoFormZipCodeScreen.routeName,
      page: () => const PersonalInfoFormZipCodeScreen(),
      bindings: [
        PersonalInfoFormZipCodeBinding(),
      ],
    ),
    GetPage(
      name: SplashScreenOne.routeName,
      page: () => const SplashScreenOne(),
      bindings: [
        SplashScreenOneBinding(),
      ],
    ),
    GetPage(
      name: SplashScreenTwo.routeName,
      page: () => const SplashScreenTwo(),
      bindings: [
        SplashScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: LicenseRegisterScreen.routeName,
      page: () => const LicenseRegisterScreen(),
      bindings: [
        LicenseRegisterBinding(),
      ],
    ),
    GetPage(
      name: VerificationFilledScreen.routeName,
      page: () => const VerificationFilledScreen(),
      bindings: [
        VerificationFilledBinding(),
      ],
    ),
    GetPage(
      name: HomePageScreen.routeName,
      page: () => const HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: SchedulesTeamIsNotFullScreen.routeName,
      page: () => const SchedulesTeamIsNotFullScreen(),
      bindings: [
        SchedulesTeamIsNotFullBinding(),
      ],
    ),
    GetPage(
      name: SchedulesTeamsFull.routeName,
      page: () => const SchedulesTeamsFull(),
      bindings: [
        SchedulesTeamIsFullBinding(),
      ],
    ),
    GetPage(
      name: SmartKeyScreen.routeName,
      page: () => const SmartKeyScreen(),
      bindings: [
        SmartKeyBinding(),
      ],
    ),
    GetPage(
      name: MyPageScreen.routeName,
      page: () => const MyPageScreen(),
      bindings: [
        MyPageBinding(),
      ],
    ),
    GetPage(
      name: CardListScreen.routeName,
      page: () => const CardListScreen(),
      bindings: [
        CardListBinding(),
      ],
    ),
    GetPage(
      name: SmartKeyAnotherIsCurrentlyUsingScreen.routeName,
      page: () => const SmartKeyAnotherIsCurrentlyUsingScreen(),
      bindings: [
        SmartKeyAnotherIsCurrentlyUsingBinding(),
      ],
    ),
    GetPage(
      name: NoSubscriptionScreen.routeName,
      page: () => const NoSubscriptionScreen(),
      bindings: [
        SubscribeInfoNoSubscriptionBinding(),
      ],
    ),
    GetPage(
      name: SubscribeInfoScreen.routeName,
      page: () => const SubscribeInfoScreen(),
      bindings: [
        SubscribeInfoBinding(),
      ],
    ),
    GetPage(
      name: ContactUsEmptyHistoryScreen.routeName,
      page: () => const ContactUsEmptyHistoryScreen(),
      bindings: [
        ContactUsEmptyHistoryBinding(),
      ],
    ),
    GetPage(
      name: ContactUsInquiryHistoryScreen.routeName,
      page: () => const ContactUsInquiryHistoryScreen(),
      bindings: [
        ContactUsInquiryHistoryBinding(),
      ],
    ),
    GetPage(
      name: UnsubscribeScreen.routeName,
      page: () => const UnsubscribeScreen(),
      bindings: [
        UnsubscribeBinding(),
      ],
    ),
    GetPage(
      name: CardRegisterScreen.routeName,
      page: () => const CardRegisterScreen(),
      bindings: [
        CardRegisterBinding(),
      ],
    ),
    GetPage(
      name: NoticesScreen.routeName,
      page: () => const NoticesScreen(),
      bindings: [
        NoticesBinding(),
      ],
    ),
    GetPage(
      name: OneOnOneScreen.routeName,
      page: () => const OneOnOneScreen(),
      bindings: [
        OneOnOneBinding(),
      ],
    ),
    GetPage(
      name: ExpiringSubscriptionsScreen.routeName,
      page: () => const ExpiringSubscriptionsScreen(),
      bindings: [
        ExpiringSubscriptionsBinding(),
      ],
    ),
    GetPage(
      name: AppNavigationScreen.routeName,
      page: () => const AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: SplashScreenTwo.routeName,
      page: () => const SplashScreenTwo(),
      bindings: [
        SplashScreenTwoBinding(),
      ],
    )
  ];
}
