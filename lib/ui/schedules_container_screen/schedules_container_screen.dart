// 🐦 Flutter imports:
import 'controller/schedules_container_controller.dart';
import '/core/app_export.dart';
import '/ui/profile_page/profile_page.dart';
import '/ui/schedules_page/schedules_page.dart';
import '/ui/send_bird_chat_page/send_bird_chat_page.dart';
import '/ui/smart_key_details_page/smart_key_details_page.dart';
import '/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class SchedulesContainerScreen extends GetWidget<SchedulesContainerController> {
  const SchedulesContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: Get.nestedKey(1),
                initialRoute: AppRoutes.schedulesPage,
                onGenerateRoute: (routeSetting) => GetPageRoute(
                    page: () => getCurrentPage(routeSetting.name!),
                    transition: Transition.noTransition)),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {})));
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.schedulesPage:
        return SchedulesPage();
      case AppRoutes.sendBirdChatPage:
        return SendBirdChatPage();
      case AppRoutes.smartKeyDetailsPage:
        return SmartKeyDetailsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return SchedulesPage();
    }
  }
}
