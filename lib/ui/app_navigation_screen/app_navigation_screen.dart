// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';
import '/ui/appointment_all_collapsed_bottomsheet/appointment_all_collapsed_bottomsheet.dart';
import '/ui/appointment_all_collapsed_bottomsheet/controller/appointment_all_collapsed_controller.dart';
import '/ui/appointment_end_expanded_bottomsheet/appointment_end_expanded_bottomsheet.dart';
import '/ui/appointment_end_expanded_bottomsheet/controller/appointment_end_expanded_controller.dart';
import '/ui/appointment_start_expanded_bottomsheet/appointment_start_expanded_bottomsheet.dart';
import '/ui/appointment_start_expanded_bottomsheet/controller/appointment_start_expanded_controller.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/controller/schedules_send_invitation_leader_only_controller.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/schedules_send_invitation_leader_only_dialog.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/controller/schedules_view_scheduled_date_scheduler_only_controller.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/schedules_view_scheduled_date_scheduler_only_dialog.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/controller/schedules_view_scheduled_date_scheduler_only_expanded_controller.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/schedules_view_scheduled_date_scheduler_only_expanded_dialog.dart';
import '/ui/send_invitation_leader_only_dialog/controller/send_invitation_leader_only_controller.dart';
import '/ui/send_invitation_leader_only_dialog/send_invitation_leader_only_dialog.dart';
import '/ui/unsubscribe_confirm_dialog/controller/unsubscribe_confirm_controller.dart';
import '/ui/unsubscribe_confirm_dialog/unsubscribe_confirm_dialog.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/controller/view_scheduled_date_scheduler_only_controller.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/view_scheduled_date_scheduler_only_dialog.dart';
import 'controller/app_navigation_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: lightTheme.onSecondary,
        body: SizedBox(
          width: 375.h,
          child: Column(children: [
            Container(
                decoration: BoxDecoration(
                  color: lightTheme.onSecondary,
                ),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.h, vertical: 10.v),
                          child: Text(
                            'Gateway',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ))),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text(
                            "Check your app's UI from the below demo screens of your app.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: const Color(0xFF888888),
                              fontSize: 16.fSize,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                            ),
                          ))),
                  SizedBox(height: 5.v),
                  Divider(height: 1.v, thickness: 1.v, color: Colors.black)
                ])),
            Expanded(
                child: SingleChildScrollView(
                    child: Container(
                        decoration: BoxDecoration(
                          color: lightTheme.onSecondary,
                        ),
                        child: Column(children: [
                          GestureDetector(
                            onTap: onTapIdentityVerificationWaiting,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Verification / Waiting',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSendInvitationLeaderOnly,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Send Invitation',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapViewScheduledDateSchedulerOnly,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'View Scheduled Date',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapAppointmentAllCollapsed,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Appointment / Collapsed',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapAppointmentStartExpanded,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Appointment / Start',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapAppointmentEndExpanded,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Appointment / End',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapUnsubscribeConfirm,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Unsubscribe / Confirm',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSignUpComplete,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'SignUp Complete',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapNoticesOne,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Notices',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapNoticesNoNotice,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'No Notice',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSchedulesContainer,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Schedules - Container',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSchedulesSendInvitationLeaderOnly,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Send Invitation',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSignInPage,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'SignIn',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapIdentityVerificationTermsBottomSheet,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Verification / BottomSheet',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapIdentityVerificationEmpty,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Verification / Empty',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapIdentityVerificationFilled,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Verification / Filled',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapPersonalInfoFormZipCode,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Zip Code',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSplashScreenOne,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            '스플래시스크린 1',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSplashScreenTwo,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            '스플래시스크린 2',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapLicenseRegister,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'License Register',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapIdentityVerificationFilledwithTelecom,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Verification / Filled Telecom',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapIdentityVerificationWaitingwithTelecom,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Verification / Waiting',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapHomePage,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Home',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSchedulesTeamisnotFull,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Schedules / Team is not Full',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSchedulesTeamisFull,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Schedules / Team is Full',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSmartKey,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Smart Key',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapMyPage,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'My Page',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapCardList,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Card List',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSchedulesViewScheduledDateSchedulerOnly,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'View Scheduled Date',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:
                                onTapSchedulesViewScheduledDateSchedulerOnlyExpanded,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'View Scheduled Date Expanded',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSmartKeyAnotherIsCurrentlyUsing,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Another is Currently Using Car',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSubscribeInfoNoSubscription,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Subscribe Info (No Subscription)',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapSubscribeInfo,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Subscribe Info',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapContactUsEmptyHistory,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Empty History',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:
                                onTapContactUsInquiryHistoryExpandedTabContainer,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Inquiry History',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapUnsubscribe,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Unsubscribe',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapCardRegister,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Card Register',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapNotices,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            'Notices',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: onTapContactUs11ContactUs,
                            child: Container(
                              decoration: BoxDecoration(
                                color: lightTheme.onSecondary,
                              ),
                              child: Column(
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 20.h, vertical: 10.v),
                                          child: Text(
                                            '1:1 Contact Us',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20.fSize,
                                              fontFamily: 'Roboto',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ))),
                                  SizedBox(height: 5.v),
                                  Divider(
                                      height: 1.v,
                                      thickness: 1.v,
                                      color: const Color(0xFF888888))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                              onTap: onTapExpiringSubscriptions,
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: lightTheme.onSecondary,
                                  ),
                                  child: Column(children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20.h,
                                                vertical: 10.v),
                                            child: Text(
                                              'Expiring Subscriptions',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20.fSize,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ))),
                                    SizedBox(height: 5.v),
                                    Divider(
                                        height: 1.v,
                                        thickness: 1.v,
                                        color: const Color(0xFF888888))
                                  ])))
                        ]))))
          ]),
        ),
      ),
    );
  }

  /// Navigates to the identityVerificationWaitingScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the identityVerificationWaitingScreen.
  void onTapIdentityVerificationWaiting() {
    Get.toNamed(
      AppRoutes.identityVerificationWaitingScreen,
    );
  }

  /// Displays a dialog with the [SendInvitationLeaderOnlyDialog] content.
  ///
  /// The [SendInvitationLeaderOnlyDialog] widget is created with a new
  /// instance of the [SendInvitationLeaderOnlyController],
  /// which is obtained using the Get.put() method.
  void onTapSendInvitationLeaderOnly() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SendInvitationLeaderOnlyDialog(
        Get.put(
          SendInvitationLeaderOnlyController(),
        ),
      ),
    ));
  }

  /// Displays a dialog with the [ViewScheduledDateSchedulerOnlyDialog] content.
  ///
  /// The [ViewScheduledDateSchedulerOnlyDialog] widget is created with a new
  /// instance of the [ViewScheduledDateSchedulerOnlyController],
  /// which is obtained using the Get.put() method.
  void onTapViewScheduledDateSchedulerOnly() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: ViewScheduledDateSchedulerOnlyDialog(
        Get.put(
          ViewScheduledDateSchedulerOnlyController(),
        ),
      ),
    ));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [AppointmentAllCollapsedBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [AppointmentAllCollapsedController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  void onTapAppointmentAllCollapsed() {
    Get.bottomSheet(
      AppointmentAllCollapsedBottomsheet(
        Get.put(
          AppointmentAllCollapsedController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [AppointmentStartExpandedBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [AppointmentStartExpandedController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  void onTapAppointmentStartExpanded() {
    Get.bottomSheet(
      AppointmentStartExpandedBottomsheet(
        Get.put(
          AppointmentStartExpandedController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [AppointmentEndExpandedBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [AppointmentEndExpandedController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  void onTapAppointmentEndExpanded() {
    Get.bottomSheet(
      AppointmentEndExpandedBottomsheet(
        Get.put(
          AppointmentEndExpandedController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  /// Displays a dialog with the [UnsubscribeConfirmDialog] content.
  ///
  /// The [UnsubscribeConfirmDialog] widget is created with a new
  /// instance of the [UnsubscribeConfirmController],
  /// which is obtained using the Get.put() method.
  void onTapUnsubscribeConfirm() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: UnsubscribeConfirmDialog(
        Get.put(
          UnsubscribeConfirmController(),
        ),
      ),
    ));
  }

  /// Navigates to the signupCompleteScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signupCompleteScreen.
  void onTapSignUpComplete() {
    Get.toNamed(
      AppRoutes.signupCompleteScreen,
    );
  }

  /// Navigates to the noticesOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the noticesOneScreen.
  void onTapNoticesOne() {
    Get.toNamed(
      AppRoutes.noticesOneScreen,
    );
  }

  /// Navigates to the noticesNoNoticeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the noticesNoNoticeScreen.
  void onTapNoticesNoNotice() {
    Get.toNamed(
      AppRoutes.noticesNoNoticeScreen,
    );
  }

  /// Navigates to the schedulesContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the schedulesContainerScreen.
  void onTapSchedulesContainer() {
    Get.toNamed(
      AppRoutes.schedulesContainerScreen,
    );
  }

  /// Displays a dialog with the [SchedulesSendInvitationLeaderOnlyDialog] content.
  ///
  /// The [SchedulesSendInvitationLeaderOnlyDialog] widget is created with a new
  /// instance of the [SchedulesSendInvitationLeaderOnlyController],
  /// which is obtained using the Get.put() method.
  void onTapSchedulesSendInvitationLeaderOnly() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SchedulesSendInvitationLeaderOnlyDialog(
        Get.put(
          SchedulesSendInvitationLeaderOnlyController(),
        ),
      ),
    ));
  }

  /// Navigates to the signinPageScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the signinPageScreen.
  void onTapSignInPage() {
    Get.toNamed(
      AppRoutes.signinPageScreen,
    );
  }

  /// Navigates to the identityVerificationTermsBottomsheetScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the identityVerificationTermsBottomsheetScreen.
  void onTapIdentityVerificationTermsBottomSheet() {
    Get.toNamed(
      AppRoutes.identityVerificationTermsBottomsheetScreen,
    );
  }

  /// Navigates to the identityVerificationEmptyScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the identityVerificationEmptyScreen.
  void onTapIdentityVerificationEmpty() {
    Get.toNamed(
      AppRoutes.identityVerificationEmptyScreen,
    );
  }

  /// Navigates to the identityVerificationFilledScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the identityVerificationFilledScreen.
  void onTapIdentityVerificationFilled() {
    Get.toNamed(
      AppRoutes.identityVerificationFilledScreen,
    );
  }

  /// Navigates to the personalInfoFormZipCodeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the personalInfoFormZipCodeScreen.
  void onTapPersonalInfoFormZipCode() {
    Get.toNamed(
      AppRoutes.personalInfoFormZipCodeScreen,
    );
  }

  /// Navigates to the splashScreenOneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashScreenOneScreen.
  void onTapSplashScreenOne() {
    Get.toNamed(
      AppRoutes.splashScreenOneScreen,
    );
  }

  /// Navigates to the splashScreenTwoScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashScreenTwoScreen.
  void onTapSplashScreenTwo() {
    Get.toNamed(
      AppRoutes.splashScreenTwoScreen,
    );
  }

  /// Navigates to the licenseRegisterScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the licenseRegisterScreen.
  void onTapLicenseRegister() {
    Get.toNamed(
      AppRoutes.licenseRegisterScreen,
    );
  }

  /// Navigates to the identityVerificationFilledWithTelecomScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the identityVerificationFilledWithTelecomScreen.
  void onTapIdentityVerificationFilledwithTelecom() {
    Get.toNamed(
      AppRoutes.identityVerificationFilledWithTelecomScreen,
    );
  }

  /// Navigates to the identityVerificationWaitingWithTelecomScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the identityVerificationWaitingWithTelecomScreen.
  void onTapIdentityVerificationWaitingwithTelecom() {
    Get.toNamed(
      AppRoutes.identityVerificationWaitingWithTelecomScreen,
    );
  }

  /// Navigates to the homePageScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the homePageScreen.
  void onTapHomePage() {
    Get.toNamed(
      AppRoutes.homePageScreen,
    );
  }

  /// Navigates to the schedulesTeamIsNotFullScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the schedulesTeamIsNotFullScreen.
  void onTapSchedulesTeamisnotFull() {
    Get.toNamed(
      AppRoutes.schedulesTeamIsNotFullScreen,
    );
  }

  /// Navigates to the schedulesTeamIsFullScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the schedulesTeamIsFullScreen.
  void onTapSchedulesTeamisFull() {
    Get.toNamed(
      AppRoutes.schedulesTeamIsFullScreen,
    );
  }

  /// Navigates to the smartKeyScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the smartKeyScreen.
  void onTapSmartKey() {
    Get.toNamed(
      AppRoutes.smartKeyScreen,
    );
  }

  /// Navigates to the myPageScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the myPageScreen.
  void onTapMyPage() {
    Get.toNamed(
      AppRoutes.myPageScreen,
    );
  }

  /// Navigates to the cardListScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the cardListScreen.
  void onTapCardList() {
    Get.toNamed(
      AppRoutes.cardListScreen,
    );
  }

  /// Displays a dialog with the [SchedulesViewScheduledDateSchedulerOnlyDialog] content.
  ///
  /// The [SchedulesViewScheduledDateSchedulerOnlyDialog] widget is created with a new
  /// instance of the [SchedulesViewScheduledDateSchedulerOnlyController],
  /// which is obtained using the Get.put() method.
  void onTapSchedulesViewScheduledDateSchedulerOnly() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SchedulesViewScheduledDateSchedulerOnlyDialog(
        Get.put(
          SchedulesViewScheduledDateSchedulerOnlyController(),
        ),
      ),
    ));
  }

  /// Displays a dialog with the [SchedulesViewScheduledDateSchedulerOnlyExpandedDialog] content.
  ///
  /// The [SchedulesViewScheduledDateSchedulerOnlyExpandedDialog] widget is created with a new
  /// instance of the [SchedulesViewScheduledDateSchedulerOnlyExpandedController],
  /// which is obtained using the Get.put() method.
  void onTapSchedulesViewScheduledDateSchedulerOnlyExpanded() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      content: SchedulesViewScheduledDateSchedulerOnlyExpandedDialog(
        Get.put(
          SchedulesViewScheduledDateSchedulerOnlyExpandedController(),
        ),
      ),
    ));
  }

  /// Navigates to the smartKeyAnotherIsCurrentlyUsingScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the smartKeyAnotherIsCurrentlyUsingScreen.
  void onTapSmartKeyAnotherIsCurrentlyUsing() {
    Get.toNamed(
      AppRoutes.smartKeyAnotherIsCurrentlyUsingScreen,
    );
  }

  /// Navigates to the subscribeInfoNoSubscriptionScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the subscribeInfoNoSubscriptionScreen.
  void onTapSubscribeInfoNoSubscription() {
    Get.toNamed(
      AppRoutes.subscribeInfoNoSubscriptionScreen,
    );
  }

  /// Navigates to the subscribeInfoScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the subscribeInfoScreen.
  void onTapSubscribeInfo() {
    Get.toNamed(
      AppRoutes.subscribeInfoScreen,
    );
  }

  /// Navigates to the contactUsEmptyHistoryScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the contactUsEmptyHistoryScreen.
  void onTapContactUsEmptyHistory() {
    Get.toNamed(
      AppRoutes.contactUsEmptyHistoryScreen,
    );
  }

  /// Navigates to the contactUsInquiryHistoryExpandedTabContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the contactUsInquiryHistoryExpandedTabContainerScreen.
  void onTapContactUsInquiryHistoryExpandedTabContainer() {
    Get.toNamed(
      AppRoutes.contactUsInquiryHistoryExpandedTabContainerScreen,
    );
  }

  /// Navigates to the unsubscribeScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the unsubscribeScreen.
  void onTapUnsubscribe() {
    Get.toNamed(
      AppRoutes.unsubscribeScreen,
    );
  }

  /// Navigates to the cardRegisterScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the cardRegisterScreen.
  void onTapCardRegister() {
    Get.toNamed(
      AppRoutes.cardRegisterScreen,
    );
  }

  /// Navigates to the noticesScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the noticesScreen.
  void onTapNotices() {
    Get.toNamed(
      AppRoutes.noticesScreen,
    );
  }

  /// Navigates to the contactUs11ContactUsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the contactUs11ContactUsScreen.
  void onTapContactUs11ContactUs() {
    Get.toNamed(
      AppRoutes.contactUs11ContactUsScreen,
    );
  }

  /// Navigates to the expiringSubscriptionsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the expiringSubscriptionsScreen.
  void onTapExpiringSubscriptions() {
    Get.toNamed(
      AppRoutes.expiringSubscriptionsScreen,
    );
  }
}
