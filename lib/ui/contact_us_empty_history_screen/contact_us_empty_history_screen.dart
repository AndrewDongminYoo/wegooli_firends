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
import 'controller/contact_us_empty_history_controller.dart';

class ContactUsEmptyHistoryScreen
    extends GetWidget<ContactUsEmptyHistoryController> {
  const ContactUsEmptyHistoryScreen({Key? key}) : super(key: key);

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
            title: AppbarTitle(text: 'lbl136'.tr)),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 50.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 105.h, right: 105.h, bottom: 5.v),
                          child: Column(children: [
                            CustomImageView(
                                imagePath: ImageConstant.img,
                                height: 177.v,
                                width: 120.h),
                            SizedBox(height: 21.v),
                            Text('lbl137'.tr,
                                style: defaultTextTheme.titleMedium!.copyWith(
                                  color: Colors.black,
                                  fontSize: 18.fSize,
                                ))
                          ]))))
            ])),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
          decoration: BoxDecoration(
            color: defaultColors.onPrimaryContainer,
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
              text: 'lbl138'.tr,
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F3F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26.h),
                ),
              ),
              buttonTextStyle: defaultTextTheme.titleMedium!.copyWith(
                color: const Color(0xFFB0B2BC),
                fontSize: 18.fSize,
              )),
        ),
      ),
    );
  }
}
