// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/presentation/app_navigation_screen/app_navigation_screen.dart';
import '/presentation/expiring_subscriptions_screen/expiring_subscriptions_screen.dart';
import '/presentation/frame_34850_screen/frame_34850_screen.dart';
import '/presentation/frame_466_screen/frame_466_screen.dart';
import '/presentation/gas_indicator_icon_screen/gas_indicator_icon_screen.dart';
import '/presentation/home_page_screen/home_page_screen.dart';
import '/presentation/k101_screen/k101_screen.dart';
import '/presentation/k102_screen/k102_screen.dart';
import '/presentation/k104_screen/k104_screen.dart';
import '/presentation/k109_screen/k109_screen.dart';
import '/presentation/k112_screen/k112_screen.dart';
import '/presentation/k113_screen/k113_screen.dart';
import '/presentation/k48_screen/k48_screen.dart';
import '/presentation/k49_screen/k49_screen.dart';
import '/presentation/k53_screen/k53_screen.dart';
import '/presentation/k54_screen/k54_screen.dart';
import '/presentation/k55_screen/k55_screen.dart';
import '/presentation/k56_screen/k56_screen.dart';
import '/presentation/k57_screen/k57_screen.dart';
import '/presentation/k58_screen/k58_screen.dart';
import '/presentation/k60_screen/k60_screen.dart';
import '/presentation/k62_screen/k62_screen.dart';
import '/presentation/k63_screen/k63_screen.dart';
import '/presentation/k64_screen/k64_screen.dart';
import '/presentation/k65_screen/k65_screen.dart';
import '/presentation/k66_screen/k66_screen.dart';
import '/presentation/k72_screen/k72_screen.dart';
import '/presentation/k73_screen/k73_screen.dart';
import '/presentation/k74_screen/k74_screen.dart';
import '/presentation/k76_screen/k76_screen.dart';
import '/presentation/k77_screen/k77_screen.dart';
import '/presentation/k78_screen/k78_screen.dart';
import '/presentation/k80_screen/k80_screen.dart';
import '/presentation/k81_screen/k81_screen.dart';
import '/presentation/k82_screen/k82_screen.dart';
import '/presentation/k83_screen/k83_screen.dart';
import '/presentation/k84_screen/k84_screen.dart';
import '/presentation/k87_screen/k87_screen.dart';
import '/presentation/k88_screen/k88_screen.dart';
import '/presentation/k89_screen/k89_screen.dart';
import '/presentation/k93_screen/k93_screen.dart';
import '/presentation/k94_screen/k94_screen.dart';
import '/presentation/k98_screen/k98_screen.dart';
import '/presentation/k99_screen/k99_screen.dart';
import '/presentation/mypage_card_list_screen/mypage_card_list_screen.dart';
import '/presentation/mypage_card_register_screen/mypage_card_register_screen.dart';
import '/presentation/mypage_contact_us_1_1_contact_us_screen/mypage_contact_us_1_1_contact_us_screen.dart';
import '/presentation/mypage_contact_us_empty_history_screen/mypage_contact_us_empty_history_screen.dart';
import '/presentation/mypage_contact_us_inquiry_history_expanded_tab_container_screen/mypage_contact_us_inquiry_history_expanded_tab_container_screen.dart';
import '/presentation/mypage_notices_no_notice_screen/mypage_notices_no_notice_screen.dart';
import '/presentation/mypage_notices_one_screen/mypage_notices_one_screen.dart';
import '/presentation/mypage_notices_screen/mypage_notices_screen.dart';
import '/presentation/mypage_screen/mypage_screen.dart';
import '/presentation/mypage_subscribe_info_no_subscription_screen/mypage_subscribe_info_no_subscription_screen.dart';
import '/presentation/mypage_subscribe_info_screen/mypage_subscribe_info_screen.dart';
import '/presentation/one1_screen/one1_screen.dart';
import '/presentation/one2_screen/one2_screen.dart';
import '/presentation/one3_screen/one3_screen.dart';
import '/presentation/one4_screen/one4_screen.dart';
import '/presentation/one5_screen/one5_screen.dart';
import '/presentation/one6_screen/one6_screen.dart';
import '/presentation/one8_screen/one8_screen.dart';
import '/presentation/one_screen/one_screen.dart';
import '/presentation/schedules_container_screen/schedules_container_screen.dart';
import '/presentation/schedules_team_is_full_screen/schedules_team_is_full_screen.dart';
import '/presentation/schedules_team_is_not_full_screen/schedules_team_is_not_full_screen.dart';
import '/presentation/seven_screen/seven_screen.dart';
import '/presentation/signin_page_screen/signin_page_screen.dart';
import '/presentation/signup_complete_screen/signup_complete_screen.dart';
import '/presentation/signup_page_identity_verification_empty_screen/signup_page_identity_verification_empty_screen.dart';
import '/presentation/signup_page_identity_verification_filled_screen/signup_page_identity_verification_filled_screen.dart';
import '/presentation/signup_page_identity_verification_filled_with_telecom_screen/signup_page_identity_verification_filled_with_telecom_screen.dart';
import '/presentation/signup_page_identity_verification_terms_bottomsheet_screen/signup_page_identity_verification_terms_bottomsheet_screen.dart';
import '/presentation/signup_page_identity_verification_waiting_screen/signup_page_identity_verification_waiting_screen.dart';
import '/presentation/signup_page_identity_verification_waiting_with_telecom_screen/signup_page_identity_verification_waiting_with_telecom_screen.dart';
import '/presentation/signup_page_license_register_screen/signup_page_license_register_screen.dart';
import '/presentation/signup_page_personal_info_form_zip_code_screen/signup_page_personal_info_form_zip_code_screen.dart';
import '/presentation/smart_key_another_is_currently_using_screen/smart_key_another_is_currently_using_screen.dart';
import '/presentation/smart_key_details_screen/smart_key_details_screen.dart';
import '/presentation/smart_key_screen/smart_key_screen.dart';
import '/presentation/splash_screen_one_screen/splash_screen_one_screen.dart';
import '/presentation/splash_screen_two_screen/splash_screen_two_screen.dart';
import '/presentation/three_screen/three_screen.dart';
import '/presentation/two1_screen/two1_screen.dart';
import '/presentation/two_screen/two_screen.dart';
import '/presentation/unsubscribe_screen/unsubscribe_screen.dart';
import '/presentation/x_screen/x_screen.dart';

