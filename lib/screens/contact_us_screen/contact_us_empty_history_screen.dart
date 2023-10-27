// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/routes/app_navigation.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';

class ContactUsEmptyHistoryScreen extends StatelessWidget {
  const ContactUsEmptyHistoryScreen({super.key});
  static const routeName = '/contact_us/empty';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.w,
            leading: const GetBackIcon(),
            title: const AppbarTitle(text: '문의하기')),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 50.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 105.w,
                      right: 105.w,
                      bottom: 5.h,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: Assets.images.imgGooli4.path,
                          height: 177.h,
                          width: 120.w,
                        ),
                        SizedBox(height: 21.h),
                        Text('문의내역이 없습니다.',
                            style: textTheme.titleMedium!.copyWith(
                              color: Colors.black,
                              fontSize: TextSize.lg,
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 29.h,
          ),
          child: CustomElevatedButton(
              onTap: context.safePop,
              text: '확인',
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F3F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.w),
                ),
              ).noEffect,
              buttonTextStyle: textTheme.titleMedium!.copyWith(
                color: const Color(0xFFB0B2BC),
                fontSize: TextSize.lg,
              )),
        ),
      ),
    );
  }
}
