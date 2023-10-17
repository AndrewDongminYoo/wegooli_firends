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
import '/widgets/custom_image_view.dart';
import 'controller/subscribe_info_no_subscription_controller.dart';

class SubscribeInfoNoSubscriptionScreen
    extends GetWidget<SubscribeInfoNoSubscriptionController> {
  const SubscribeInfoNoSubscriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: CustomImageView(
              svgPath: Assets.svg.imgArrowleft.path,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '구독 정보')),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.v),
            child: Padding(
              padding: EdgeInsets.only(left: 103.h, right: 103.h, bottom: 5.v),
              child: Column(
                children: [
                  CustomImageView(
                      imagePath: Assets.images.img.path,
                      height: 177.v,
                      width: 120.h),
                  SizedBox(height: 21.v),
                  Text('구독 정보가 없습니다.',
                      style: textTheme.titleMedium!.copyWith(
                        color: Colors.black,
                        fontSize: 18.fSize,
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