class AppRoutes {
  static const String smartKeyScreenPage = '/smart_key_screen_page';

  static const String smartKeyDetailsScreen = '/smart_key_details_screen';

  static const String signupCompleteScreen = '/signup_complete_screen';

  static const String mypageNoticesOneScreen = '/mypage_notices_one_screen';

  static const String mypageNoticesNoNoticeScreen =
      '/mypage_notices_no_notice_screen';

  static const String mypageProfilePage = '/mypage_profile_page';

  static const String schedulesPage = '/schedules_page';

  static const String schedulesContainerScreen = '/schedules_container_screen';

  static const String signinPageScreen = '/signin_page_screen';

  static const String signupPageIdentityVerificationTermsBottomsheetScreen =
      '/signup_page_identity_verification_terms_bottomsheet_screen';

  static const String signupPageIdentityVerificationEmptyScreen =
      '/signup_page_identity_verification_empty_screen';

  static const String signupPageIdentityVerificationFilledScreen =
      '/signup_page_identity_verification_filled_screen';

  static const String signupPageIdentityVerificationWaitingScreen =
      '/signup_page_identity_verification_waiting_screen';

  static const String signupPagePersonalInfoFormZipCodeScreen =
      '/signup_page_personal_info_form_zip_code_screen';

  static const String splashScreenOneScreen = '/splash_screen_one_screen';

  static const String splashScreenTwoScreen = '/splash_screen_two_screen';

  static const String signupPageLicenseRegisterScreen =
      '/signup_page_license_register_screen';

  static const String signupPageIdentityVerificationFilledWithTelecomScreen =
      '/signup_page_identity_verification_filled_with_telecom_screen';

  static const String signupPageIdentityVerificationWaitingWithTelecomScreen =
      '/signup_page_identity_verification_waiting_with_telecom_screen';

  static const String homePageScreen = '/home_page_screen';

  static const String schedulesTeamIsNotFullScreen =
      '/schedules_team_is_not_full_screen';

  static const String schedulesTeamIsFullScreen =
      '/schedules_team_is_full_screen';

  static const String sendBirdChatPage = '/send_bird_chat_page';

  static const String smartKeyScreen = '/smart_key_screen';

  static const String mypageScreen = '/mypage_screen';

  static const String gasIndicatorIconScreen = '/gas_indicator_icon_screen';

  static const String mypageCardListScreen = '/mypage_card_list_screen';

  static const String smartKeyAnotherIsCurrentlyUsingScreen =
      '/smart_key_another_is_currently_using_screen';

  static const String mypageSubscribeInfoNoSubscriptionScreen =
      '/mypage_subscribe_info_no_subscription_screen';

