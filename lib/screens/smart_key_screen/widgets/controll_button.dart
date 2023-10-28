// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
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
      height: 130.w,
      width: 130.w,
      borderRadius: 65.w,
      backgroundColor: lightTheme.onPrimaryContainer,
      margin: isRightSide ? EdgeInsets.only(left: 16.w) : null,
      boxShadow: [
        BoxShadow(
          color: Palette.shadow,
          spreadRadius: 2.w,
          blurRadius: 2.w,
          offset: const Offset(2, 2),
        ),
      ],
      asset: ButtonAsset(
        iconPath,
        height: 46.w,
        width: 46.w,
      ),
    );
  }
}
