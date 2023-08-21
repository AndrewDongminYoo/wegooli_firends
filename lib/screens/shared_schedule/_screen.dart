// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/screens/screens.dart';
import '/core/app_export.dart';

class TeamScheduleShare extends GetWidget<TeamScheduleController> {
  const TeamScheduleShare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.sharedCalendar,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  /// Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.dashChat:
        return AppRoutes.chatWithFriends;
      case BottomBarEnum.smartKey:
        return AppRoutes.smartKeyAvailable;
      case BottomBarEnum.profile:
        return AppRoutes.myPage;
      default:
        return AppRoutes.sharedCalendar;
    }
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chatWithFriends:
        return DashChatWithFriendsPage();
      case AppRoutes.smartKeyAvailable:
        return SmartKeyAvailablePage();
      case AppRoutes.myPage:
        return MyProfilePage();
      default:
        return SharedCalendar();
    }
  }
}
