// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ScheduleEditButton extends StatelessWidget {
  const ScheduleEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      width: getHorizontalSize(124),
      height: getVerticalSize(28),
      margin: getMargin(right: 10),
      text: '수정',
      buttonStyle: CustomButtonStyles.fillWhite,
      buttonTextStyle: CustomTextStyles.bodySmallPretendardGray70001,
      decoration: AppDecoration.minimal,
      onTap: () {
        // TODO 수정하기
      },
    );
  }
}