  static const String mypageSubscribeInfoScreen =
      '/mypage_subscribe_info_screen';

  static const String mypageContactUsEmptyHistoryScreen =
      '/mypage_contact_us_empty_history_screen';

  static const String mypageContactUsInquiryHistoryPage =
      '/mypage_contact_us_inquiry_history_page';

  static const String mypageContactUsInquiryHistoryExpandedPage =
      '/mypage_contact_us_inquiry_history_expanded_page';

  static const String mypageContactUsInquiryHistoryExpandedTabContainerScreen =
      '/mypage_contact_us_inquiry_history_expanded_tab_container_screen';

  static const String unsubscribeScreen = '/unsubscribe_screen';

  static const String mypageCardRegisterScreen = '/mypage_card_register_screen';

  static const String mypageNoticesScreen = '/mypage_notices_screen';

  static const String mypageContactUs11ContactUsScreen =
      '/mypage_contact_us_1_1_contact_us_screen';

  static const String expiringSubscriptionsScreen =
      '/expiring_subscriptions_screen';

  static const String k48Screen = '/k48_screen';

  static const String k49Screen = '/k49_screen';

  static const String sevenScreen = '/seven_screen';

  static const String oneScreen = '/one_screen';

  static const String k53Screen = '/k53_screen';

  static const String k54Screen = '/k54_screen';

  static const String k55Screen = '/k55_screen';

  static const String k56Screen = '/k56_screen';

  static const String k57Screen = '/k57_screen';

  static const String k58Screen = '/k58_screen';

  static const String one1Screen = '/one1_screen';

  static const String k60Screen = '/k60_screen';

  static const String k62Screen = '/k62_screen';

  static const String k63Screen = '/k63_screen';

  static const String k64Screen = '/k64_screen';

  static const String k65Screen = '/k65_screen';

  static const String k66Screen = '/k66_screen';

  static const String frame466Screen = '/frame_466_screen';

  static const String twoScreen = '/two_screen';

  static const String frame34850Screen = '/frame_34850_screen';

  static const String xScreen = '/x_screen';

  static const String two1Screen = '/two1_screen';

  static const String k72Screen = '/k72_screen';

  static const String k73Screen = '/k73_screen';

  static const String k74Screen = '/k74_screen';

  static const String one2Screen = '/one2_screen';

  static const String k76Screen = '/k76_screen';

  static const String k77Screen = '/k77_screen';

  static const String k78Screen = '/k78_screen';

  static const String threeScreen = '/three_screen';

  static const String k80Screen = '/k80_screen';

  static const String k81Screen = '/k81_screen';

  static const String k82Screen = '/k82_screen';

  static const String k83Screen = '/k83_screen';

  static const String k84Screen = '/k84_screen';

  static const String one3Screen = '/one3_screen';

  static const String one4Screen = '/one4_screen';

  static const String k87Screen = '/k87_screen';

  static const String k88Screen = '/k88_screen';

  static const String k89Screen = '/k89_screen';

  static const String k93Screen = '/k93_screen';

  static const String k94Screen = '/k94_screen';

  static const String k98Screen = '/k98_screen';

  static const String k99Screen = '/k99_screen';

  static const String one5Screen = '/one5_screen';

  static const String k101Screen = '/k101_screen';

  static const String k102Screen = '/k102_screen';

  static const String one6Screen = '/one6_screen';

  static const String k104Screen = '/k104_screen';

  static const String k109Screen = '/k109_screen';

  static const String one8Screen = '/one8_screen';

  static const String k112Screen = '/k112_screen';

