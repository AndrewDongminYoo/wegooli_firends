// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'controller/unsubscribe_controller.dart';

class UnsubscribeScreen extends GetWidget<UnsubscribeController> {
  const UnsubscribeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            leadingWidth: 34.h,
            leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              margin: EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: 'lbl34'.tr)),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 50.v),
            child: Padding(
              padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
              child: Column(
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.img157x120,
                      height: 157.v,
                      width: 120.h),
                  SizedBox(height: 20.v),
                  SizedBox(
                      width: 179.h,
                      child: Text('msg17'.tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: defaultTextTheme.titleMedium!
                              .copyWith(
                                color: Colors.black,
                                fontSize: 18.fSize,
                              )
                              .copyWith(height: 1.44))),
                  SizedBox(height: 23.v),
                  Text('msg_2023_8_4'.tr,
                      style: defaultTextTheme.bodyLarge!.copyWith(
                        color: Colors.black,
                      )),
                  SizedBox(height: 81.v),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            width: 104.h,
                            text: 'lbl32'.tr,
                            buttonStyle: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFB9BCC3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(26.h),
                              ),
                            )),
                        CustomElevatedButton(width: 216.h, text: 'lbl143'.tr)
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
