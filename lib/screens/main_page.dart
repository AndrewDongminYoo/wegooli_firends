// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
      return const LoginPage();
    }
    switch (settings.name) {
      case AppRoutes.sharedSchedule:
        return const SharedCalendar();
      case AppRoutes.teamInvitation:
        return const TeamInvitation();
      case AppRoutes.bookDatetimePicker:
        return DatetimePickerBottomSheet();
      case AppRoutes.reservationsCheck:
        return const ReservationsCheckingPageDialog();
      case AppRoutes.chatWithTeam:
        return const DashChatWithFriendsPage();
      case AppRoutes.carSmartKey:
        return const CarStatusPage();
      case AppRoutes.carStatusInfo:
        return const CarStatusDetail();
      case AppRoutes.registeredCardList:
        return const MyProfileCardList();
      case AppRoutes.myProfile:
        return const MyProfilePage();
      case AppRoutes.profileInfoPage:
        return const MyProfileDetail();
      case AppRoutes.noSubscription:
        return const NoSubscription();
      case AppRoutes.unsubscribeConfirm:
        return const UnsubscriptionConfirm();
      case AppRoutes.upcomingUnsubscription:
        return const UnsubscriptionUpcoming();
      default:
        return const SharedCalendar();
    }
  }
}
