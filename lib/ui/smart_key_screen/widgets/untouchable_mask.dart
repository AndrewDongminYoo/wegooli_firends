// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/routes/app_router.dart';
import '/theme/app_decoration.dart';
import '/theme/button_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';

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
            SizedBox(height: 160.v),
            CustomElevatedButton(
              onTap: () => AppRouter.showSnackbar(
                message: '홍길동님이 사용 중 입니다.',
                type: SnackType.help,
              ),
              height: 44.v,
              width: 189.h,
              text: '홍길동님이 사용 중 입니다.',
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: lightTheme.onPrimary.withOpacity(0.4),
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
                decoration: BoxDecoration(
                  color: lightTheme.primary,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: const Offset(2, 2),
                    ),
                  ],
                  borderRadius: BorderRadiusStyle.circleBorder35,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customIcon(
                      Assets.svg.icoEdit.path,
                      size: 30.adaptSize,
                    ),
                    SizedBox(height: 1.v),
                    Text(
                      '사고 접수',
                      style: textTheme.bodySmall!.copyWith(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 3.v),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
