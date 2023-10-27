// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
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
import '/theme/theme_helper.dart';
import 'widgets/gateway_title.dart';
import 'widgets/route_item.dart';

class AppGatewayScreen extends StatelessWidget {
  const AppGatewayScreen({super.key});
  static const routeName = '/app_gateway';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightTheme.onSecondary,
        body: SizedBox(
          width: 375.w,
          child: Column(
            children: [
              const GatewayTitle(),
              const CheckYourAppUI(),
              Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Divider(
                      height: 5.h, thickness: 5.h, color: Palette.blueGray400)),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(color: lightTheme.onSecondary),
                    child: const Column(
                      children: [
                        RouteItem(
                          title: '스플래시 스크린 1',
                          routeName: SplashScreenOne.routeName,
                        ),
                        RouteItem(
                          title: '스플래시 스크린 2',
                          routeName: SplashScreenTwo.routeName,
                        ),
                        RouteItem(
                          title: '홈',
                          routeName: HomePageScreen.routeName,
                        ),
                        RouteItem(
                          title: '팀 초대하기',
                          routeName: SendInvitationDialog.routeName,
                        ),
                        RouteItem(
                          title: '일정 확인',
                          routeName: SchedulesScreen.routeName,
                        ),
                        RouteItem(
                          title: '예약 확인 (다이얼로그)',
                          routeName: ViewScheduledDateDialog.routeName,
                        ),
                        RouteItem(
                          title: '예약하기 (바텀시트)',
                          routeName: DatetimePickerBottomSheet.routeName,
                        ),
                        RouteItem(
                          title: '로그인',
                          routeName: SigninPageScreen.routeName,
                        ),
                        RouteItem(
                          title: '전화 인증 (입력 전)',
                          routeName: VerificationEmptyScreen.routeName,
                        ),
                        RouteItem(
                          title: '전화 인증 (대기 중)',
                          routeName: VerificationWaitingScreen.routeName,
                        ),
                        RouteItem(
                          title: '전화 인증 (입력 완)',
                          routeName: VerificationFilledScreen.routeName,
                        ),
                        RouteItem(
                          title: '주소 입력',
                          routeName: PersonalInfoFormZipCodeScreen.routeName,
                        ),
                        RouteItem(
                          title: '면허증 입력',
                          routeName: LicenseRegisterScreen.routeName,
                        ),
                        RouteItem(
                          title: '카드 입력',
                          routeName: CardRegisterScreen.routeName,
                        ),
                        RouteItem(
                          title: '가입 완료',
                          routeName: SignupCompleteScreen.routeName,
                        ),
                        RouteItem(
                          title: '스마트키',
                          routeName: SmartKeyScreen.routeName,
                        ),
                        RouteItem(
                          title: '스마트키 (사용중)',
                          routeName: AnotherIsUsingScreen.routeName,
                        ),
                        RouteItem(
                          title: '마이 페이지',
                          routeName: MyPageScreen.routeName,
                        ),
                        RouteItem(
                          title: '카드 목록',
                          routeName: CardListScreen.routeName,
                        ),
                        RouteItem(
                          title: '구독 정보',
                          routeName: SubscribeInfoScreen.routeName,
                        ),
                        RouteItem(
                          title: '구독 해지',
                          routeName: UnsubscribeScreen.routeName,
                        ),
                        RouteItem(
                          title: '해지 확인',
                          routeName: UnsubscribeConfirmDialog.routeName,
                        ),
                        RouteItem(
                          title: '구독 정보 (만료 예정)',
                          routeName: ExpiringSubscriptionsScreen.routeName,
                        ),
                        RouteItem(
                          title: '구독 정보 (구독 없음)',
                          routeName: NoSubscriptionScreen.routeName,
                        ),
                        RouteItem(
                          title: '1:1 문의 (문의없음)',
                          routeName: ContactUsEmptyHistoryScreen.routeName,
                        ),
                        RouteItem(
                          title: '1:1 문의 (문의하기)',
                          routeName: OneOnOneScreen.routeName,
                        ),
                        RouteItem(
                          title: '1:1 문의 (문의내역)',
                          routeName: ContactUsHistoryScreen.routeName,
                        ),
                        RouteItem(
                          title: '공지사항',
                          routeName: NoticesScreen.routeName,
                        ),
                        RouteItem(
                          title: '공지사항 없음',
                          routeName: EmptyNoticeScreen.routeName,
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
