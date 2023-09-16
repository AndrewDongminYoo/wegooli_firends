// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

Widget getPages(RouteSettings settings) {
  final controller = UserController.to;
  StatefulWidget checkAuth(String? name) =>
      !controller.isAuthenticated ? const MainPage() : const LoginPage();
  final page = switch (settings.name) {
    AppRoutes.bookDatetimePicker => checkAuth(settings.name),
    AppRoutes.carSmartKey => checkAuth(settings.name),
    AppRoutes.carStatusInfo => checkAuth(settings.name),
    AppRoutes.chatWithTeam => checkAuth(settings.name),
    AppRoutes.myProfile => checkAuth(settings.name),
    AppRoutes.noSubscription => checkAuth(settings.name),
    AppRoutes.profileInfoPage => checkAuth(settings.name),
    AppRoutes.registeredCardList => checkAuth(settings.name),
    AppRoutes.reservationsCheck => checkAuth(settings.name),
    AppRoutes.sharedSchedule => checkAuth(settings.name),
    AppRoutes.teamInvitation => checkAuth(settings.name),
    AppRoutes.unsubscribeConfirm => checkAuth(settings.name),
    AppRoutes.upcomingUnsubscription => checkAuth(settings.name),
    AppRoutes.appGateway => const GatewayScreen(),
    AppRoutes.idPwLogin => const LoginPage(),
    AppRoutes.acceptTerms => const AcceptTerms(),
    AppRoutes.phoneAuth => const RegisterPhone(),
    AppRoutes.acceptTermsDetail => const AcceptTermsDetail(),
    AppRoutes.registerCreditCard => const RegisterCreditCard(),
    AppRoutes.registerLicense => const RegisterLicense(),
    AppRoutes.registerZipCode => const RegisterZipCode(),
    AppRoutes.registerSuccess => const RegisterSuccess(),
    _ => (kDebugMode || kProfileMode)
        ? const GatewayScreen()
        : const SplashLoading(),
  };
  return page;
}
