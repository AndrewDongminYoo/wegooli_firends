// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:wegooli_friends/data/models/models.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/screens/screens.dart';

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
        return AppRoutes.myProfilePage;
      default:
        return AppRoutes.sharedCalendar;
    }
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    UserDTO currentUser =
        Get.find<LoginWithIdAndPasswordController>().currentUser.value;
    List<String> otherUserIds = Get.find<LoginWithIdAndPasswordController>()
        .members
        .map((it) => it.accountId as String)
        .toList();
    print('currentUser $currentUser');
    print('otherUserIds $otherUserIds');
    switch (currentRoute) {
      case AppRoutes.chatWithFriends:
        // TODO
        // 로그인한 사용자 정보 넣기 !!
        // 팀 정보 넣기
        return DashChatWithFriendsPage(
          appId: "36FB6EA9-27A7-44F1-9696-72E1E21033B6",
          userId: currentUser.id as String,
          otherUserIds: otherUserIds,
        );
      case AppRoutes.smartKeyAvailable:
        return SmartKeyAvailablePage();
      case AppRoutes.myProfilePage:
        return MyProfilePage();
      default:
        return SharedCalendar();
    }
  }
}
