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
import '/ui/identity_verification_filled_with_telecom_screen/binding/identity_verification_filled_with_telecom_binding.dart';
import '/ui/identity_verification_filled_with_telecom_screen/identity_verification_filled_with_telecom_screen.dart';
import '/ui/identity_verification_terms_bottomsheet_screen/binding/identity_verification_terms_bottomsheet_binding.dart';
import '/ui/identity_verification_terms_bottomsheet_screen/identity_verification_terms_bottomsheet_screen.dart';
import '/ui/identity_verification_waiting_screen/binding/identity_verification_waiting_binding.dart';
import '/ui/identity_verification_waiting_screen/identity_verification_waiting_screen.dart';
import '/ui/identity_verification_waiting_with_telecom_screen/binding/identity_verification_waiting_with_telecom_binding.dart';
import '/ui/identity_verification_waiting_with_telecom_screen/identity_verification_waiting_with_telecom_screen.dart';
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

// String initialRoute = AppRoutes.appGateway;
String initialRoute = AppRoutes.homePageScreen;

class AppRoutes {
  static const String identityVerificationWaitingScreen =
      '/identity_verification_waiting_screen';

  static const String smartKeyDetailsPage = '/smart_key_details_page';

  static const String signupCompleteScreen = '/signup_complete_screen';

  static const String noticesOneScreen = '/notices_one_screen';

  static const String noticesNoNoticeScreen = '/notices_no_notice_screen';

  static const String profilePage = '/profile_page';

  static const String schedulesPage = '/schedules_page';

  static const String schedulesContainerScreen = '/schedules_container_screen';

  static const String signinPageScreen = '/signin_page_screen';

  static const String identityVerificationTermsBottomsheetScreen =
      '/identity_verification_terms_bottomsheet_screen';

  static const String identityVerificationEmptyScreen =
      '/identity_verification_empty_screen';

  static const String identityVerificationFilledScreen =
      '/identity_verification_filled_screen';

  static const String personalInfoFormZipCodeScreen =
      '/personal_info_form_zip_code_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String licenseRegisterScreen = '/license_register_screen';

  static const String identityVerificationFilledWithTelecomScreen =
      '/identity_verification_filled_with_telecom_screen';

  static const String identityVerificationWaitingWithTelecomScreen =
      '/identity_verification_waiting_with_telecom_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String schedulesTeamIsNotFullScreen =
      '/schedules_team_is_not_full_screen';

  static const String schedulesTeamIsFullScreen =
      '/schedules_team_is_full_screen';

  static const String sendBirdChatPage = '/send_bird_chat_page';

  static const String smartKeyScreen = '/smart_key_screen';

  static const String myPageScreen = '/my_page_screen';

  static const String cardListScreen = '/card_list_screen';

  static const String smartKeyAnotherIsCurrentlyUsingScreen =
      '/smart_key_another_is_currently_using_screen';

  static const String subscribeInfoNoSubscriptionScreen =
      '/subscribe_info_no_subscription_screen';

  static const String subscribeInfoScreen = '/subscribe_info_screen';

  static const String contactUsEmptyHistoryScreen =
      '/contact_us_empty_history_screen';

  static const String contactUsInquiryHistoryPage =
      '/contact_us_inquiry_history_page';

  static const String contactUsInquiryHistoryExpandedPage =
      '/contact_us_inquiry_history_expanded_page';

  static const String contactUsInquiryHistoryExpandedTabContainerScreen =
      '/contact_us_inquiry_history_expanded_tab_container_screen';

  static const String unsubscribeScreen = '/unsubscribe_screen';

  static const String cardRegisterScreen = '/card_register_screen';

  static const String noticesScreen = '/notices_screen';

  static const String contactUs11ContactUsScreen =
      '/contact_us_1_1_contact_us_screen';

