// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class BottomTabRouterBar extends StatelessWidget {
  const BottomTabRouterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Future<dynamic>? navigateToCurrentRoute(BottomBarEnum type) {
        /// Handling route based on bottom click actions
        String getCurrentRoute(BottomBarEnum type) {
          switch (type) {
            case BottomBarEnum.dashChat:
              return AppRoutes.chatWithFriends;
            case BottomBarEnum.smartKey:
              return AppRoutes.smartKeyAvailable;
            case BottomBarEnum.profile:
              return AppRoutes.myProfilePage;
            default:
              return AppRoutes.sharedSchedule;
          }
        }
        return Get.toNamed(getCurrentRoute(type), id: 1);
      }
      navigateToCurrentRoute(type);
    });
  }
}
