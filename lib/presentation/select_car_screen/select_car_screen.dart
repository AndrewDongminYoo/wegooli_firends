import 'controller/select_car_controller.dart';
import 'package:flutter/material.dart';
import 'package:wegooli_friends_public/core/app_export.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_image.dart';
import 'package:wegooli_friends_public/widgets/app_bar/appbar_title.dart';
import 'package:wegooli_friends_public/widgets/app_bar/custom_app_bar.dart';
import 'package:wegooli_friends_public/widgets/custom_text_form_field.dart';

class SelectCarScreen extends GetWidget<SelectCarController> {
  const SelectCarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: getVerticalSize(713),
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgImage13657x360,
                      height: getVerticalSize(657),
                      width: getHorizontalSize(360),
                      alignment: Alignment.bottomCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomAppBar(
                                height: getVerticalSize(37),
                                leadingWidth: getHorizontalSize(34),
                                leading: AppbarImage(
                                    svgPath:
                                        ImageConstant.imgArrowleftOnprimary,
                                    margin: getMargin(left: 16, top: 2),
                                    onTap: () {
                                      onTapArrowleftone();
                                    }),
                                centerTitle: true,
                                title: AppbarTitle(text: "lbl21".tr)),
                            Expanded(
                                child: SingleChildScrollView(
                                    padding: getPadding(top: 17),
                                    child: SizedBox(
                                        height: getVerticalSize(773),
                                        width: double.maxFinite,
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.topCenter,
                                                  child: SizedBox(
                                                      height:
                                                          getVerticalSize(657),
                                                      width: double.maxFinite,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topCenter,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            16,
                                                                        top: 19,
                                                                        right:
                                                                            16),
                                                                    child: Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize
                                                                                .min,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .end,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          CustomTextFormField(
                                                                              controller: controller.searchlocationController,
                                                                              hintText: "lbl22".tr,
                                                                              hintStyle: CustomTextStyles.bodyLargeGray50002,
                                                                              textInputAction: TextInputAction.done,
                                                                              suffix: Container(margin: getMargin(left: 30, top: 12, right: 12, bottom: 12), child: CustomImageView(svgPath: ImageConstant.imgSearchGray400)),
                                                                              suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(48)),
                                                                              contentPadding: getPadding(left: 12, top: 13, bottom: 13)),
                                                                          Padding(
                                                                              padding: getPadding(top: 144, right: 77),
                                                                              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgLocationPrimary50x35, height: getVerticalSize(50), width: getHorizontalSize(35)),
                                                                                Container(height: getVerticalSize(8), width: getHorizontalSize(18), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(0.4), borderRadius: BorderRadius.circular(getHorizontalSize(9))))
                                                                              ])),
                                                                          Align(
                                                                              alignment: Alignment.centerLeft,
                                                                              child: Padding(
                                                                                  padding: getPadding(left: 64, top: 67),
                                                                                  child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                    CustomImageView(svgPath: ImageConstant.imgLocationPrimary50x35, height: getVerticalSize(50), width: getHorizontalSize(35)),
                                                                                    Container(height: getVerticalSize(8), width: getHorizontalSize(18), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(0.4), borderRadius: BorderRadius.circular(getHorizontalSize(9))))
                                                                                  ]))),
                                                                          Padding(
                                                                              padding: getPadding(top: 49, right: 74),
                                                                              child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgLocationPrimary50x35, height: getVerticalSize(50), width: getHorizontalSize(35)),
                                                                                Container(height: getVerticalSize(8), width: getHorizontalSize(18), decoration: BoxDecoration(color: theme.colorScheme.onPrimary.withOpacity(0.4), borderRadius: BorderRadius.circular(getHorizontalSize(9))))
                                                                              ]))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Container(
                                                                    decoration: AppDecoration.fillOnPrimary,
                                                                    child: Container(
                                                                        margin: getMargin(top: 111),
                                                                        decoration: AppDecoration.shadow.copyWith(borderRadius: BorderRadiusStyle.customBorderTL10),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          Container(
                                                                              width: double.maxFinite,
                                                                              padding: getPadding(left: 16, top: 10, right: 16, bottom: 10),
                                                                              decoration: AppDecoration.outlineBluegray30033,
                                                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgLine45, height: getVerticalSize(1), width: getHorizontalSize(40), alignment: Alignment.center),
                                                                                Padding(padding: getPadding(top: 31, bottom: 12), child: Text("lbl23".tr, style: CustomTextStyles.titleMediumBlack900))
                                                                              ])),
                                                                          Container(
                                                                              padding: getPadding(left: 16, top: 19, right: 16, bottom: 19),
                                                                              decoration: AppDecoration.outlineBluegray30033,
                                                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                Padding(padding: getPadding(top: 2), child: Text("msg7".tr, style: theme.textTheme.titleMedium)),
                                                                                Padding(
                                                                                    padding: getPadding(top: 11),
                                                                                    child: Row(children: [
                                                                                      CustomImageView(imagePath: ImageConstant.img2170x130, height: getVerticalSize(70), width: getHorizontalSize(130)),
                                                                                      Padding(
                                                                                          padding: getPadding(left: 12),
                                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Text("lbl_32".tr, style: CustomTextStyles.bodySmallOnPrimary),
                                                                                            Padding(padding: getPadding(top: 5), child: Text("lbl_150_0002".tr, style: theme.textTheme.titleMedium)),
                                                                                            Padding(
                                                                                                padding: getPadding(top: 10),
                                                                                                child: Row(children: [
                                                                                                  Padding(padding: getPadding(top: 5), child: Text("lbl_2_4".tr, style: CustomTextStyles.bodySmallInter)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgUsermultiple, height: getSize(18), width: getSize(18), margin: getMargin(left: 5))
                                                                                                ]))
                                                                                          ])),
                                                                                      Spacer(),
                                                                                      CustomImageView(svgPath: ImageConstant.imgArrowleftOnprimary, height: getSize(18), width: getSize(18), margin: getMargin(top: 12, bottom: 40))
                                                                                    ]))
                                                                              ])),
                                                                          Container(
                                                                              padding: getPadding(left: 16, top: 19, right: 16, bottom: 19),
                                                                              decoration: AppDecoration.outlineBluegray30033,
                                                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                Padding(padding: getPadding(top: 2), child: Text("msg7".tr, style: theme.textTheme.titleMedium)),
                                                                                Padding(
                                                                                    padding: getPadding(top: 11),
                                                                                    child: Row(children: [
                                                                                      CustomImageView(imagePath: ImageConstant.img2170x130, height: getVerticalSize(70), width: getHorizontalSize(130)),
                                                                                      Padding(
                                                                                          padding: getPadding(left: 12),
                                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Text("lbl_32".tr, style: CustomTextStyles.bodySmallOnPrimary),
                                                                                            Padding(padding: getPadding(top: 5), child: Text("lbl_150_0002".tr, style: theme.textTheme.titleMedium)),
                                                                                            Padding(
                                                                                                padding: getPadding(top: 10),
                                                                                                child: Row(children: [
                                                                                                  Padding(padding: getPadding(top: 5), child: Text("lbl_2_4".tr, style: CustomTextStyles.bodySmallInter)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgUsermultiple, height: getSize(18), width: getSize(18), margin: getMargin(left: 5))
                                                                                                ]))
                                                                                          ])),
                                                                                      Spacer(),
                                                                                      CustomImageView(svgPath: ImageConstant.imgArrowleftOnprimary, height: getSize(18), width: getSize(18), margin: getMargin(top: 12, bottom: 40))
                                                                                    ]))
                                                                              ])),
                                                                          Container(
                                                                              margin: getMargin(bottom: 28),
                                                                              padding: getPadding(left: 16, top: 19, right: 16, bottom: 19),
                                                                              decoration: AppDecoration.outlineBluegray30033,
                                                                              child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                                Padding(padding: getPadding(top: 2), child: Text("msg7".tr, style: theme.textTheme.titleMedium)),
                                                                                Padding(
                                                                                    padding: getPadding(top: 11),
                                                                                    child: Row(children: [
                                                                                      CustomImageView(imagePath: ImageConstant.img2170x130, height: getVerticalSize(70), width: getHorizontalSize(130)),
                                                                                      Padding(
                                                                                          padding: getPadding(left: 12),
                                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            Text("lbl_32".tr, style: CustomTextStyles.bodySmallOnPrimary),
                                                                                            Padding(padding: getPadding(top: 5), child: Text("lbl_150_0002".tr, style: theme.textTheme.titleMedium)),
                                                                                            Padding(
                                                                                                padding: getPadding(top: 10),
                                                                                                child: Row(children: [
                                                                                                  Padding(padding: getPadding(top: 5), child: Text("lbl_2_4".tr, style: CustomTextStyles.bodySmallInter)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgUsermultiple, height: getSize(18), width: getSize(18), margin: getMargin(left: 5))
                                                                                                ]))
                                                                                          ])),
                                                                                      Spacer(),
                                                                                      CustomImageView(svgPath: ImageConstant.imgArrowleftOnprimary, height: getSize(18), width: getSize(18), margin: getMargin(top: 12, bottom: 40))
                                                                                    ]))
                                                                              ]))
                                                                        ]))))
                                                          ]))),
                                              Align(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: Container(
                                                      padding:
                                                          getPadding(all: 16),
                                                      decoration: AppDecoration
                                                          .outlineBluegray30033,
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text("msg7".tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .titleMedium),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 17,
                                                                        bottom:
                                                                            3),
                                                                child: Row(
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .img2170x130,
                                                                          height: getVerticalSize(
                                                                              70),
                                                                          width:
                                                                              getHorizontalSize(130)),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  12),
                                                                          child: Column(
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              children: [
                                                                                Text("lbl_32".tr, style: CustomTextStyles.bodySmallOnPrimary),
                                                                                Text("lbl_150_0002".tr, style: theme.textTheme.titleMedium),
                                                                                Padding(
                                                                                    padding: getPadding(top: 10),
                                                                                    child: Row(children: [
                                                                                      Padding(padding: getPadding(top: 5, bottom: 1), child: Text("lbl_2_4".tr, textAlign: TextAlign.right, style: CustomTextStyles.bodySmallInter)),
                                                                                      CustomImageView(svgPath: ImageConstant.imgUsermultiple, height: getSize(18), width: getSize(18), margin: getMargin(left: 5))
                                                                                    ]))
                                                                              ])),
                                                                      Spacer(),
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgArrowleftOnprimary,
                                                                          height: getSize(
                                                                              18),
                                                                          width: getSize(
                                                                              18),
                                                                          margin: getMargin(
                                                                              top: 12,
                                                                              bottom: 40))
                                                                    ]))
                                                          ])))
                                            ]))))
                          ]))
                ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
