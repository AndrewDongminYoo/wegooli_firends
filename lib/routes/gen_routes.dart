// 🐦 Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

Widget getPages(RouteSettings settings) {
  final controller = UserController.to;
  var page = switch (settings.name) {
    AppRoutes.appGateway => const GatewayScreen(),
    AppRoutes.idPwLogin => const LoginWithIdAndPassword(),
    AppRoutes.acceptTerms => const AcceptTerms(),
    AppRoutes.phoneAuth => const ValidatePhone(),
    AppRoutes.acceptTermsDetail => const TermsOfUseView(),
    AppRoutes.registerCreditCard => const RegisterCreditCard(),
    AppRoutes.registerLicense => const RegisterLicense(),
    AppRoutes.registerZipCode => const RegisterZipCode(),
    AppRoutes.registerSuccess => const RegisterSuccess(),
    AppRoutes.sharedSchedule => const MainApplication(),
    AppRoutes.teamInvitation => const TeamInvitation(),
    AppRoutes.bookDatetimePicker => const DatetimePickerBottomSheet(),
    AppRoutes.reservationsCheck => const ReservationsCheckingPageDialog(),
    AppRoutes.chatWithTeam => const DashChatWithFriendsPage(),
    AppRoutes.carSmartKey => const SmartKeyAvailablePage(),
    AppRoutes.carStatusInfo => const CarStatusInformation(),
    AppRoutes.registeredCardList => const RegisteredCreditCardList(),
    AppRoutes.myProfile => const MyProfilePage(),
    AppRoutes.profileInfoPage => const ProfileInfoPage(),
    AppRoutes.noSubscription => const SubscriptionInfoNoService(),
    AppRoutes.unsubscribeConfirm => const UnsubscriptionConfirm(),
    AppRoutes.upcomingUnsubscription => const UpcomingUnsubscription(),
    _ => (kDebugMode || kProfileMode)
        ? const GatewayScreen()
        : const SplashLoading(),
  };
  if (!controller.isAuthenticated && settings.name != null) {
    final need = [
      AppRoutes.sharedSchedule,
      AppRoutes.teamInvitation,
      AppRoutes.bookDatetimePicker,
      AppRoutes.reservationsCheck,
      AppRoutes.chatWithTeam,
      AppRoutes.carSmartKey,
      AppRoutes.carStatusInfo,
      AppRoutes.registeredCardList,
      AppRoutes.myProfile,
      AppRoutes.profileInfoPage,
      AppRoutes.noSubscription,
      AppRoutes.unsubscribeConfirm,
      AppRoutes.upcomingUnsubscription,
    ];
    if (need.contains(settings.name)) {
      page = const LoginWithIdAndPassword();
    }
  }
  return page;
}