  static const String expiringSubscriptionsScreen =
      '/expiring_subscriptions_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: identityVerificationWaitingScreen,
      page: () => const IdentityVerificationWaitingScreen(),
      bindings: [
        IdentityVerificationWaitingBinding(),
      ],
    ),
    GetPage(
      name: signupCompleteScreen,
      page: () => const SignupCompleteScreen(),
      bindings: [
        SignupCompleteBinding(),
      ],
    ),
    GetPage(
      name: noticesOneScreen,
      page: () => const NoticesOneScreen(),
      bindings: [
        NoticesOneBinding(),
      ],
    ),
    GetPage(
      name: noticesNoNoticeScreen,
      page: () => const NoticesNoNoticeScreen(),
      bindings: [
        NoticesNoNoticeBinding(),
      ],
    ),
    GetPage(
      name: schedulesContainerScreen,
      page: () => const SchedulesContainerScreen(),
      bindings: [
        SchedulesContainerBinding(),
      ],
    ),
    GetPage(
      name: signinPageScreen,
      page: () => const SigninPageScreen(),
      bindings: [
        SigninPageBinding(),
      ],
    ),
    GetPage(
      name: identityVerificationTermsBottomsheetScreen,
      page: () => const IdentityVerificationTermsBottomsheetScreen(),
      bindings: [
        IdentityVerificationTermsBottomsheetBinding(),
      ],
    ),
    GetPage(
      name: identityVerificationEmptyScreen,
      page: () => const IdentityVerificationEmptyScreen(),
      bindings: [
        IdentityVerificationEmptyBinding(),
      ],
    ),
    GetPage(
      name: identityVerificationFilledScreen,
      page: () => const IdentityVerificationFilledScreen(),
      bindings: [
        IdentityVerificationFilledBinding(),
      ],
    ),
    GetPage(
      name: personalInfoFormZipCodeScreen,
      page: () => const PersonalInfoFormZipCodeScreen(),
      bindings: [
        PersonalInfoFormZipCodeBinding(),
      ],
    ),
    GetPage(
      name: splashScreenOneScreen,
      page: () => const SplashScreenOneScreen(),
      bindings: [
        SplashScreenOneBinding(),
      ],
    ),
    GetPage(
      name: splashScreenTwoScreen,
      page: () => const SplashScreenTwoScreen(),
      bindings: [
        SplashScreenTwoBinding(),
      ],
    ),
    GetPage(
      name: licenseRegisterScreen,
      page: () => const LicenseRegisterScreen(),
      bindings: [
        LicenseRegisterBinding(),
      ],
    ),
    GetPage(
      name: identityVerificationFilledWithTelecomScreen,
      page: () => const IdentityVerificationFilledWithTelecomScreen(),
      bindings: [
        IdentityVerificationFilledWithTelecomBinding(),
      ],
    ),
    GetPage(
      name: identityVerificationWaitingWithTelecomScreen,
      page: () => const IdentityVerificationWaitingWithTelecomScreen(),
      bindings: [
        IdentityVerificationWaitingWithTelecomBinding(),
      ],
    ),
    GetPage(
      name: homePageScreen,
      page: () => const HomePageScreen(),
      bindings: [
        HomePageBinding(),
      ],
    ),
    GetPage(
      name: schedulesTeamIsNotFullScreen,
      page: () => const SchedulesTeamIsNotFullScreen(),
      bindings: [
        SchedulesTeamIsNotFullBinding(),
      ],
    ),
    GetPage(
      name: schedulesTeamIsFullScreen,
      page: () => const SchedulesTeamIsFullScreen(),
      bindings: [
        SchedulesTeamIsFullBinding(),
      ],
    ),
    GetPage(
      name: smartKeyScreen,
      page: () => const SmartKeyScreen(),
      bindings: [
        SmartKeyBinding(),
      ],
    ),
    GetPage(
      name: myPageScreen,
      page: () => const MyPageScreen(),
      bindings: [
        MyPageBinding(),
      ],
    ),
    GetPage(
      name: cardListScreen,
      page: () => const CardListScreen(),
      bindings: [
        CardListBinding(),
      ],
    ),
    GetPage(
      name: smartKeyAnotherIsCurrentlyUsingScreen,
      page: () => const SmartKeyAnotherIsCurrentlyUsingScreen(),
      bindings: [
        SmartKeyAnotherIsCurrentlyUsingBinding(),
      ],
    ),
    GetPage(
      name: subscribeInfoNoSubscriptionScreen,
      page: () => const SubscribeInfoNoSubscriptionScreen(),
      bindings: [
        SubscribeInfoNoSubscriptionBinding(),
      ],
    ),
    GetPage(
      name: subscribeInfoScreen,
      page: () => const SubscribeInfoScreen(),
      bindings: [
        SubscribeInfoBinding(),
      ],
    ),
    GetPage(
      name: contactUsEmptyHistoryScreen,
      page: () => const ContactUsEmptyHistoryScreen(),
      bindings: [
        ContactUsEmptyHistoryBinding(),
      ],
    ),
    GetPage(
      name: contactUsInquiryHistoryExpandedTabContainerScreen,
      page: () => const ContactUsInquiryHistoryExpandedTabContainerScreen(),
      bindings: [
        ContactUsInquiryHistoryExpandedTabContainerBinding(),
      ],
    ),
    GetPage(
      name: unsubscribeScreen,
      page: () => const UnsubscribeScreen(),
      bindings: [
        UnsubscribeBinding(),
      ],
    ),
    GetPage(
      name: cardRegisterScreen,
      page: () => const CardRegisterScreen(),
      bindings: [
        CardRegisterBinding(),
      ],
    ),
    GetPage(
      name: noticesScreen,
      page: () => const NoticesScreen(),
      bindings: [
        NoticesBinding(),
      ],
    ),
    GetPage(
      name: contactUs11ContactUsScreen,
      page: () => const ContactUs11ContactUsScreen(),
      bindings: [
        ContactUs11ContactUsBinding(),
      ],
    ),
    GetPage(
      name: expiringSubscriptionsScreen,
      page: () => const ExpiringSubscriptionsScreen(),
      bindings: [
        ExpiringSubscriptionsBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => const AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => const SplashScreenTwoScreen(),
      bindings: [
        SplashScreenTwoBinding(),
      ],
    )
  ];
}
