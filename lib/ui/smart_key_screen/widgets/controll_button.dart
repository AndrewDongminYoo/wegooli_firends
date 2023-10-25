// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/image_view.dart';

class ControllButton extends StatelessWidget {
  const ControllButton(
    this.title,
    this.iconPath, {
    super.key,
    this.isRightSide = false,
  });

  final String title;
  final String iconPath;
  final bool isRightSide;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.adaptSize,
      width: 130.adaptSize,
      margin: isRightSide ? EdgeInsets.only(left: 16.h) : null,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            child: Container(
              padding: EdgeInsets.all(5.h),
              decoration: BoxDecoration(
                color: lightTheme.onPrimaryContainer,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: const Offset(2, 2),
                  ),
                ],
                borderRadius: BorderRadiusStyle.circleBorder65,
              ),
              child: Container(
                height: 120.adaptSize,
                width: 120.adaptSize,
                decoration: BoxDecoration(
                  color: lightTheme.onPrimaryContainer,
                  borderRadius: BorderRadius.circular(
                    60.h,
                  ),
                  border: Border.all(
                    color: const Color(0x33A4A8AF),
                    width: 1.h,
                  ),
                ),
              ),
            ),
          ),
          Align(
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 42.h,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  customIcon(
                    iconPath,
                    size: 46.adaptSize,
                  ),
                  SizedBox(height: 5.v),
                  Text(
                    title,
                    style: textTheme.titleMedium,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
