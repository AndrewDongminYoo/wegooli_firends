// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

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
      height: 65.v,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray30033,
            width: 1.h,
          ),
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedFontSize: 10.fSize,
          unselectedFontSize: 10.fSize,
          elevation: 0,
          iconSize: 20.adaptSize,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorConstant.fontBlack,
          unselectedItemColor: appTheme.gray400,
          selectedIconTheme: const IconThemeData(
              color: ColorConstant.fontBlack), // 선택된 아이콘 스타일
          unselectedIconTheme: IconThemeData(color: appTheme.gray400),
          selectedLabelStyle: CustomTextStyles.bodySmallInterOnPrimary,
          unselectedLabelStyle: CustomTextStyles.bodySmallInter10Gray400
              .copyWith(color: appTheme.gray400),
          items: List.generate(bottomMenuList.length, (index) {
            return BottomNavigationBarItem(
              icon: Container(
                  margin: getMargin(bottom: 5),
                  child:
                      Icon(bottomMenuList[index].iconData, size: 20.adaptSize)),
              label: bottomMenuList[index].title ?? '',
            );
          }),
          onTap: (int index) {
            final page = switch (index) {
              1 => AppRoutes.chatWithTeam,
              2 => AppRoutes.carSmartKey,
              3 => AppRoutes.myProfile,
              _ => AppRoutes.sharedSchedule
            };
            setState(() {
              selectedIndex.value = index;
              selectedIndex.refresh();
            });
            // print('widget.id ${widget.id}');
            Get.toNamed(
              page,
              id: widget.id,
              arguments: bottomMenuList[index],
            );
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
