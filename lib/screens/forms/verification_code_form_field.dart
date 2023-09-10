// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class VerificationCodeFormField extends StatelessWidget {
  const VerificationCodeFormField({
    super.key,
    required this.controller,
  });

  final UserController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() => CustomTextFormField(
          width: getHorizontalSize(160),
          hintText: '000000',
          controller: controller.pinCodes,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(6),
          ],
          margin: getMargin(top: 10),
          contentPadding: getPadding(left: 14, top: 14, bottom: 14),
          textStyle: CustomTextStyles.bodyLargeGray500,
          hintStyle: CustomTextStyles.bodyLargeGray500,
          suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
          filled: true,
          fillColor: theme.colorScheme.onPrimaryContainer,
          suffix: Padding(
            padding: getPadding(left: 30, top: 12, right: 10, bottom: 12),
            child: Obx(() {
              final isWaitingOtpCode = controller.isWaitingOtpCode.value;
              if (isWaitingOtpCode) {
                return TimerCountdown(
                  spacerWidth: 0,
                  enableDescriptions: false,
                  colonsTextStyle: CustomTextStyles.bodyLargeGray50003
                      .copyWith(letterSpacing: getHorizontalSize(0.03)),
                  timeTextStyle: CustomTextStyles.bodyLargeGray50003
                      .copyWith(letterSpacing: getHorizontalSize(0.03)),
                  format: CountDownTimerFormat.minutesSeconds,
                  endTime: controller.verificaticonExpireTime(),
                  onEnd: controller.verificaticonIsExpired,
                );
              } else {
                return const SizedBox.shrink();
              }
            }),
          ),
        ));
  }
}
