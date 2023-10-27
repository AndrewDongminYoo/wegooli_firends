// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/state_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';
import 'bottom_bar.item.dart';

// ignore: must_be_immutable
class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({
    super.key,
    this.onChanged,
  });

  final Function(BottomBarEnum)? onChanged;

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  RxInt selectedIndex = 0.obs;

  List<BottomNavBarModel> bottomMenuList = [
    BottomNavBarModel(
      icon: Assets.svg.icoSmartKey.path,
      activeIcon: Assets.svg.icoSmartKey.path,
      title: '홈',
      type: BottomBarEnum.tf,
    ),
    BottomNavBarModel(
      icon: Assets.svg.icoCalRound.path,
      activeIcon: Assets.svg.icoCalRound.path,
      title: '일정',
      type: BottomBarEnum.tf,
    ),
    BottomNavBarModel(
      icon: Assets.svg.icoChatRound.path,
      activeIcon: Assets.svg.icoChatRound.path,
      title: '채팅',
      type: BottomBarEnum.tf,
    ),
    BottomNavBarModel(
      icon: Assets.svg.icoKeyRound.path,
      activeIcon: Assets.svg.icoKeyRound.path,
      title: '스마트 키',
      type: BottomBarEnum.tf,
    ),
    BottomNavBarModel(
      icon: Assets.svg.icoMyPage.path,
      activeIcon: Assets.svg.icoMyPage.path,
      title: '마이페이지',
      type: BottomBarEnum.tf,
    )
  ];

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
                  customIcon(
                    bottomMenuList[index].icon,
                    size: 20.adaptSize,
                    color: const Color(0xFFB0B2BC),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Text(
                      bottomMenuList[index].title ?? '',
                      style: textTheme.bodySmall!.copyWith(
                        fontSize: TextSize.xxs.fSize,
                        color: const Color(0xFFB0B2BC),
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  customIcon(
                    bottomMenuList[index].activeIcon,
                    size: 20.adaptSize,
                    color: lightTheme.onPrimary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 7.v),
                    child: Text(
                      bottomMenuList[index].title ?? '',
                      style: textTheme.bodySmall!.copyWith(
                        fontSize: TextSize.xxs.fSize,
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
            widget.onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  tf,
}
