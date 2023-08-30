// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class GatewayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                                        /// `RouteItem`은 경로 목록의 단일 항목을 나타내는 위젯입니다. 경로 이름을 표시하고 탭 시 해당
                                        /// 경로로의 탐색을 처리하는 데 사용됩니다.
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.splashScreen,
                                            routeName:
                                                l10ns.splashLoadingScreen),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.logInIdPassword,
                                            routeName:
                                                l10ns.loginWithIdAndPassword),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.acceptTerms,
                                            routeName: l10ns.signupAcceptTerms),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.validatePhone,
                                            routeName:
                                                l10ns.loginValidatePhoneAuth),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerZipCode,
                                            routeName:
                                                l10ns.loginRegisterZipCode),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerLicense,
                                            routeName:
                                                l10ns.loginRegisterLicensePage),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registerCredits,
                                            routeName:
                                                l10ns.loginRegisterCreditCard),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.signUpSuccess,
                                            routeName:
                                                l10ns.loginRegisterSuccessPage),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.sharedSchedule,
                                            routeName: l10ns.teamScheduleShare),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.smartKeyUnavailable,
                                            routeName:
                                                l10ns.smartKeyNotAvailable),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.registeredCardList,
                                            routeName:
                                                l10ns.registeredCreditCardList),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.carStatusInfo,
                                            routeName: AppLocalizationsKo()
                                                .carStatusInformation),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.carStatusInfo2,
                                            routeName:
                                                l10ns.carStatusInformation),
                                        RouteModal(
                                            dialog: openInvitationModal,
                                            dialogTitle:
                                                l10ns.sendingCrewInvitation),
                                        RouteModal(
                                            dialog: openCheckReservations,
                                            dialogTitle:
                                                l10ns.reservationsCheckingPage),
                                        RouteModal(
                                            bottomSheet: openDateTimePicker,
                                            dialogTitle: l10ns
                                                .reservationDatetimePicker),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionConfirm,
                                            routeName:
                                                l10ns.unsubscriptionConfirm),
                                        RouteModal(
                                            dialog: alertDialog,
                                            dialogTitle: l10ns
                                                .unsubscriptionConfirmWarn),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionInfo,
                                            routeName: l10ns
                                                .upcomingUnsubscriptionInfo),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.unsubscriptionInfo2,
                                            routeName: l10ns
                                                .upcomingUnsubscriptionView),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.subscriptionNoService,
                                            routeName: l10ns
                                                .subscriptionInfoNoService),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.smartKeyAvailable,
                                            routeName: l10ns.smartKeyAvailable),
                                        RouteItem(
                                            routeDestination:
                                                AppRoutes.myProfilePage,
                                            routeName: l10ns.myPage),
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
