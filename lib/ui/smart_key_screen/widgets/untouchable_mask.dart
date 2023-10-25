// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/routes/app_router.dart';
import '/theme/button_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';

class UntouchableMask extends StatelessWidget {
  const UntouchableMask({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 50.v,
        ),
        decoration: const BoxDecoration(
          color: Color(0x33A4A8AF),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 100.v),
            CustomElevatedButton(
              onTap: () => AppRouter.showSnackbar(
                message: '홍길동님이 사용 중 입니다.',
                type: SnackType.help,
              ),
              height: 44.v,
              width: 189.h,
              text: '홍길동님이 사용 중 입니다.',
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: Palette.fontBlack66,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.h),
                ),
              ).noEffect,
              buttonTextStyle: textTheme.bodyLarge!
                  .copyWith(color: lightTheme.onPrimaryContainer),
            ),
            SizedBox(height: 122.v),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.h,
                  vertical: 10.v,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
