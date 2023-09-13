// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:wegooli_friends/core/utils/custom_icons.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({
    Key? key,
    required this.id,
  }) : super(key: key);

  final int id;
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final userController = UserController.to;
  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      iconData: CustomIcons.calendar_full,
      title: l10ns.schedule,
    ),
    BottomMenuModel(
      iconData: Icons.chat,
      title: l10ns.chat,
    ),
    BottomMenuModel(
      iconData: CustomIcons.key,
      title: l10ns.smartKey,
    ),
    BottomMenuModel(
      iconData: CustomIcons.user,
      title: l10ns.myPage,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: mediaQueryData.size.width,
      height: getVerticalSize(65),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray30033,
            width: getHorizontalSize(1),
          ),
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: getFontSize(10),
          unselectedFontSize: getFontSize(10),
          elevation: 0,
          iconSize: getSize(20),
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: theme.colorScheme.onPrimary,
          unselectedItemColor: appTheme.gray400,
          selectedIconTheme:
              IconThemeData(color: theme.colorScheme.onPrimary), // 선택된 아이콘 스타일
          unselectedIconTheme: IconThemeData(color: appTheme.gray400),
          selectedLabelStyle: CustomTextStyles.bodySmallInterOnPrimary,
          unselectedLabelStyle: CustomTextStyles.bodySmallInter10Gray400
              .copyWith(color: appTheme.gray400),
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Container(
                  margin: getMargin(bottom: 5),
                  child:
                      Icon(bottomMenuList[index].iconData, size: getSize(20))),
              label: bottomMenuList[index].title ?? '',
            );
          }),
          onTap: (int index) {
            String destination;
            switch (index) {
              case 1:
                destination = userController.teams.isNotEmpty
                    ? AppRoutes.chatWithTeam
                    : AppRoutes.teamInvitation;
              case 2:
                destination = userController.teams.isNotEmpty
                    ? AppRoutes.carSmartKey
                    : AppRoutes.teamInvitation;
              case 3:
                destination = AppRoutes.myProfile;
              default:
                destination = userController.teams.isNotEmpty
                    ? AppRoutes.sharedSchedule
                    : AppRoutes.teamInvitation;
            }
            setState(() {
              selectedIndex.value = index;
              selectedIndex.refresh();
            });
            // print('widget.id ${widget.id}');
            Get.toNamed(destination,
                id: widget.id,
                arguments: bottomMenuList[index],
                preventDuplicates: false);
          },
        ),
      ),
    ));
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.iconData,
    this.title,
  });

  IconData iconData;
  String? title;
}