  static const String k113Screen = '/k113_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        smartKeyDetailsScreen: SmartKeyDetailsScreen.builder,
        signupCompleteScreen: SignupCompleteScreen.builder,
        mypageNoticesOneScreen: MyPageNoticesOneScreen.builder,
        mypageNoticesNoNoticeScreen: MyPageNoticesNoNoticeScreen.builder,
        schedulesContainerScreen: SchedulesContainerScreen.builder,
        signinPageScreen: SigninPageScreen.builder,
        signupPageIdentityVerificationTermsBottomsheetScreen:
            SignupPageIdentityVerificationTermsBottomsheetScreen.builder,
        signupPageIdentityVerificationEmptyScreen:
            SignupPageIdentityVerificationEmptyScreen.builder,
        signupPageIdentityVerificationFilledScreen:
            SignupPageIdentityVerificationFilledScreen.builder,
        signupPageIdentityVerificationWaitingScreen:
            SignupPageIdentityVerificationWaitingScreen.builder,
        signupPagePersonalInfoFormZipCodeScreen:
            SignupPagePersonalInfoFormZipCodeScreen.builder,
        splashScreenOneScreen: SplashScreenOneScreen.builder,
        splashScreenTwoScreen: SplashScreenTwoScreen.builder,
        signupPageLicenseRegisterScreen:
            SignupPageLicenseRegisterScreen.builder,
        signupPageIdentityVerificationFilledWithTelecomScreen:
            SignupPageIdentityVerificationFilledWithTelecomScreen.builder,
        signupPageIdentityVerificationWaitingWithTelecomScreen:
            SignupPageIdentityVerificationWaitingWithTelecomScreen.builder,
        homePageScreen: HomePageScreen.builder,
        schedulesTeamIsNotFullScreen: SchedulesTeamIsNotFullScreen.builder,
        schedulesTeamIsFullScreen: SchedulesTeamIsFullScreen.builder,
        smartKeyScreen: SmartKeyScreen.builder,
        mypageScreen: MyPageScreen.builder,
        gasIndicatorIconScreen: GasIndicatorIconScreen.builder,
        mypageCardListScreen: MyPageCardListScreen.builder,
        smartKeyAnotherIsCurrentlyUsingScreen:
            SmartKeyAnotherIsCurrentlyUsingScreen.builder,
        mypageSubscribeInfoNoSubscriptionScreen:
            MyPageSubscribeInfoNoSubscriptionScreen.builder,
        mypageSubscribeInfoScreen: MyPageSubscribeInfoScreen.builder,
        mypageContactUsEmptyHistoryScreen:
            MyPageContactUsEmptyHistoryScreen.builder,
        mypageContactUsInquiryHistoryExpandedTabContainerScreen:
            MyPageContactUsInquiryHistoryExpandedTabContainerScreen.builder,
        unsubscribeScreen: UnsubscribeScreen.builder,
        mypageCardRegisterScreen: MyPageCardRegisterScreen.builder,
        mypageNoticesScreen: MyPageNoticesScreen.builder,
        mypageContactUs11ContactUsScreen:
            MyPageContactUs11ContactUsScreen.builder,
        expiringSubscriptionsScreen: ExpiringSubscriptionsScreen.builder,
        k48Screen: K48Screen.builder,
        k49Screen: K49Screen.builder,
        sevenScreen: SevenScreen.builder,
        oneScreen: OneScreen.builder,
        k53Screen: K53Screen.builder,
        k54Screen: K54Screen.builder,
        k55Screen: K55Screen.builder,
        k56Screen: K56Screen.builder,
        k57Screen: K57Screen.builder,
        k58Screen: K58Screen.builder,
        one1Screen: One1Screen.builder,
        k60Screen: K60Screen.builder,
        k62Screen: K62Screen.builder,
        k63Screen: K63Screen.builder,
        k64Screen: K64Screen.builder,
        k65Screen: K65Screen.builder,
        k66Screen: K66Screen.builder,
        frame466Screen: Frame466Screen.builder,
        twoScreen: TwoScreen.builder,
        frame34850Screen: Frame34850Screen.builder,
        xScreen: XScreen.builder,
        two1Screen: Two1Screen.builder,
        k72Screen: K72Screen.builder,
        k73Screen: K73Screen.builder,
        k74Screen: K74Screen.builder,
        one2Screen: One2Screen.builder,
        k76Screen: K76Screen.builder,
        k77Screen: K77Screen.builder,
        k78Screen: K78Screen.builder,
        threeScreen: ThreeScreen.builder,
        k80Screen: K80Screen.builder,
        k81Screen: K81Screen.builder,
        k82Screen: K82Screen.builder,
        k83Screen: K83Screen.builder,
        k84Screen: K84Screen.builder,
        one3Screen: One3Screen.builder,
        one4Screen: One4Screen.builder,
        k87Screen: K87Screen.builder,
        k88Screen: K88Screen.builder,
        k89Screen: K89Screen.builder,
        k93Screen: K93Screen.builder,
        k94Screen: K94Screen.builder,
        k98Screen: K98Screen.builder,
        k99Screen: K99Screen.builder,
        one5Screen: One5Screen.builder,
        k101Screen: K101Screen.builder,
        k102Screen: K102Screen.builder,
        one6Screen: One6Screen.builder,
        k104Screen: K104Screen.builder,
        k109Screen: K109Screen.builder,
        one8Screen: One8Screen.builder,
        k112Screen: K112Screen.builder,
        k113Screen: K113Screen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreenTwoScreen.builder
      };
}
