// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/data/models/user_dto.dart';
import '/screens/screens.dart';
import 'widgets/bottom_tab_bar_router.dart';

class TeamScheduleShare extends GetWidget<TeamScheduleController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: theme.colorScheme.onPrimaryContainer,
      body: SharedCalendar(),
      bottomNavigationBar: BottomTabRouterBar(),
    ));
  }

  /// Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.chatWithFriends:
        // TODO 로그인한 사용자 정보 넣기 !! 팀 정보 넣기
        UserDTO currentUser =
            Get.find<LoginWithIdAndPasswordController>().currentUser.value;
        List<String> otherUserIds = Get.find<LoginWithIdAndPasswordController>()
            .members
            .map((it) => it.accountId as String)
            .toList();
        print('currentUser $currentUser');
        print('otherUserIds $otherUserIds');
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
