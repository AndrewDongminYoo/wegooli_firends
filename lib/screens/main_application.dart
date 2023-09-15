// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MainApplication extends StatefulWidget {
  const MainApplication({super.key});

  @override
  State<MainApplication> createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  final user = UserController.to;

  @override
  Widget build(BuildContext context) {
    const id = 1;
    final navigatorKey = Get.nestedKey(id);
    return Scaffold(
      body: Navigator(
          key: navigatorKey,
          initialRoute: user.teams.isNotEmpty
              ? AppRoutes.sharedSchedule
              : AppRoutes.teamInvitation,
          onGenerateRoute: (RouteSettings settings) {
            return GetPageRoute(
              settings: settings,
              page: () => getBody(settings),
              transition: Transition.noTransition,
            );
          }),
      bottomNavigationBar: CustomBottomNavBar(id: id),
    );
  }

  Widget getBody(RouteSettings settings) {
    if (!user.isAuthenticated) {
      return const LoginWithIdAndPassword();
    }
    switch (settings.name) {
      case AppRoutes.sharedSchedule:
        return const SharedCalendar();
      case AppRoutes.teamInvitation:
        return const TeamInvitation();
      case AppRoutes.bookDatetimePicker:
        return const DatetimePickerBottomSheet();
      case AppRoutes.reservationsCheck:
        return const ReservationsCheckingPageDialog();
      case AppRoutes.chatWithTeam:
        return const DashChatWithFriendsPage();
      case AppRoutes.carSmartKey:
        return const SmartKeyAvailablePage();
      case AppRoutes.carStatusInfo:
        return const CarStatusInformation();
      case AppRoutes.registeredCardList:
        return const RegisteredCreditCardList();
      case AppRoutes.myProfile:
        return const MyProfilePage();
      case AppRoutes.profileInfoPage:
        return const ProfileInfoPage();
      case AppRoutes.noSubscription:
        return const SubscriptionInfoNoService();
      case AppRoutes.unsubscribeConfirm:
        return const UnsubscriptionConfirm();
      case AppRoutes.upcomingUnsubscription:
        return const UpcomingUnsubscription();
      default:
        return const SharedCalendar();
    }
  }
}
