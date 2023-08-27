// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/screens/screens.dart';
import 'widgets/app_navigation_title.dart';
import 'widgets/check_ui_message.dart';
import 'widgets/open_dialog.dart';
import 'widgets/open_screen.dart';

// ignore: must_be_immutable
class GatewayScreen extends StatelessWidget {
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
                                AppNavigationTitle(),
                                CheckYourAppUIMessage(),
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
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.splashScreen,
                                            routeName:
                                                "splashLoadingScreen".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.logInIdPassword,
                                            routeName:
                                                "loginWithIdAndPassword".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.acceptTerms,
                                            routeName: "signupAcceptTerms".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.validatePhone,
                                            routeName:
                                                "loginValidatePhoneAuth".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerZipCode,
                                            routeName:
                                                "loginRegisterZipCode".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerLicense,
                                            routeName:
                                                "loginRegisterLicensePage".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerCredits,
                                            routeName:
                                                "loginRegisterCreditCard".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.signUpSuccess,
                                            routeName:
                                                "loginRegisterSuccessPage".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.sharedSchedule,
                                            routeName: "teamScheduleShare".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.smartKeyUnavailable,
                                            routeName:
                                                "smartKeyNotAvailable".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registeredCardList,
                                            routeName:
                                                "registeredCreditCardList".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.carStatusInfo,
                                            routeName:
                                                "carStatusInformation".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.carStatusInfo2,
                                            routeName:
                                                "carStatusInformation".tr),
                                        RouteModal(
                                            dialog: openInvitationModal,
                                            dialogTitle:
                                                "sendingCrewInvitation".tr),
                                        RouteModal(
                                            dialog: openCheckReservations,
                                            dialogTitle:
                                                "reservationsCheckingPage".tr),
                                        RouteModal(
                                            bottomSheet: openDateTimePicker,
                                            dialogTitle:
                                                "reservationDatetimePicker".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionConfirm,
                                            routeName:
                                                "unsubscriptionConfirm".tr),
                                        RouteModal(
                                            dialog: alertDialog,
                                            dialogTitle:
                                                "unsubscriptionConfirmWarn".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionInfo,
                                            routeName:
                                                "upcomingUnsubscriptionInfo"
                                                    .tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionInfo2,
                                            routeName:
                                                "upcomingUnsubscriptionView"
                                                    .tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.subscriptionNoService,
                                            routeName:
                                                "subscriptionInfoNoService".tr),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.smartKeyAvailable,
                                            routeName: "스마트키")
                                      ]))))
                    ]))));
  }

  Widget alertDialog = AlertDialog(
    backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.zero,
    insetPadding: EdgeInsets.only(left: 0),
    content: UnsubscriptionConfirmWarnDialog(),
  );

  Widget openInvitationModal = AlertDialog(
    backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.zero,
    insetPadding: const EdgeInsets.only(left: 0),
    content: SendingCrewInvitationDialog(SendingCrewInvitationController.to),
  );

  Widget openCheckReservations = AlertDialog(
    backgroundColor: Colors.transparent,
    contentPadding: EdgeInsets.zero,
    insetPadding: const EdgeInsets.only(left: 0),
    content: ReservationsCheckingPageDialog(),
  );

  Widget openDateTimePicker = ReservationDatetimePickerBottomSheet(
      ReservationDatetimePickerController.to);
}
