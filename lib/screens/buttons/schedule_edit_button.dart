// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class ScheduleEditButton extends StatelessWidget {
  const ScheduleEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: getHorizontalSize(114),
      height: getVerticalSize(28),
      margin: getMargin(right: 10),
      text: '수정',
      buttonStyle: CustomButtonStyles.fillWhite.copyWith(
          surfaceTintColor: const MaterialStatePropertyAll(Colors.white)),
      buttonTextStyle: CustomTextStyles.bodySmallPretendardGray70001,
      decoration: AppDecoration.minimal,
      onTap: () {
        Get.bottomSheet(const DatetimePickerBottomSheet());
      },
    );
  }
}
