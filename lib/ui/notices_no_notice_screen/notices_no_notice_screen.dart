// 🐦 Flutter imports:
import 'controller/notices_no_notice_controller.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NoticesNoNoticeScreen extends GetWidget<NoticesNoNoticeController> {
  const NoticesNoNoticeScreen({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: 'lbl38'.tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 50.v),
                    child: Padding(
                        padding: EdgeInsets.only(
                            left: 103.h, right: 103.h, bottom: 5.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.img,
                              height: 177.v,
                              width: 120.h),
                          SizedBox(height: 21.v),
                          Text('lbl39'.tr,
                              style: CustomTextStyles.titleMediumBlack900)
                        ]))))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  void onTapArrowleftone() {
    Get.back();
  }
}
