import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/presentation/terms_bottomsheet/terms_bottomsheet.dart';
import 'package:wegooli_friends_public/presentation/terms_bottomsheet/controller/terms_controller.dart';
import 'package:wegooli_friends_public/presentation/sending_invitation_dialog/sending_invitation_dialog.dart';
import 'package:wegooli_friends_public/presentation/sending_invitation_dialog/controller/sending_invitation_controller.dart';
import 'package:wegooli_friends_public/presentation/book_datetime_picker_bottomsheet/book_datetime_picker_bottomsheet.dart';
import 'package:wegooli_friends_public/presentation/book_datetime_picker_bottomsheet/controller/book_datetime_picker_controller.dart';

class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onSecondary,
            body: SizedBox(
                width: getHorizontalSize(375),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.fillOnSecondary,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                        child: Text("lbl_app_navigation".tr,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: appTheme.black900,
                                                fontSize: getFontSize(20),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20),
                                        child: Text("msg_check_your_app_s".tr,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: appTheme.blueGray400,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)))),
                                Padding(
                                    padding: getPadding(top: 5),
                                    child: Divider(
                                        height: getVerticalSize(1),
                                        thickness: getVerticalSize(1),
                                        color: appTheme.black900))
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  decoration: AppDecoration.fillOnSecondary,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapOne();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg26".tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTaptf();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl9".tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTaptf1();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl159".tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSplash();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_splash"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapIdpwlogin();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_id_pw_login"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapModifyprofile();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_modify_profile"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapPhoneauth();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_phone_auth"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapRegistercreditcard();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_register_credit_card"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapAcceptterms();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_accept_terms"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTerms();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_terms"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapUnsubscribewarn();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_unsubscribe_warn"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSendinginvitation();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_sending_invitation"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapBookdatetimepicker();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_book_datetime_picker"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapCalendar();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_calendar"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSettings();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_settings"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapUpcomingunsubscription();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_upcoming_unsubscription"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSmartkeyavailable();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_smart_key_available"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSubscriptioninfo();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "msg_subscription_info"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapCarstatusinfo();
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnSecondary,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "lbl_car_status_info"
                                                                      .tr,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 5),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: appTheme
                                                                  .blueGray400))
                                                    ])))
                                      ]))))
                    ]))));
  }

  /// Navigates to the oneScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the oneScreen.
  onTapOne() {
    Get.toNamed(
      AppRoutes.oneScreen,
    );
  }

  /// Navigates to the k1Screen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the k1Screen.
  onTaptf() {
    Get.toNamed(
      AppRoutes.k1Screen,
    );
  }

  /// Navigates to the k2Screen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the k2Screen.
  onTaptf1() {
    Get.toNamed(
      AppRoutes.k2Screen,
    );
  }

  /// Navigates to the splashScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the splashScreen.
  onTapSplash() {
    Get.toNamed(
      AppRoutes.splashScreen,
    );
  }

  /// Navigates to the idPwLoginScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the idPwLoginScreen.
  onTapIdpwlogin() {
    Get.toNamed(
      AppRoutes.idPwLoginScreen,
    );
  }

  /// Navigates to the modifyProfileScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the modifyProfileScreen.
  onTapModifyprofile() {
    Get.toNamed(
      AppRoutes.modifyProfileScreen,
    );
  }

  /// Navigates to the phoneAuthScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the phoneAuthScreen.
  onTapPhoneauth() {
    Get.toNamed(
      AppRoutes.phoneAuthScreen,
    );
  }

  /// Navigates to the registerCreditCardScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the registerCreditCardScreen.
  onTapRegistercreditcard() {
    Get.toNamed(
      AppRoutes.registerCreditCardScreen,
    );
  }

  /// Navigates to the acceptTermsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the acceptTermsScreen.
  onTapAcceptterms() {
    Get.toNamed(
      AppRoutes.acceptTermsScreen,
    );
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [TermsBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [TermsController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapTerms() {
    Get.bottomSheet(
      TermsBottomsheet(
        Get.put(
          TermsController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  /// Navigates to the unsubscribeWarnScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the unsubscribeWarnScreen.
  onTapUnsubscribewarn() {
    Get.toNamed(
      AppRoutes.unsubscribeWarnScreen,
    );
  }

  /// Displays a dialog with the [SendingInvitationDialog] content.
  ///
  /// The [SendingInvitationDialog] widget is created with a new
  /// instance of the [SendingInvitationController],
  /// which is obtained using the Get.put() method.
  onTapSendinginvitation() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: SendingInvitationDialog(
        Get.put(
          SendingInvitationController(),
        ),
      ),
    ));
  }

  /// Displays a scrollable bottom sheet widget using the [Get] package
  /// and the [BookDatetimePickerBottomsheet] widget.
  ///
  /// The bottom sheet is controlled by the [BookDatetimePickerController]
  /// and is displayed using the [Get.bottomSheet] method with
  /// [isScrollControlled] set to true.

  onTapBookdatetimepicker() {
    Get.bottomSheet(
      BookDatetimePickerBottomsheet(
        Get.put(
          BookDatetimePickerController(),
        ),
      ),
      isScrollControlled: true,
    );
  }

  /// Navigates to the calendarScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the calendarScreen.
  onTapCalendar() {
    Get.toNamed(
      AppRoutes.calendarScreen,
    );
  }

  /// Navigates to the settingsScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the settingsScreen.
  onTapSettings() {
    Get.toNamed(
      AppRoutes.settingsScreen,
    );
  }

  /// Navigates to the upcomingUnsubscriptionScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the upcomingUnsubscriptionScreen.
  onTapUpcomingunsubscription() {
    Get.toNamed(
      AppRoutes.upcomingUnsubscriptionScreen,
    );
  }

  /// Navigates to the smartKeyAvailableScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the smartKeyAvailableScreen.
  onTapSmartkeyavailable() {
    Get.toNamed(
      AppRoutes.smartKeyAvailableScreen,
    );
  }

  /// Navigates to the subscriptionInfoScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the subscriptionInfoScreen.
  onTapSubscriptioninfo() {
    Get.toNamed(
      AppRoutes.subscriptionInfoScreen,
    );
  }

  /// Navigates to the carStatusInfoScreen when the action is triggered.

  /// When the action is triggered, this function uses the [Get] package to
  /// push the named route for the carStatusInfoScreen.
  onTapCarstatusinfo() {
    Get.toNamed(
      AppRoutes.carStatusInfoScreen,
    );
  }
}
