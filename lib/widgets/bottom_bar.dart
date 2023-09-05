// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomNavBar extends StatefulWidget {
  CustomBottomNavBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  Function(BottomBarEnum)? onChanged;
  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
        iconPath: Assets.svg.imgCalOnPrimary.path,
        activeIconPath: Assets.svg.imgCalOnPrimary.path,
        title: l10ns.schedule,
        type: BottomBarEnum.sharedSchedule),
    BottomMenuModel(
        iconPath: Assets.svg.imgChatGray400.path,
        activeIconPath: Assets.svg.imgChatGray400.path,
        title: l10ns.chat,
        type: BottomBarEnum.dashChat),
    BottomMenuModel(
        iconPath: Assets.svg.imgKeyGray400.path,
        activeIconPath: Assets.svg.imgKeyGray400.path,
        title: l10ns.smartKey,
        type: BottomBarEnum.smartKey),
    BottomMenuModel(
        iconPath: Assets.svg.imgUser2.path,
        activeIconPath: Assets.svg.imgUser2.path,
        title: l10ns.myPage,
        type: BottomBarEnum.profile)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        height: getVerticalSize(65),
        decoration: BoxDecoration(
            border: Border(
                top: BorderSide(
                    color: appTheme.blueGray30033,
                    width: getHorizontalSize(1)))),
        child: Obx(
          () => BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: selectedIndex.value,
            type: BottomNavigationBarType.fixed,
            items: List.generate(bottomMenuList.length, (index) {
              return BottomNavigationBarItem(
                  icon: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: bottomMenuList[index].iconPath,
                            height: getSize(24),
                            width: getSize(24),
                            color: appTheme.gray400),
                        Padding(
                            padding: getPadding(top: 4),
                            child: Text(bottomMenuList[index].title ?? "",
                                style: CustomTextStyles.bodySmallInter10Gray400
                                    .copyWith(color: appTheme.gray400)))
                      ]),
                  activeIcon: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: bottomMenuList[index].activeIconPath,
                          height: getSize(24),
                          width: getSize(24),
                          color: theme.colorScheme.onPrimary),
                      Padding(
                        padding: getPadding(top: 4),
                        child: Text(
                          bottomMenuList[index].title ?? "",
                          style: CustomTextStyles.bodySmallInterOnPrimary,
                        ),
                      ),
                    ],
                  ),
                  label: '');
            }),
            onTap: (index) {
              selectedIndex.value = index;
              widget.onChanged?.call(bottomMenuList[index].type);
            },
          ),
        ));
  }
}

enum BottomBarEnum {
  sharedSchedule,
  dashChat,
  smartKey,
  profile,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.iconPath,
    required this.activeIconPath,
    this.title,
    required this.type,
  });

  String iconPath;
  String activeIconPath;
  String? title;
  BottomBarEnum type;
}
