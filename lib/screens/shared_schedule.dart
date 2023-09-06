// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class TeamScheduleShare extends StatefulWidget {
  const TeamScheduleShare({super.key});

  @override
  State<TeamScheduleShare> createState() => _TeamScheduleShareState();
}

class _TeamScheduleShareState extends State<TeamScheduleShare> {
  ScheduleController controller = ScheduleController.to;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.sharedSchedule,
          onGenerateRoute: (routeSetting) => GetPageRoute(
              page: () => getCurrentPage(routeSetting.name!),
              transition: Transition.noTransition)),
      floatingActionButton: Semantics(
        container: true,
        sortKey: const OrdinalSortKey(0),
        child: FloatingActionButton(
          onPressed: () {},
          tooltip: l10ns.buttonTextCreate,
          child: const Icon(Icons.add),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onChanged: (BottomBarEnum type) {
          Get.toNamed(getCurrentRoute(type), id: 1);
        },
      ),
    );
  }
}

String getCurrentRoute(BottomBarEnum type) {
  switch (type) {
    case BottomBarEnum.dashChat:
      return AppRoutes.chatWithTeam;
    case BottomBarEnum.smartKey:
      return AppRoutes.carSmartKey;
    case BottomBarEnum.profile:
      return AppRoutes.myProfile;
    default:
      return AppRoutes.sharedSchedule;
  }
}

Widget getCurrentPage(String currentRoute) {
  switch (currentRoute) {
    case AppRoutes.chatWithTeam:
      return const DashChatWithFriendsPage();
    case AppRoutes.carSmartKey:
      return const SmartKeyAvailablePage();
    case AppRoutes.myProfile:
      return const MyProfilePage();
    default:
      return const SharedCalendar();
  }
}
