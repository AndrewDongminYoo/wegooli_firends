// 🐦 Flutter imports:
import 'controller/app_navigation_controller.dart';
import '/core/app_export.dart';
import 'package:flutter/material.dart';
import '/ui/send_invitation_leader_only_dialog/send_invitation_leader_only_dialog.dart';
import '/ui/send_invitation_leader_only_dialog/controller/send_invitation_leader_only_controller.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/view_scheduled_date_scheduler_only_dialog.dart';
import '/ui/view_scheduled_date_scheduler_only_dialog/controller/view_scheduled_date_scheduler_only_controller.dart';
import '/ui/appointment_all_collapsed_bottomsheet/appointment_all_collapsed_bottomsheet.dart';
import '/ui/appointment_all_collapsed_bottomsheet/controller/appointment_all_collapsed_controller.dart';
import '/ui/appointment_start_expanded_bottomsheet/appointment_start_expanded_bottomsheet.dart';
import '/ui/appointment_start_expanded_bottomsheet/controller/appointment_start_expanded_controller.dart';
import '/ui/appointment_end_expanded_bottomsheet/appointment_end_expanded_bottomsheet.dart';
import '/ui/appointment_end_expanded_bottomsheet/controller/appointment_end_expanded_controller.dart';
import '/ui/unsubscribe_confirm_dialog/unsubscribe_confirm_dialog.dart';
import '/ui/unsubscribe_confirm_dialog/controller/unsubscribe_confirm_controller.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/schedules_send_invitation_leader_only_dialog.dart';
import '/ui/schedules_send_invitation_leader_only_dialog/controller/schedules_send_invitation_leader_only_controller.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/schedules_view_scheduled_date_scheduler_only_dialog.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_dialog/controller/schedules_view_scheduled_date_scheduler_only_controller.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/schedules_view_scheduled_date_scheduler_only_expanded_dialog.dart';
import '/ui/schedules_view_scheduled_date_scheduler_only_expanded_dialog/controller/schedules_view_scheduled_date_scheduler_only_expanded_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onSecondary,
            body: SizedBox(
                width: 375.h,
                child: Column(children: [
                  Container(
                      decoration: AppDecoration.fillOnSecondary,
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20.h, vertical: 10.v),
                                child: Text('lbl_app_navigation'.tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.black900,
                                        fontSize: 20.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 20.h),
                                child: Text('msg_check_your_app_s'.tr,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: appTheme.blueGray400,
                                        fontSize: 16.fSize,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w400)))),
                        SizedBox(height: 5.v),
                        Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.black900)
                      ])),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Container(
                              decoration: AppDecoration.fillOnSecondary,
                              child: Column(children: [
                                GestureDetector(
                                    onTap: onTapIdentityVerificationWaiting,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_identity_verification'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSendInvitationLeaderOnly,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_send_invitation'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapViewScheduledDateSchedulerOnly,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_view_scheduled_date'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapAppointmentAllCollapsed,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_appointment_all'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapAppointmentStartExpanded,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_appointment_start'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapAppointmentEndExpanded,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_appointment_end'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapUnsubscribeConfirm,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_unsubscribe_confirm'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSignUpComplete,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_signup_complete'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapNoticesOne,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_notices_one'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapNoticesNoNotice,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_notices_no_notice'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSchedulesContainer,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_schedules_container'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap:
                                        onTapSchedulesSendInvitationLeaderOnly,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_schedules_send'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSignInPage,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_signin_page'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap:
                                        onTapIdentityVerificationTermsBottomSheet,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_identity_verification2'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapIdentityVerificationEmpty,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_identity_verification3'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapIdentityVerificationFilled,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_identity_verification4'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapPersonalInfoFormZipCode,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_personal_info_form'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSplashScreenOne,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_splash_screen_one'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSplashScreenTwo,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_splash_screen_two'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapLicenseRegister,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_license_register'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap:
                                        onTapIdentityVerificationFilledwithTelecom,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_identity_verification5'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap:
                                        onTapIdentityVerificationWaitingwithTelecom,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_identity_verification6'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapHomePage,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_home_page'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSchedulesTeamisnotFull,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_schedules_team'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSchedulesTeamisFull,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_schedules_team2'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSmartKey,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_smart_key'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapMyPage,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text('lbl_my_page'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapCardList,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_card_list'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap:
                                        onTapSchedulesViewScheduledDateSchedulerOnly,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_schedules_view'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap:
                                        onTapSchedulesViewScheduledDateSchedulerOnlyExpanded,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_schedules_view2'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSmartKeyAnotherIsCurrentlyUsing,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_smart_key_another'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSubscribeInfoNoSubscription,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_subscribe_info_no'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapSubscribeInfo,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_subscribe_info'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapContactUsEmptyHistory,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_contact_us_empty'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap:
                                        onTapContactUsInquiryHistoryExpandedTabContainer,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_contact_us_inquiry'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapUnsubscribe,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_unsubscribe'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapCardRegister,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'lbl_card_register'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapNotices,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text('lbl_notices'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapContactUs11ContactUs,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_contact_us_1_1'.tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ]))),
                                GestureDetector(
                                    onTap: onTapExpiringSubscriptions,
                                    child: Container(
                                        decoration:
                                            AppDecoration.fillOnSecondary,
                                        child: Column(children: [
                                          Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20.h,
                                                      vertical: 10.v),
                                                  child: Text(
                                                      'msg_expiring_subscriptions'
                                                          .tr,
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                          color:
                                                              appTheme.black900,
                                                          fontSize: 20.fSize,
                                                          fontFamily: 'Roboto',
                                                          fontWeight: FontWeight
                                                              .w400)))),
                                          SizedBox(height: 5.v),
                                          Divider(
                                              height: 1.v,
                                              thickness: 1.v,
                                              color: appTheme.blueGray400)
                                        ])))
                              ]))))
                ]))));
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
