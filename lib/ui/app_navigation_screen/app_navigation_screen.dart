// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/ui/appointment_all_collapsed_bottomsheet/appointment_all_collapsed_bottomsheet.dart';
import '/ui/appointment_all_collapsed_bottomsheet/controller/appointment_all_collapsed_controller.dart';
import '/ui/appointment_end_expanded_bottomsheet/appointment_end_expanded_bottomsheet.dart';
import '/ui/appointment_end_expanded_bottomsheet/controller/appointment_end_expanded_controller.dart';
import '/ui/appointment_start_expanded_bottomsheet/appointment_start_expanded_bottomsheet.dart';
import '/ui/appointment_start_expanded_bottomsheet/controller/appointment_start_expanded_controller.dart';
import '/ui/card_list_screen/card_list_screen.dart';
import '/ui/card_register_screen/card_register_screen.dart';
import '/ui/contact_us_empty_history_screen/contact_us_empty_history_screen.dart';
import '/ui/contact_us_inquiry_history_expanded_tab_container_screen/contact_us_inquiry_history_expanded_tab_container_screen.dart';
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
import '/ui/scheduled_date_dialog/controller/scheduled_date_controller.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/controller/schedules_send_invitation_leader_only_controller.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/schedules_send_invitation_leader_only_dialog.dart';
import '/ui/schedules_team_is_not_full_screen/schedules_team_is_not_full_screen.dart';
import '/ui/send_invitation_leader_only_dialog/controller/send_invitation_leader_only_controller.dart';
import '/ui/send_invitation_leader_only_dialog/send_invitation_leader_only_dialog.dart';
import '/ui/signin_page_screen/signin_page_screen.dart';
import '/ui/signup_complete_screen/signup_complete_screen.dart';
import '/ui/smart_key_another_is_currently_using_screen/smart_key_another_is_currently_using_screen.dart';
import '/ui/smart_key_screen/smart_key_screen.dart';
import '/ui/splash_screen_one_screen/splash_screen_one_screen.dart';
import '/ui/splash_screen_two_screen/splash_screen_two_screen.dart';
import '/ui/subscribe_info_no_subscription_screen/subscribe_info_no_subscription_screen.dart';
import '/ui/subscribe_info_screen/subscribe_info_screen.dart';
import '/ui/unsubscribe_confirm_dialog/controller/unsubscribe_confirm_controller.dart';
import '/ui/unsubscribe_confirm_dialog/unsubscribe_confirm_dialog.dart';
import '/ui/unsubscribe_screen/unsubscribe_screen.dart';
import '/ui/view_scheduled_date_dialog/view_scheduled_date_dialog.dart';
import 'widgets/gateway_title.dart';
import 'widgets/route_item.dart';
import 'widgets/route_modal.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({super.key});
  static const routeName = '/app_navigation';

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
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: lightTheme.onSecondary,
                    ),
                    child: Column(
                      children: [
                        RouteModal(
                          title: 'Send Invitation',
                          dialog: SendInvitationDialog(
                            Get.put(
                              SendInvitationLeaderOnlyController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          title: 'View Scheduled Date',
                          dialog: ViewScheduledDateDialog(
                            Get.put(
                              ScheduledDateController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          title: 'Appointment / Collapsed',
                          bottomSheet: AppointmentAllCollapsedBottomsheet(
                            Get.put(
                              AppointmentAllCollapsedController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          title: 'Appointment / Start',
                          bottomSheet: AppointmentStartExpandedBottomsheet(
                            Get.put(
                              AppointmentStartExpandedController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          title: 'Appointment / End',
                          bottomSheet: AppointmentEndExpandedBottomsheet(
                            Get.put(
                              AppointmentEndExpandedController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          title: 'Unsubscribe / Confirm',
                          dialog: UnsubscribeConfirmDialog(
                            Get.put(
                              UnsubscribeConfirmController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          title: 'Send Invitation',
                          dialog: SchedulesSendInvitationDialog(
                            Get.put(
                              SchedulesSendInvitationLeaderOnlyController(),
                            ),
                          ),
                        ),
                        const RouteItem(
                          title: 'Verification / Waiting',
                          routeName: VerificationWaitingScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'SignUp Complete',
                          routeName: SignupCompleteScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Notices',
                          routeName: NoticesScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'No Notice',
                          routeName: EmptyNoticeScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'SignIn',
                          routeName: SigninPageScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Verification / Empty',
                          routeName: VerificationEmptyScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Verification / Filled',
                          routeName: VerificationFilledScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Zip Code',
                          routeName: PersonalInfoFormZipCodeScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'SplashScreen 1',
                          routeName: SplashScreenOne.routeName,
                        ),
                        const RouteItem(
                          title: 'SplashScreen 2',
                          routeName: SplashScreenTwo.routeName,
                        ),
                        const RouteItem(
                          title: 'License Register',
                          routeName: LicenseRegisterScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Home',
                          routeName: HomePageScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Schedules',
                          routeName: SchedulesScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Smart Key',
                          routeName: SmartKeyScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'My Page',
                          routeName: MyPageScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Card List',
                          routeName: CardListScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Another is Currently Using Car',
                          routeName:
                              SmartKeyAnotherIsCurrentlyUsingScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Subscribe Info (No Subscription)',
                          routeName: NoSubscriptionScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Subscribe Info',
                          routeName: SubscribeInfoScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Empty History',
                          routeName: ContactUsEmptyHistoryScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Inquiry History',
                          routeName: ContactUsInquiryHistoryScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Unsubscribe',
                          routeName: UnsubscribeScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Card Register',
                          routeName: CardRegisterScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Notices',
                          routeName: NoticesScreen.routeName,
                        ),
                        const RouteItem(
                          title: '1:1 Contact Us',
                          routeName: OneOnOneScreen.routeName,
                        ),
                        const RouteItem(
                          title: 'Expiring Subscriptions',
                          routeName: ExpiringSubscriptionsScreen.routeName,
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
