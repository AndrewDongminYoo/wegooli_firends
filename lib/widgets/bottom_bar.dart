// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(
          key: key,
        );

  final RxInt selectedIndex = 0.obs;

  final List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      iconPath: Assets.svg.imgCalGray.path,
      activeIconPath: Assets.svg.imgCalGray.path,
      title: "lbl46".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      iconPath: Assets.svg.imgKeyWhite.path,
      activeIconPath: Assets.svg.imgKeyWhite.path,
      title: "lbl47".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      iconPath: Assets.svg.imgChatWhite.path,
      activeIconPath: Assets.svg.imgChatWhite.path,
      title: "lbl48".tr,
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      iconPath: Assets.svg.imgPersonWhite.path,
      activeIconPath: Assets.svg.imgPersonWhite.path,
      title: "lbl49".tr,
      type: BottomBarEnum.tf,
    )
  ];

  final Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.blueGray30033,
            width: getHorizontalSize(
              1,
            ),
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
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    color: appTheme.gray400,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallInterGray400.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.02,
                        ),
                        color: appTheme.gray400,
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
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    color: theme.colorScheme.onPrimary,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 4,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.bodySmallInter.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.02,
                        ),
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
  tf,
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
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
