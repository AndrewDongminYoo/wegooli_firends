// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class BottomTabRouterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Future<dynamic>? navigateToCurrentRoute(BottomBarEnum type) {
        print('type ${type.toString()}');
        /// Handling route based on bottom click actions
        String getCurrentRoute(BottomBarEnum type) {
          switch (type) {
            case BottomBarEnum.dashChat:
              return AppRoutes.chatWithTeam;
            case BottomBarEnum.smartKey:
              return AppRoutes.smartKeyAvailable;
            case BottomBarEnum.profile:
              return AppRoutes.myProfile;
            default:
              return AppRoutes.sharedSchedule;
          }
        }
        print('getCurrentRoute(type): ${getCurrentRoute(type)}');
        return Get.toNamed(getCurrentRoute(type));
      }

      navigateToCurrentRoute(type);
    });
  }
  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chatWithTeam:
        return DashChatWithFriendsPage();
      case AppRoutes.smartKeyAvailable:
        return SmartKeyAvailablePage();
      case AppRoutes.myProfile:
        return MyProfilePage();
      default:
        return SharedCalendar();
    }
  }
}
