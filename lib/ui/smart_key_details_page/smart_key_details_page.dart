// 🐦 Flutter imports:
import 'controller/smart_key_details_controller.dart';
import 'models/smart_key_details_model.dart';
import '/core/app_export.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_floating_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SmartKeyDetailsPage extends StatelessWidget {
  SmartKeyDetailsPage({Key? key}) : super(key: key);

  SmartKeyDetailsController controller =
      Get.put(SmartKeyDetailsController(SmartKeyDetailsModel().obs));

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
                title: AppbarTitle(text: 'lbl13'.tr)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 13.v),
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 136.v),
                        child: Column(children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle4640,
                              height: 132.v,
                              width: 200.h),
                          SizedBox(height: 20.v),
                          Container(
                              height: 8.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.gray10001)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, top: 21.v),
                                  child: Text('lbl14'.tr,
                                      style: CustomTextStyles.titleMedium18))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 14.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl15'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary),
                                    Text('lbl_32'.tr,
                                        style: theme.textTheme.bodyLarge)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 3.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl16'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary),
                                    Text('lbl17'.tr,
                                        style: theme.textTheme.bodyLarge)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 3.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl18'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary),
                                    Text('lbl19'.tr,
                                        style: theme.textTheme.bodyLarge)
                                  ])),
                          SizedBox(height: 21.v),
                          Container(
                              height: 8.v,
                              width: double.maxFinite,
                              decoration:
                                  BoxDecoration(color: appTheme.gray10001)),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding:
                                      EdgeInsets.only(left: 16.h, top: 21.v),
                                  child: Text('lbl20'.tr,
                                      style: CustomTextStyles.titleMedium18))),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 14.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl21'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary),
                                    Text('lbl_2023_08_01'.tr,
                                        style: theme.textTheme.bodyLarge)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 4.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl22'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary),
                                    Text('lbl_2023_08_01'.tr,
                                        style: theme.textTheme.bodyLarge)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 3.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl23'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary),
                                    Text('lbl24'.tr,
                                        style: theme.textTheme.bodyLarge)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 16.h, top: 3.v, right: 16.h),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('lbl25'.tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary),
                                    Text('lbl_42'.tr,
                                        style: theme.textTheme.bodyLarge)
                                  ]))
                        ])))),
            floatingActionButton: CustomFloatingButton(
                height: 70,
                width: 70,
                backgroundColor: theme.colorScheme.primary,
                child: CustomImageView(
                    svgPath: ImageConstant.imgContactsupport,
                    height: 35.0.v,
                    width: 35.0.h))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
