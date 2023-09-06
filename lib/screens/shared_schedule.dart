// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

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
  @override
  Widget build(BuildContext context) {
    final id = 1;
    final navigatorKey = Get.nestedKey(id);
    return Scaffold(
      body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.sharedSchedule,
          onGenerateRoute: (settings) {
            late Widget page;
            switch (settings.name) {
              case AppRoutes.chatWithTeam:
                page = const DashChatWithFriendsPage();
              case AppRoutes.carSmartKey:
                page = const SmartKeyAvailablePage();
              case AppRoutes.myProfile:
                page = const MyProfilePage();
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

class SemanticFloatingButton extends StatelessWidget {
  const SemanticFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Semantics(
      container: true,
      sortKey: const OrdinalSortKey(0),
      child: FloatingActionButton(
        onPressed: () {},
        tooltip: l10ns.buttonTextCreate,
        child: const Icon(Icons.add),
      ),
    );
  }
}
