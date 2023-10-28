// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/routes/app_navigation.dart';
import '/theme/button_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/elevated_button.dart';

class UntouchableMask extends StatelessWidget {
  const UntouchableMask({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 50.h,
        ),
        decoration: const BoxDecoration(
          color: Palette.blueGray300,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 100.h),
            CustomElevatedButton(
              onTap: () => context.showSnackbar(
                message: '홍길동님이 사용 중 입니다.',
                type: SnackType.help,
              ),
              height: 44.h,
              width: 189.w,
              text: '홍길동님이 사용 중 입니다.',
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: Palette.fontBlack66,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22.w),
                ),
              ).noEffect,
              buttonTextStyle: textTheme.bodyLarge!
                  .copyWith(color: lightTheme.onPrimaryContainer),
            ),
            SizedBox(height: 122.h),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12.w,
                  vertical: 10.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
