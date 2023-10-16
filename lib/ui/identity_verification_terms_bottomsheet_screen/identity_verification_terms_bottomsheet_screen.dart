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
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/identity_verification_terms_bottomsheet_controller.dart';

class IdentityVerificationTermsBottomsheetScreen
    extends GetWidget<IdentityVerificationTermsBottomsheetController> {
  const IdentityVerificationTermsBottomsheetScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            height: 50.v,
            leadingWidth: 34.h,
            leading: AppbarImage(
              svgPath: ImageConstant.imgArrowleft,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarSubtitle(text: 'lbl'.tr)),
        body: SizedBox(
          height: 593.v,
          width: double.maxFinite,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(left: 16.h, top: 57.v, right: 16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 2.v),
                                child: Text('lbl2'.tr,
                                    style: defaultTextTheme.bodySmall!.copyWith(
                                      color: const Color(0xFF5D5D5D),
                                    ))),
                            Padding(
                                padding:
                                    EdgeInsets.only(left: 2.h, bottom: 2.v),
                                child: Text('lbl67'.tr,
                                    style: defaultTextTheme.labelLarge))
                          ]),
                          CustomTextFormField(
                              controller: controller.nameinputoneController,
                              hintText: 'lbl68'.tr,
                              textInputAction: TextInputAction.done)
                        ]),
                    SizedBox(height: 25.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text('lbl_13'.tr,
                                          style: defaultTextTheme.bodySmall!
                                              .copyWith(
                                            color: const Color(0xFF5D5D5D),
                                          ))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.h, bottom: 2.v),
                                      child: Text('lbl67'.tr,
                                          style: defaultTextTheme.labelLarge))
                                ]),
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 9.v),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(0xFFB0B2BC),
                                          width: 1.h,
                                        ),
                                      ),
                                    ),
                                    child: Text('lbl_yymmdd'.tr,
                                        style: defaultTextTheme.bodyLarge!
                                            .copyWith(
                                          color: const Color(0xFFB0B2BC),
                                        ))),
                                SizedBox(height: 2.v),
                                Text('msg_26'.tr,
                                    style: defaultTextTheme.bodySmall!.copyWith(
                                      color: defaultColors.primaryContainer,
                                    ))
                              ]),
                          Container(
                              margin: EdgeInsets.only(top: 16.v, bottom: 19.v),
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color(0xFFB0B2BC),
                                    width: 1.h,
                                  ),
                                ),
                              ),
                              child: Text('lbl_nnnnnnn'.tr,
                                  style: defaultTextTheme.bodyLarge!.copyWith(
                                    color: const Color(0xFFB0B2BC),
                                  )))
                        ]),
                    SizedBox(height: 34.v),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(top: 2.v),
                                      child: Text('lbl4'.tr,
                                          style: defaultTextTheme.bodySmall!
                                              .copyWith(
                                            color: const Color(0xFF5D5D5D),
                                          ))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 2.h, bottom: 2.v),
                                      child: Text('lbl67'.tr,
                                          style: defaultTextTheme.labelLarge))
                                ]),
                                Container(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.v),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                          color: const Color(0xFFB0B2BC),
                                          width: 1.h,
                                        ),
                                      ),
                                    ),
                                    child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 1.v),
                                              child: Text('lbl69'.tr,
                                                  style: theme
                                                      .textTheme.bodyLarge!
                                                      .copyWith(
                                                    color:
                                                        const Color(0xFFB0B2BC),
                                                  ))),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgCaretdown,
                                              height: 18.adaptSize,
                                              width: 18.adaptSize,
                                              margin: EdgeInsets.only(
                                                  left: 43.h, bottom: 5.v))
                                        ]))
                              ]),
                          Container(
                              margin: EdgeInsets.only(top: 16.v),
                              padding: EdgeInsets.symmetric(vertical: 9.v),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: const Color(0xFFB0B2BC),
                                    width: 1.h,
                                  ),
                                ),
                              ),
                              child: Text('lbl_010_1234_5678'.tr,
                                  style: defaultTextTheme.bodyLarge!.copyWith(
                                    color: const Color(0xFFB0B2BC),
                                  )))
                        ]),
                    SizedBox(height: 18.v),
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 125.h, vertical: 12.v),
                        decoration: BoxDecoration(
                            color: const Color(0xFFF3F3F6),
                            borderRadius: BorderRadiusStyle.roundedBorder10),
                        child: Text('lbl5'.tr,
                            style: defaultTextTheme.titleSmall!.copyWith(
                              color: const Color(0xFFB0B2BC),
                              fontWeight: FontWeight.w700,
                            )))
                  ],
                ),
              ),
            ),
            CustomElevatedButton(
                height: 48.v,
                width: 328.h,
                text: 'lbl7'.tr,
                margin: EdgeInsets.only(bottom: 16.v),
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3F3F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                ),
                buttonTextStyle: defaultTextTheme.titleSmall!.copyWith(
                  color: const Color(0xFFB0B2BC),
                  fontWeight: FontWeight.w700,
                ),
                alignment: Alignment.bottomCenter),
            Align(
                child: Container(
                    decoration: BoxDecoration(
                      color: defaultColors.onPrimary.withOpacity(0.4),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Spacer(),
                          Container(
                              decoration: const BoxDecoration(),
                              child: Column(children: [
                                Container(
                                    decoration: BoxDecoration(
                                        color: defaultColors.onPrimaryContainer,
                                        borderRadius:
                                            BorderRadiusStyle.customBorderTL10),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16.h,
                                                  vertical: 21.v),
                                              decoration: BoxDecoration(
                                                color: defaultColors
                                                    .onPrimaryContainer,
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color:
                                                        const Color(0x33A4A8AF),
                                                    width: 1.h,
                                                  ),
                                                ),
                                              ),
                                              child: Text('lbl70'.tr,
                                                  style: theme
                                                      .textTheme.titleMedium)),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 16.h, top: 20.v),
                                              child: Row(
                                                children: [
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCheckcircle,
                                                      height: 18.adaptSize,
                                                      width: 18.adaptSize),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 5.h),
                                                      child: Text('lbl71'.tr,
                                                          style:
                                                              defaultTextTheme
                                                                  .bodyMedium))
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h,
                                                  top: 12.v,
                                                  right: 16.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCheck,
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize),
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5.h),
                                                        child: Text('lbl72'.tr,
                                                            style: theme
                                                                .textTheme
                                                                .bodyMedium)),
                                                    const Spacer(),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h,
                                                  top: 12.v,
                                                  right: 16.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCheck,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.h),
                                                              child: Text(
                                                                  'lbl73'.tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium))
                                                        ]),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h,
                                                  top: 12.v,
                                                  right: 16.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCheck,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.h),
                                                              child: Text(
                                                                  'msg4'.tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium))
                                                        ]),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize)
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                  left: 26.h,
                                                  top: 12.v,
                                                  right: 16.h),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCheck,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.h),
                                                              child: Text(
                                                                  'msg5'.tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium))
                                                        ])),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 40.h))
                                                  ])),
                                          Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  26.h, 12.v, 16.h, 20.v),
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                          CustomImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCheck,
                                                              height:
                                                                  18.adaptSize,
                                                              width:
                                                                  18.adaptSize),
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          5.h),
                                                              child: Text(
                                                                  'msg6'.tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyMedium))
                                                        ])),
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowleft,
                                                        height: 18.adaptSize,
                                                        width: 18.adaptSize,
                                                        margin: EdgeInsets.only(
                                                            left: 66.h))
                                                  ]))
                                        ])),
                                Container(
                                    padding: EdgeInsets.all(16.h),
                                    decoration: BoxDecoration(
                                      color: defaultColors.onPrimaryContainer,
                                    ),
                                    child: CustomElevatedButton(
                                        height: 48.v,
                                        text: 'lbl74'.tr,
                                        buttonStyle: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xFFF3F3F6),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.h),
                                          ),
                                        ),
                                        buttonTextStyle: theme
                                            .textTheme.titleSmall!
                                            .copyWith(
                                          color: const Color(0xFFB0B2BC),
                                          fontWeight: FontWeight.w700,
                                        )))
                              ]))
                        ])))
          ]),
        ),
      ),
    );
  }
}
