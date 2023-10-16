// 🐦 Flutter imports:
import 'controller/contact_us_empty_history_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

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
                    margin:
                        EdgeInsets.only(left: 16.h, top: 19.v, bottom: 18.v),
                    onTap: () {
                      onTapArrowleftone();
                    }),
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
                                    style: CustomTextStyles.titleMediumBlack900)
                              ]))))
                ])),
            bottomNavigationBar: Container(
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 29.v),
                decoration: AppDecoration.outlineBlack,
                child: CustomElevatedButton(
                    text: 'lbl138'.tr,
                    buttonStyle: CustomButtonStyles.fillGrayTL261,
                    buttonTextStyle:
                        CustomTextStyles.titleMediumBluegray200))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapArrowleftone() {
    Get.back();
  }
}
