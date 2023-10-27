// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '../widgets/dialogue.dart';
import '/routes/app_gateway.dart';
import '/routes/route_model.dart';
import '/screens/card_screen/card_list_screen.dart';
import '/screens/card_screen/card_register_screen.dart';
import '/screens/contact_us_screen/contact_us_empty_history_screen.dart';
import '/screens/contact_us_screen/contact_us_history_screen.dart';
import '/screens/contact_us_screen/one_on_one_screen.dart';
import '/screens/home_page_screen/home_page_screen.dart';
import '/screens/identify_screen/identity_verification_empty_screen.dart';
import '/screens/identify_screen/identity_verification_filled_screen.dart';
import '/screens/identify_screen/identity_verification_waiting_screen.dart';
import '/screens/license_screen/license_register_screen.dart';
import '/screens/my_page_screen/my_page_screen.dart';
import '/screens/notices_screen/empty_notice_screen.dart';
import '/screens/notices_screen/notices_screen.dart';
import '/screens/scheduled_date_dialog/view_scheduled_date_dialog.dart';
import '/screens/schedules_screen/datetime_picker_bottom_sheet.dart';
import '/screens/schedules_screen/schedules_screen.dart';
import '/screens/send_invitation_dialog/send_invitation_dialog.dart';
import '/screens/signin_page_screen/signin_page_screen.dart';
import '/screens/signin_page_screen/signup_complete_screen.dart';
import '/screens/smart_key_screen/another_is_using_screen.dart';
import '/screens/smart_key_screen/smart_key_screen.dart';
import '/screens/splash_screen/splash_screen_one_screen.dart';
import '/screens/splash_screen/splash_screen_two_screen.dart';
import '/screens/subscribe_info_screen/expiring_subscriptions_screen.dart';
import '/screens/subscribe_info_screen/subscribe_info_no_subscription_screen.dart';
import '/screens/subscribe_info_screen/subscribe_info_screen.dart';
import '/screens/subscribe_info_screen/unsubscribe_confirm_dialog.dart';
import '/screens/subscribe_info_screen/unsubscribe_screen.dart';
import '/screens/zip_code_screen/personal_info_form_zip_code_screen.dart';

// ignore_for_file: avoid_redundant_argument_values
/// 개발 중 Auth 필터링 꺼두고 싶을 때 false로 설정.
const requireAuth = false;
const initialLocation = AppGatewayScreen.routeName;

final pages = [
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
    requireAuth: requireAuth,
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
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: SchedulesScreen.routeName,
    builder: (context, params) => const SchedulesScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: SmartKeyScreen.routeName,
    builder: (context, params) => const SmartKeyScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: MyPageScreen.routeName,
    builder: (context, params) => const MyPageScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: CardListScreen.routeName,
    builder: (context, params) => const CardListScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: AnotherIsUsingScreen.routeName,
    builder: (context, params) => const AnotherIsUsingScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: NoSubscriptionScreen.routeName,
    builder: (context, params) => const NoSubscriptionScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: SubscribeInfoScreen.routeName,
    builder: (context, params) => const SubscribeInfoScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: ContactUsEmptyHistoryScreen.routeName,
    builder: (context, params) => const ContactUsEmptyHistoryScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: ContactUsHistoryScreen.routeName,
    builder: (context, params) => const ContactUsHistoryScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: UnsubscribeScreen.routeName,
    builder: (context, params) => const UnsubscribeScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: CardRegisterScreen.routeName,
    builder: (context, params) => const CardRegisterScreen(),
  ),
  AppRoute(
    path: NoticesScreen.routeName,
    builder: (context, params) => const NoticesScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: OneOnOneScreen.routeName,
    builder: (context, params) => const OneOnOneScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: ExpiringSubscriptionsScreen.routeName,
    builder: (context, params) => const ExpiringSubscriptionsScreen(),
    requireAuth: requireAuth,
  ),
  AppRoute(
    path: AppGatewayScreen.routeName,
    builder: (context, params) => const AppGatewayScreen(),
  ),
];

final dialogues = [
  GoRoute(
    name: '팀 초대하기',
    path: SendInvitationDialog.routeName,
    pageBuilder: (context, state) =>
        DialogPage(builder: (_) => const SendInvitationDialog()),
  ),
  GoRoute(
    name: '예약 확인 (다이얼로그)',
    path: ViewScheduledDateDialog.routeName,
    pageBuilder: (context, state) =>
        DialogPage(builder: (_) => const ViewScheduledDateDialog()),
  ),
  GoRoute(
    name: '예약하기 (바텀시트)',
    path: DatetimePickerBottomSheet.routeName,
    pageBuilder: (context, state) =>
        DialogPage(builder: (_) => const DatetimePickerBottomSheet()),
  ),
  GoRoute(
    name: '해지 확인',
    path: UnsubscribeConfirmDialog.routeName,
    pageBuilder: (context, state) =>
        DialogPage(builder: (_) => const UnsubscribeConfirmDialog()),
  ),
];
