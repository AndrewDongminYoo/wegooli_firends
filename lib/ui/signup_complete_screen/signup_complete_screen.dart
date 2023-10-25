// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/ui/home_page_screen/home_page_screen.dart';
import '/widgets/elevated_button.dart';
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
          padding: EdgeInsets.symmetric(vertical: 50.v),
          child: Column(
            children: [
              SizedBox(height: 159.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 103.h,
                      right: 103.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          svgPath: Assets.svg.imgGooliHappy.path,
                          height: 108.v,
                          width: 135.h,
                        ),
                        SizedBox(height: 32.v),
                        SizedBox(
                          width: 153.h,
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
            left: 16.h,
            right: 16.h,
            bottom: 50.v,
          ),
        ),
      ),
    );
  }
}
