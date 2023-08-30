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
        print('type $type');

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
}
