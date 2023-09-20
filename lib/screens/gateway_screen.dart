// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class GatewayScreen extends StatelessWidget {
  const GatewayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              Container(
                  decoration: AppDecoration.fillOnSecondary,
                  child: Column(children: [
                    const GatewayTitle(),
                    const CheckYourAppUI(),
                    Padding(
                        padding: getPadding(top: 5),
                        child: Divider(
                            height: 1.v, thickness: 1.v, color: Colors.black)),
                  ])),
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                    decoration: AppDecoration.fillOnSecondary,
                    child: Column(
                      children: [
                        /// `RouteItem`은 경로 목록의 단일 항목을 나타내는 위젯입니다. 경로 이름을 표시하고 탭 시 해당
                        /// 경로로의 탐색을 처리하는 데 사용됩니다.
                        RouteItem(
                            routeDestination: AppRoutes.splashScreen,
                            routeName: l10ns.splashLoadingScreen),
                        RouteItem(
                            routeDestination: AppRoutes.idPwLogin,
                            routeName: l10ns.loginWithIdAndPassword),
                        RouteItem(
                            routeDestination: AppRoutes.phoneAuth,
                            routeName: l10ns.loginValidatePhoneAuth),
                        RouteItem(
                            routeDestination: AppRoutes.registerZipCode,
                            routeName: l10ns.loginRegisterZipCode),
                        RouteItem(
                            routeDestination: AppRoutes.registerLicense,
                            routeName: l10ns.loginRegisterLicensePage),
                        RouteItem(
                            routeDestination: AppRoutes.registerCreditCard,
                            routeName: l10ns.loginRegisterCreditCard),
                        RouteItem(
                            routeDestination: AppRoutes.registerSuccess,
                            routeName: l10ns.loginRegisterSuccessPage),
                        RouteItem(
                            routeDestination: AppRoutes.sharedSchedule,
                            routeName: l10ns.teamScheduleShare),
                        RouteItem(
                            routeDestination: AppRoutes.registeredCardList,
                            routeName: l10ns.registeredCreditCardList),
                        RouteItem(
                            routeDestination: AppRoutes.carStatusInfo,
                            routeName: l10ns.carStatusInformation),
                        RouteItem(
                            routeDestination: AppRoutes.unsubscribeConfirm,
                            routeName: l10ns.unsubscriptionConfirm),
                        RouteItem(
                            routeDestination: AppRoutes.upcomingUnsubscription,
                            routeName: l10ns.upcomingUnsubscriptionInfo),
                        RouteItem(
                            routeDestination: AppRoutes.noSubscription,
                            routeName: l10ns.subscriptionInfoNoService),
                        RouteItem(
                            routeDestination: AppRoutes.carSmartKey,
                            routeName: l10ns.smartKeyAvailable),
                        RouteItem(
                            routeDestination: AppRoutes.myProfile,
                            routeName: l10ns.myProfileScreen),
                        RouteModal(
                            dialog: const SendingInvitationDialog(),
                            dialogTitle: l10ns.sendingCrewInvitation),
                        RouteModal(
                            dialog: const ReservationsCheckingPageDialog(),
                            dialogTitle: l10ns.reservationsCheckingPage),
                        RouteModal(
                            bottomSheet: const DatetimePickerBottomSheet(),
                            dialogTitle: l10ns.reservationDatetimePicker),
                        RouteModal(
                            bottomSheet: const AcceptTerms(),
                            dialogTitle: l10ns.signupAcceptTerms),
                      ],
                    )),
              )),
            ],
          )),
    ));
  }
}
