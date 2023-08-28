// 🐦 Flutter imports:
import 'package:flutter/material.dart';

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
    AppLocalizations msg = Localized.message;
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
                                            routeName: msg.splashLoadingScreen),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.logInIdPassword,
                                            routeName:
                                                msg.loginWithIdAndPassword),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.acceptTerms,
                                            routeName: msg.signupAcceptTerms),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.validatePhone,
                                            routeName:
                                                msg.loginValidatePhoneAuth),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerZipCode,
                                            routeName:
                                                msg.loginRegisterZipCode),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerLicense,
                                            routeName:
                                                msg.loginRegisterLicensePage),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerCredits,
                                            routeName:
                                                msg.loginRegisterCreditCard),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.signUpSuccess,
                                            routeName:
                                                msg.loginRegisterSuccessPage),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.sharedSchedule,
                                            routeName: msg.teamScheduleShare),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.smartKeyUnavailable,
                                            routeName:
                                                msg.smartKeyNotAvailable),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registeredCardList,
                                            routeName:
                                                msg.registeredCreditCardList),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.carStatusInfo,
                                            routeName: AppLocalizationsKo()
                                                .carStatusInformation),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.carStatusInfo2,
                                            routeName:
                                                msg.carStatusInformation),
                                        RouteModal(
                                            dialog: openInvitationModal,
                                            dialogTitle:
                                                msg.sendingCrewInvitation),
                                        RouteModal(
                                            dialog: openCheckReservations,
                                            dialogTitle:
                                                msg.reservationsCheckingPage),
                                        RouteModal(
                                            bottomSheet: openDateTimePicker,
                                            dialogTitle:
                                                msg.reservationDatetimePicker),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionConfirm,
                                            routeName:
                                                msg.unsubscriptionConfirm),
                                        RouteModal(
                                            dialog: alertDialog,
                                            dialogTitle:
                                                msg.unsubscriptionConfirmWarn),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionInfo,
                                            routeName:
                                                msg.upcomingUnsubscriptionInfo),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionInfo2,
                                            routeName:
                                                msg.upcomingUnsubscriptionView),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.subscriptionNoService,
                                            routeName:
                                                msg.subscriptionInfoNoService),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.smartKeyAvailable,
                                            routeName: msg.smartKey)
                                      ]))))
                    ]))));
  }

  Widget alertDialog = AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.only(left: 0),
      content: UnsubscriptionConfirmWarnDialog());

  Widget openInvitationModal = AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: SendingCrewInvitationDialog(SendingCrewInvitationController.to));

  Widget openCheckReservations = AlertDialog(
      backgroundColor: Colors.transparent,
      contentPadding: EdgeInsets.zero,
      insetPadding: const EdgeInsets.only(left: 0),
      content: ReservationsCheckingPageDialog());

  Widget openDateTimePicker = ReservationDatetimePickerBottomSheet(
      ReservationDatetimePickerController.to);
}
