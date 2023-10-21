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
import '/ui/contact_us_1_1_contact_us_screen/contact_us_1_1_contact_us_screen.dart';
import '/ui/contact_us_empty_history_screen/contact_us_empty_history_screen.dart';
import '/ui/contact_us_inquiry_history_expanded_tab_container_screen/contact_us_inquiry_history_expanded_tab_container_screen.dart';
import '/ui/expiring_subscriptions_screen/expiring_subscriptions_screen.dart';
import '/ui/home_page_screen/home_page_screen.dart';
import '/ui/identity_verification_empty_screen/identity_verification_empty_screen.dart';
import '/ui/identity_verification_filled_screen/identity_verification_filled_screen.dart';
import '/ui/identity_verification_terms_bottomsheet_screen/identity_verification_terms_bottomsheet_screen.dart';
import '/ui/identity_verification_waiting_screen/identity_verification_waiting_screen.dart';
import '/ui/license_register_screen/license_register_screen.dart';
import '/ui/my_page_screen/my_page_screen.dart';
import '/ui/notices_no_notice_screen/notices_no_notice_screen.dart';
import '/ui/notices_one_screen/notices_one_screen.dart';
import '/ui/notices_screen/notices_screen.dart';
import '/ui/personal_info_form_zip_code_screen/personal_info_form_zip_code_screen.dart';
import '/ui/schedules_container_screen/schedules_container_screen.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/controller/schedules_send_invitation_leader_only_controller.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/schedules_send_invitation_leader_only_dialog.dart';
import '/ui/schedules_team_is_full_screen/schedules_team_is_full_screen.dart';
import '/ui/schedules_team_is_not_full_screen/schedules_team_is_not_full_screen.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/controller/schedules_view_scheduled_date_scheduler_only_controller.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/schedules_view_scheduled_date_scheduler_only_dialog.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/controller/schedules_view_scheduled_date_scheduler_only_expanded_controller.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/schedules_view_scheduled_date_scheduler_only_expanded_dialog.dart';
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
import '/ui/view_scheduled_date_scheduler_only_dialog/controller/view_scheduled_date_scheduler_only_controller.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/view_scheduled_date_scheduler_only_dialog.dart';
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
                          dialogTitle:
                              'Schedules View Scheduled Dated / Expanded',
                          dialog: SchedulesViewScheduledDateExpandedDialog(
                            Get.put(
                              SchedulesViewScheduledDateExpandedController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'Send Invitation',
                          dialog: SendInvitationLeaderOnlyDialog(
                            Get.put(
                              SendInvitationLeaderOnlyController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'View Scheduled Date',
                          dialog: ViewScheduledDateDialog(
                            Get.put(
                              ViewScheduledDateController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'Appointment / Collapsed',
                          bottomSheet: AppointmentAllCollapsedBottomsheet(
                            Get.put(
                              AppointmentAllCollapsedController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'Appointment / Start',
                          bottomSheet: AppointmentStartExpandedBottomsheet(
                            Get.put(
                              AppointmentStartExpandedController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'Appointment / End',
                          bottomSheet: AppointmentEndExpandedBottomsheet(
                            Get.put(
                              AppointmentEndExpandedController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'Unsubscribe / Confirm',
                          dialog: UnsubscribeConfirmDialog(
                            Get.put(
                              UnsubscribeConfirmController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'View Scheduled Date',
                          dialog: SchedulesViewScheduledDateDialog(
                            Get.put(
                              SchedulesViewScheduledDateController(),
                            ),
                          ),
                        ),
                        RouteModal(
                          dialogTitle: 'Send Invitation',
                          dialog: SchedulesSendInvitationLeaderOnlyDialog(
                            Get.put(
                              SchedulesSendInvitationLeaderOnlyController(),
                            ),
                          ),
                        ),
                        const RouteItem(
                          routeName: 'Verification / Waiting',
                          routeDestination: VerificationWaitingScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'SignUp Complete',
                          routeDestination: SignupCompleteScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Notices',
                          routeDestination: NoticesScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Notices',
                          routeDestination: NoticesOneScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'No Notice',
                          routeDestination: EmptyNoticeScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Schedules - Container',
                          routeDestination: SchedulesContainerScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'SignIn',
                          routeDestination: SigninPageScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Verification / BottomSheet',
                          routeDestination: TermsBottomsheet.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Verification / Empty',
                          routeDestination: VerificationEmptyScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Verification / Filled',
                          routeDestination: VerificationFilledScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Zip Code',
                          routeDestination:
                              PersonalInfoFormZipCodeScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: '스플래시스크린 1',
                          routeDestination: SplashScreenOne.routeName,
                        ),
                        const RouteItem(
                          routeName: '스플래시스크린 2',
                          routeDestination: SplashScreenTwo.routeName,
                        ),
                        const RouteItem(
                          routeName: 'License Register',
                          routeDestination: LicenseRegisterScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Home',
                          routeDestination: HomePageScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Schedules / Team is not Full',
                          routeDestination:
                              SchedulesTeamIsNotFullScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Schedules / Team is Full',
                          routeDestination: SchedulesTeamsFull.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Smart Key',
                          routeDestination: SmartKeyScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'My Page',
                          routeDestination: MyPageScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Card List',
                          routeDestination: CardListScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Another is Currently Using Car',
                          routeDestination:
                              SmartKeyAnotherIsCurrentlyUsingScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Subscribe Info (No Subscription)',
                          routeDestination: NoSubscriptionScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Subscribe Info',
                          routeDestination: SubscribeInfoScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Empty History',
                          routeDestination:
                              ContactUsEmptyHistoryScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Inquiry History',
                          routeDestination:
                              ContactUsInquiryHistoryScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Unsubscribe',
                          routeDestination: UnsubscribeScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Card Register',
                          routeDestination: CardRegisterScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Notices',
                          routeDestination: NoticesScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: '1:1 Contact Us',
                          routeDestination: OneOnOneScreen.routeName,
                        ),
                        const RouteItem(
                          routeName: 'Expiring Subscriptions',
                          routeDestination:
                              ExpiringSubscriptionsScreen.routeName,
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
