// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import 'controller/expiring_subscriptions_controller.dart';

class ExpiringSubscriptionsScreen
    extends GetWidget<ExpiringSubscriptionsController> {
  const ExpiringSubscriptionsScreen({Key? key}) : super(key: key);

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
            title: AppbarTitle(text: 'lbl123'.tr)),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 22.v),
            child: Padding(
              padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 5.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 2.h),
                      child: Text('lbl131'.tr,
                          style: defaultTextTheme.titleMedium!.copyWith(
                            color: Colors.black,
                            fontSize: 18.fSize,
                          ))),
                  SizedBox(height: 12.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.h, vertical: 20.v),
                      decoration: BoxDecoration(
                          color: defaultColors.onPrimaryContainer,
                          border: Border.all(
                            color: const Color(0xFFB9BCC3),
                            width: 1.h,
                          ),
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(height: 10.v),
                            CustomImageView(
                                imagePath: ImageConstant.img21,
                                height: 96.v,
                                width: 167.h),
                            SizedBox(height: 30.v),
                            const Divider(),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 9.h, top: 20.v, right: 9.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl132'.tr,
                                          style: defaultTextTheme.titleMedium!
                                              .copyWith(
                                            fontSize: 18.fSize,
                                          )),
                                      Padding(
                                          padding: EdgeInsets.only(top: 5.v),
                                          child: Text('lbl_12_3456'.tr,
                                              style: defaultTextTheme.bodySmall!
                                                  .copyWith(
                                                color: defaultColors.onPrimary
                                                    .withOpacity(0.4),
                                              )))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 9.h, top: 14.v, right: 9.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl133'.tr,
                                          style: defaultTextTheme.bodyLarge!
                                              .copyWith(
                                            color: defaultColors.onPrimary
                                                .withOpacity(0.4),
                                          )),
                                      Text('lbl_150_000'.tr,
                                          style: defaultTextTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 9.h, top: 3.v, right: 9.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl134'.tr,
                                          style: defaultTextTheme.bodyLarge!
                                              .copyWith(
                                            color: defaultColors.onPrimary
                                                .withOpacity(0.4),
                                          )),
                                      Text('msg_2023_07_01_2023_08_01'.tr,
                                          style: defaultTextTheme.bodyLarge)
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 9.h, top: 3.v, right: 9.h),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('lbl150'.tr,
                                          style: defaultTextTheme.bodyLarge!
                                              .copyWith(
                                            color: defaultColors.onPrimary
                                                .withOpacity(0.4),
                                          )),
                                      Text('lbl_2023_08_20'.tr,
                                          style: defaultTextTheme.bodyLarge)
                                    ])),
                            CustomElevatedButton(
                                height: 48.v,
                                width: 160.h,
                                text: 'lbl151'.tr,
                                margin: EdgeInsets.only(top: 21.v, right: 9.h),
                                buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: defaultColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.h),
                                  ),
                                ),
                                buttonTextStyle: defaultTextTheme.titleMedium,
                                alignment: Alignment.centerRight)
                          ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
