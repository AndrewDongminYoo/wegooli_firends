// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavOnPrimary20x20,
      activeIcon: ImageConstant.imgNavOnPrimary20x20,
      title: '홈',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavBlueGray200,
      activeIcon: ImageConstant.imgNavBlueGray200,
      title: '일정',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavBlueGray20020x20,
      activeIcon: ImageConstant.imgNavBlueGray20020x20,
      title: '채팅',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNav20x20,
      activeIcon: ImageConstant.imgNav20x20,
      title: '스마트 키',
      type: BottomBarEnum.tf,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNav1,
      activeIcon: ImageConstant.imgNav1,
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
        color: defaultColors.onPrimaryContainer,
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
                      style: textTheme.bodySmall!
                          .copyWith(
                            color: const Color(0xFFB0B2BC),
                            fontSize: 10.fSize,
                          )
                          .copyWith(
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
                    color: defaultColors.onPrimary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Text(
                      bottomMenuList[index].title ?? '',
                      style: textTheme.bodySmall!
                          .copyWith(
                            fontSize: 10.fSize,
                          )
                          .copyWith(
                            color: defaultColors.onPrimary,
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
