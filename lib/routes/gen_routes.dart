// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  final users = UserController.to;
  Widget page;
  if (!users.isAuthenticated) {
    page = switch (settings.name) {
      AppRoutes.appGateway => const GatewayScreen(),
      AppRoutes.idPwLogin => const LoginPage(),
      AppRoutes.acceptTerms => const AcceptTerms(),
      AppRoutes.phoneAuth => RegisterPhone(),
      AppRoutes.acceptTermsDetail => const AcceptTermsDetail(),
      AppRoutes.registerCreditCard => const RegisterCreditCard(),
      AppRoutes.registerLicense => const RegisterLicense(),
      AppRoutes.registerZipCode => RegisterZipCode(),
      AppRoutes.registerSuccess => const RegisterSuccess(),
      _ => const SplashLoading(),
    };
  } else {
    page = switch (settings.name) {
      AppRoutes.sharedSchedule => const SharedCalendar(),
      AppRoutes.teamInvitation => const TeamInvitation(),
      AppRoutes.bookDatetimePicker => DatetimePickerBottomSheet(),
      AppRoutes.reservationsCheck => const ReservationsCheckingPageDialog(),
      AppRoutes.chatWithTeam => const DashChatWithFriendsPage(),
      AppRoutes.carSmartKey => const CarStatusPage(),
      AppRoutes.carStatusInfo => const CarStatusDetail(),
      AppRoutes.registeredCardList => const MyProfileCardList(),
      AppRoutes.myProfile => const MyProfilePage(),
      AppRoutes.profileInfoPage => const MyProfileDetail(),
      AppRoutes.noSubscription => const NoSubscription(),
      AppRoutes.unsubscribeConfirm => const UnsubscriptionConfirm(),
      AppRoutes.upcomingUnsubscription => const UnsubscriptionUpcoming(),
      _ => const MainPage(),
    };
  }
  return GetPageRoute<dynamic>(
    settings: settings,
    page: () => page,
    transition: Transition.native,
  );
}
