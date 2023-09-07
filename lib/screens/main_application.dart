// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:wegooli_friends/screens/team.invitation.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class MainApplication extends StatefulWidget {
  const MainApplication({super.key});

  @override
  State<MainApplication> createState() => _MainApplicationState();
}

class _MainApplicationState extends State<MainApplication> {
  final userController = UserController.to;

  @override
  Widget build(BuildContext context) {
    print('userController.teams.length ${userController.teams.length}');
    final id = 1;
    final navigatorKey = Get.nestedKey(id);
    return Scaffold(
      body: Navigator(
          key: navigatorKey,
          initialRoute: userController.teams.length > 0
              ? AppRoutes.sharedSchedule
              : AppRoutes.teamInvitation,
          onGenerateRoute: (settings) {
            late Widget page;
            switch (settings.name) {
              case AppRoutes.chatWithTeam:
                page = const DashChatWithFriendsPage();
              case AppRoutes.carSmartKey:
                page = const SmartKeyAvailablePage();
              case AppRoutes.myProfile:
                page = const MyProfilePage();
              case AppRoutes.teamInvitation:
                page = TeamInvitation();
              default:
                page = const SharedCalendar();
            }
            return GetPageRoute(
              settings: settings,
              page: () => page,
              transition: Transition.noTransition,
            );
          }),
      bottomNavigationBar: CustomBottomNavBar(id: id),
    );
  }
}
