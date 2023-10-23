// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/route_manager.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
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
            leading: CustomImageView(
              svgPath: Assets.svg.icoArrowLeft.path,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '문의하기')),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 50.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 105.h, right: 105.h, bottom: 5.v),
                    child: Column(
                      children: [
                        CustomImageView(
                            imagePath: Assets.images.imgGooli4.path,
                            height: 177.v,
                            width: 120.h),
                        SizedBox(height: 21.v),
                        Text('문의내역이 없습니다.',
                            style: textTheme.titleMedium!.copyWith(
                              color: Colors.black,
                              fontSize: 18.fSize,
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
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: const Offset(
                  2,
                  2,
                ),
              ),
            ],
          ),
          child: CustomElevatedButton(
              text: '버튼명',
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F3F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.h),
                ),
              ),
              buttonTextStyle: textTheme.titleMedium!.copyWith(
                color: const Color(0xFFB0B2BC),
                fontSize: 18.fSize,
              )),
        ),
      ),
    );
  }
}
