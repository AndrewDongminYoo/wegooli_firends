// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/routes/app_navigation.dart';
import '/theme/button_styles.dart';
import '/theme/custom_text_style.dart';
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
            leadingWidth: 34.h,
            leading: const GetBackIcon(),
            title: const AppbarTitle(text: '문의하기')),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 50.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 105.h,
                      right: 105.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: Assets.images.imgGooli4.path,
                          height: 177.v,
                          width: 120.h,
                        ),
                        SizedBox(height: 21.v),
                        Text('문의내역이 없습니다.',
                            style: textTheme.titleMedium!.copyWith(
                              color: Colors.black,
                              fontSize: TextSize.lg.fSize,
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
            left: 16.h,
            right: 16.h,
            bottom: 29.v,
          ),
          child: CustomElevatedButton(
              onTap: context.safePop,
              text: '확인',
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F3F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.h),
                ),
              ).noEffect,
              buttonTextStyle: textTheme.titleMedium!.copyWith(
                color: const Color(0xFFB0B2BC),
                fontSize: TextSize.lg.fSize,
              )),
        ),
      ),
    );
  }
}
