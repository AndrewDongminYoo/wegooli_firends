// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/ui/card_screen/card_list_screen.dart';
import '/ui/card_screen/card_register_screen.dart';
import '/ui/contact_us_screen/contact_us_empty_history_screen.dart';
import '/ui/contact_us_screen/contact_us_history_screen.dart';
import '/ui/contact_us_screen/one_on_one_screen.dart';
import '/ui/home_page_screen/home_page_screen.dart';
import '/ui/identify_screen/identity_verification_empty_screen.dart';
import '/ui/identify_screen/identity_verification_filled_screen.dart';
import '/ui/identify_screen/identity_verification_waiting_screen.dart';
import '/ui/license_screen/license_register_screen.dart';
import '/ui/my_page_screen/my_page_screen.dart';
import '/ui/notices_screen/empty_notice_screen.dart';
import '/ui/notices_screen/notices_screen.dart';
import '/ui/scheduled_date_dialog/view_scheduled_date_dialog.dart';
import '/ui/schedules_screen/datetime_picker_bottom_sheet.dart';
import '/ui/schedules_screen/schedules_screen.dart';
import '/ui/send_invitation_dialog/send_invitation_dialog.dart';
import '/ui/signin_page_screen/signin_page_screen.dart';
import '/ui/signin_page_screen/signup_complete_screen.dart';
import '/ui/smart_key_screen/another_is_using_screen.dart';
import '/ui/smart_key_screen/smart_key_screen.dart';
import '/ui/splash_screen/splash_screen_one_screen.dart';
import '/ui/splash_screen/splash_screen_two_screen.dart';
import '/ui/subscribe_info_screen/expiring_subscriptions_screen.dart';
import '/ui/subscribe_info_screen/subscribe_info_no_subscription_screen.dart';
import '/ui/subscribe_info_screen/subscribe_info_screen.dart';
import '/ui/subscribe_info_screen/unsubscribe_confirm_dialog.dart';
import '/ui/subscribe_info_screen/unsubscribe_screen.dart';
import '/ui/zip_code_screen/personal_info_form_zip_code_screen.dart';
import 'widgets/gateway_title.dart';
import 'widgets/route_item.dart';
import 'widgets/route_modal.dart';

class AppGatewayScreen extends StatelessWidget {
  const AppGatewayScreen({super.key});
  static const routeName = '/app_gateway';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightTheme.onSecondary,
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              const GatewayTitle(),
              const CheckYourAppUI(),
              Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Divider(
                      height: 5.v, thickness: 5.v, color: Palette.blueGray400)),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(color: lightTheme.onSecondary),
                    child: Column(
                      children: [
                        const RouteItem(
                          title: '스플래시 스크린 1',
                          routeName: SplashScreenOne.routeName,
                        ),
                        const RouteItem(
                          title: '스플래시 스크린 2',
                          routeName: SplashScreenTwo.routeName,
                        ),
                        const RouteItem(
                          title: '홈',
                          routeName: HomePageScreen.routeName,
                        ),
                        RouteModal(
                          title: '팀 초대하기',
                          dialog: SendInvitationDialog(),
                        ),
                        const RouteItem(
                          title: '일정 확인',
                          routeName: SchedulesScreen.routeName,
                        ),
                        RouteModal(
                          title: '예약 확인 (다이얼로그)',
                          dialog: ViewScheduledDateDialog(),
                        ),
                        const RouteModal(
                          title: '예약하기 (바텀시트)',
                          bottomSheet: DatetimePickerBottomSheet(),
                        ),
                        const RouteItem(
                          title: '로그인',
                          routeName: SigninPageScreen.routeName,
                        ),
                        const RouteItem(
                          title: '전화 인증 (입력 전)',
                          routeName: VerificationEmptyScreen.routeName,
                        ),
                        const RouteItem(
                          title: '전화 인증 (대기 중)',
                          routeName: VerificationWaitingScreen.routeName,
                        ),
                        const RouteItem(
                          title: '전화 인증 (입력 완)',
                          routeName: VerificationFilledScreen.routeName,
                        ),
                        const RouteItem(
                          title: '주소 입력',
                          routeName: PersonalInfoFormZipCodeScreen.routeName,
                        ),
                        const RouteItem(
                          title: '면허증 입력',
                          routeName: LicenseRegisterScreen.routeName,
                        ),
                        const RouteItem(
                          title: '카드 입력',
                          routeName: CardRegisterScreen.routeName,
                        ),
                        const RouteItem(
                          title: '가입 완료',
                          routeName: SignupCompleteScreen.routeName,
                        ),
                        const RouteItem(
                          title: '스마트키',
                          routeName: SmartKeyScreen.routeName,
                        ),
                        const RouteItem(
                          title: '스마트키 (사용중)',
                          routeName: AnotherIsUsingScreen.routeName,
                        ),
                        const RouteItem(
                          title: '마이 페이지',
                          routeName: MyPageScreen.routeName,
                        ),
                        const RouteItem(
                          title: '카드 목록',
                          routeName: CardListScreen.routeName,
                        ),
                        const RouteItem(
                          title: '구독 정보',
                          routeName: SubscribeInfoScreen.routeName,
                        ),
                        const RouteItem(
                          title: '구독 해지',
                          routeName: UnsubscribeScreen.routeName,
                        ),
                        RouteModal(
                          title: '해지 확인',
                          dialog: UnsubscribeConfirmDialog(),
                        ),
                        const RouteItem(
                          title: '구독 정보 (만료 예정)',
                          routeName: ExpiringSubscriptionsScreen.routeName,
                        ),
                        const RouteItem(
                          title: '구독 정보 (구독 없음)',
                          routeName: NoSubscriptionScreen.routeName,
                        ),
                        const RouteItem(
                          title: '1:1 문의 (문의없음)',
                          routeName: ContactUsEmptyHistoryScreen.routeName,
                        ),
                        const RouteItem(
                          title: '1:1 문의 (문의하기)',
                          routeName: OneOnOneScreen.routeName,
                        ),
                        const RouteItem(
                          title: '1:1 문의 (문의내역)',
                          routeName: ContactUsHistoryScreen.routeName,
                        ),
                        const RouteItem(
                          title: '공지사항',
                          routeName: NoticesScreen.routeName,
                        ),
                        const RouteItem(
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
