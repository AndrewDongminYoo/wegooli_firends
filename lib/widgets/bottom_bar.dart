// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: Assets.svg.icoNavOnprimary20x20.path,
      activeIcon: Assets.svg.icoNavOnprimary20x20.path,
      title: '홈',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: Assets.svg.icoNavBlueGray200.path,
      activeIcon: Assets.svg.icoNavBlueGray200.path,
      title: '일정',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: Assets.svg.icoNavBlueGray20020x20.path,
      activeIcon: Assets.svg.icoNavBlueGray20020x20.path,
      title: '채팅',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: Assets.svg.icoNav20x20.path,
      activeIcon: Assets.svg.icoNav20x20.path,
      title: '스마트 키',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: Assets.svg.icoNav1.path,
      activeIcon: Assets.svg.icoNav1.path,
      title: '마이페이지',
      type: BottomBarEnum.tf,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.v,
      decoration: BoxDecoration(
        color: lightTheme.onPrimaryContainer,
        border: Border(
          top: BorderSide(
            color: const Color(0xFFF3F3F6),
            width: 1.h,
          ),
        ),
      ),
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
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    color: const Color(0xFFB0B2BC),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Text(
                      bottomMenuList[index].title ?? '',
                      style: textTheme.bodySmall!.copyWith(
                        fontSize: 10.fSize,
                        color: const Color(0xFFB0B2BC),
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].activeIcon,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    color: lightTheme.onPrimary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Text(
                      bottomMenuList[index].title ?? '',
                      style: textTheme.bodySmall!.copyWith(
                        fontSize: 10.fSize,
                        color: lightTheme.onPrimary,
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
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;
  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: const Center(
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
