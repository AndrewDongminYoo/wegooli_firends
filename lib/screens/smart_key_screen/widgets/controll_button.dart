// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/long_pressable.dart';

class ControllButton extends StatelessWidget {
  const ControllButton(
    this.title,
    this.iconPath, {
    super.key,
    required this.onPressed,
    this.isRightSide = false,
  });

  final String title;
  final String iconPath;
  final bool isRightSide;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return LongPressableButton(
      onPressed: onPressed,
      animate: true,
      isThreeD: true,
      title: title,
      height: 130.adaptSize,
      width: 130.adaptSize,
      borderRadius: 65.adaptSize,
      backgroundColor: lightTheme.onPrimaryContainer,
      margin: isRightSide ? EdgeInsets.only(left: 16.h) : null,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 2.h,
          blurRadius: 2.h,
          offset: const Offset(2, 2),
        ),
      ],
      asset: ButtonAsset(
        iconPath,
        height: 46.adaptSize,
        width: 46.adaptSize,
      ),
    );
  }
}
