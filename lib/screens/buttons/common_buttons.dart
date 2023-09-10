// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class CommonButton extends CustomElevatedButton {
  CommonButton({
    required String title,
    required VoidCallback onTap,
  }) : super(
            text: title,
            buttonStyle: getButtonStyle(0),
            buttonTextStyle: getButtonTextStyle(1),
            onTap: onTap);
}

ButtonStyle getButtonStyle(int type) {
  switch (type) {
    case 0:
      return CustomButtonStyles.fillPrimaryBR10;
    case 1:
      return CustomButtonStyles.fillPrimaryC26;
    case 2:
      return CustomButtonStyles.fillPrimaryC5;
    case 3:
      return CustomButtonStyles.fillPrimaryB10;
    case 4:
      return CustomButtonStyles.fillAmberA200C26;
    default:
      return CustomButtonStyles.none;
  }
}

TextStyle getButtonTextStyle(int type) {
  switch (type) {
    case 1:
      return CustomTextStyles.titleMedium18;
    case 2:
      return CustomTextStyles.bodySmallPretendardGray70001;
    case 3:
      return CustomTextStyles.titleMediumOnPrimary;
    default:
      return theme.textTheme.titleMedium!;
  }
}
