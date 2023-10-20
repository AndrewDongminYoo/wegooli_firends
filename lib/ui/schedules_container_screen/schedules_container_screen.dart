// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/ui/profile_page/profile_page.dart';
import '/ui/schedules_page/schedules_page.dart';
import '/ui/send_bird_chat_page/send_bird_chat_page.dart';
import '/ui/smart_key_details_page/smart_key_details_page.dart';

class SchedulesContainerScreen extends StatelessWidget {
  const SchedulesContainerScreen({Key? key}) : super(key: key);
  static const routeName = '/schedules_nav';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: SchedulesPage.routeName,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition))));
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case SchedulesPage.routeName:
        return SchedulesPage();
      case SendBirdChatPage.routeName:
        return SendBirdChatPage();
      case SmartKeyDetailsPage.routeName:
        return SmartKeyDetailsPage();
      case ProfilePage.routeName:
        return ProfilePage();
      default:
        return SchedulesPage();
    }
  }
}
