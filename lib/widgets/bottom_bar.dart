// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      iconPath: Assets.svg.imgCalOnPrimary.path,
      activeIconPath: Assets.svg.imgCalOnPrimary.path,
      title: Localized.message.schedule,
      type: BottomBarEnum.sharedSchedule,
    ),
    BottomMenuModel(
      iconPath: Assets.svg.imgKeyGray400.path,
      activeIconPath: Assets.svg.imgKeyGray400.path,
      title: Localized.message.chat,
      type: BottomBarEnum.dashChat,
    ),
    BottomMenuModel(
      iconPath: Assets.svg.imgKeyGray400.path,
      activeIconPath: Assets.svg.imgKeyGray400.path,
      title: Localized.message.smartKey,
      type: BottomBarEnum.smartKey,
    ),
    BottomMenuModel(
      iconPath: Assets.svg.imgUser2.path,
      activeIconPath: Assets.svg.imgUser2.path,
      title: Localized.message.myPage,
      type: BottomBarEnum.profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
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
                    color: theme.colorScheme.secondaryContainer,
                  ),
                  Padding(
                    padding: getPadding(top: 4),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallInterSecondaryContainer
                          .copyWith(
                        letterSpacing: getHorizontalSize(0.02),
                        color: theme.colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].activeIconPath,
                    height: getSize(24),
                    width: getSize(24),
                    color: theme.colorScheme.onPrimary,
                  ),
                  Padding(
                    padding: getPadding(top: 4),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallInter.copyWith(
                        letterSpacing: getHorizontalSize(0.02),
                        color: theme.colorScheme.onPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
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

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
