// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/screens/home_page_screen/home_page_screen.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';

class SignupCompleteScreen extends StatelessWidget {
  const SignupCompleteScreen({super.key});
  static const routeName = '/signup_complete';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 50.h),
          child: Column(
            children: [
              SizedBox(height: 159.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 103.w,
                      right: 103.w,
                      bottom: 5.h,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          svgPath: Assets.svg.imgGooliHappy.path,
                          height: 108.h,
                          width: 135.w,
                        ),
                        SizedBox(height: 32.h),
                        SizedBox(
                          width: 153.w,
                          child: Text(
                            '회원가입이\n완료되었습니다.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style:
                                textTheme.headlineSmall!.copyWith(height: 1.42),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          onTap: () => context.goNamed(HomePageScreen.routeName),
          text: '시작하기',
          margin: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 50.h,
          ),
        ),
      ),
    );
  }
}
