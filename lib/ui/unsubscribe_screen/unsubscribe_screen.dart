// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';

class UnsubscribeScreen extends StatelessWidget {
  const UnsubscribeScreen({super.key});
  static const routeName = '/unsubscribe';

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
            title: AppbarTitle(text: '구독 해지 예약')),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.v),
            child: Padding(
              padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
              child: Column(
                children: [
                  CustomImageView(
                      imagePath: Assets.images.imgGooli5.path,
                      height: 157.v,
                      width: 120.h),
                  SizedBox(height: 20.v),
                  SizedBox(
                    width: 179.h,
                    child: Text(
                      '(닉네임)님 정말로 구독을\n해지하시겠습니까?',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: textTheme.titleMedium!.copyWith(
                          color: Colors.black,
                          fontSize: 18.fSize,
                          height: 1.44),
                    ),
                  ),
                  SizedBox(height: 23.v),
                  Text('2023년 8월 4일 이후에 구독이 해지됩니다.',
                      style:
                          textTheme.bodyLarge!.copyWith(color: Colors.black)),
                  SizedBox(height: 81.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            width: 104.h,
                            text: '취소',
                            buttonStyle: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB9BCC3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26.h),
                              ),
                            )),
                        CustomElevatedButton(width: 216.h, text: '구독 해지하기')
                      ])
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
