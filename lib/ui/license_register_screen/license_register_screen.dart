// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/app_decoration.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_icon_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/license_register_controller.dart';

class LicenseRegisterScreen extends GetWidget<LicenseRegisterController> {
  const LicenseRegisterScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle(text: 'lbl88'.tr)),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 8.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                Container(
                                    height: 200.v,
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 40.h, vertical: 20.v),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFE2E8F6),
                                    ),
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.zero,
                                                  color: defaultColors
                                                      .onPrimaryContainer,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Container(
                                                      height: 160.v,
                                                      width: 262.h,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10.h,
                                                              vertical: 9.v),
                                                      decoration: BoxDecoration(
                                                          color: defaultColors
                                                              .onPrimaryContainer,
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder10),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgLightbulb,
                                                                height: 67.v,
                                                                width: 64.h),
                                                            Align(
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                        left: 6
                                                                            .h),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        vertical:
                                                                            13.v),
                                                                decoration: BoxDecoration(
                                                                    image: DecorationImage(
                                                                        image: fs.Svg(ImageConstant
                                                                            .imgGroup10),
                                                                        fit: BoxFit
                                                                            .cover)),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Container(
                                                                        margin: EdgeInsets.only(
                                                                            left: 69
                                                                                .h),
                                                                        padding: EdgeInsets.symmetric(
                                                                            horizontal:
                                                                                4.h,
                                                                            vertical: 2.v),
                                                                        decoration: BoxDecoration(
                                                                            color: const Color(0xFF464A70),
                                                                            border: Border.all(
                                                                              color: defaultColors.onPrimaryContainer,
                                                                              width: 1.h,
                                                                            ),
                                                                            borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                        child: Text('lbl_b'.tr,
                                                                            style: defaultTextTheme.bodySmall!.copyWith(
                                                                              color: defaultColors.primary,
                                                                              fontSize: 9.fSize,
                                                                            ))),
                                                                    SizedBox(
                                                                        height:
                                                                            65.v),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        child: Row(
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  margin: EdgeInsets.only(top: 3.v, bottom: 5.v),
                                                                                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.v),
                                                                                  decoration: BoxDecoration(
                                                                                      color: const Color(0xFF464A70),
                                                                                      border: Border.all(
                                                                                        color: defaultColors.onPrimaryContainer,
                                                                                        width: 1.h,
                                                                                      ),
                                                                                      borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                                  child: Text('lbl_c'.tr,
                                                                                      style: defaultTextTheme.bodySmall!.copyWith(
                                                                                        color: defaultColors.primary,
                                                                                        fontSize: 9.fSize,
                                                                                      ))),
                                                                              CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, child: CustomImageView(svgPath: ImageConstant.imgFrame))
                                                                            ]))
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerRight,
                                                              child: Padding(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        right: 28
                                                                            .h),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                        'lbl89'
                                                                            .tr,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              const Color(0xFF686A71),
                                                                          fontSize:
                                                                              7.fSize,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          fontFamily:
                                                                              'SUIT',
                                                                        )),
                                                                    SizedBox(
                                                                        height:
                                                                            6.v),
                                                                    Text(
                                                                        'lbl_11_12_345678_90'
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodyMedium!
                                                                            .copyWith(
                                                                          color:
                                                                              const Color(0xFF686A71),
                                                                          fontSize:
                                                                              13.fSize,
                                                                        )),
                                                                    SizedBox(
                                                                        height:
                                                                            11.v),
                                                                    Text(
                                                                        'lbl3'
                                                                            .tr,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              const Color(0xFF686A71),
                                                                          fontSize:
                                                                              7.fSize,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          fontFamily:
                                                                              'SUIT',
                                                                        )),
                                                                    SizedBox(
                                                                        height:
                                                                            1.v),
                                                                    Text(
                                                                        'lbl_000000_1000000'
                                                                            .tr,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              const Color(0xFF686A71),
                                                                          fontSize:
                                                                              7.fSize,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          fontFamily:
                                                                              'SUIT',
                                                                        )),
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerRight,
                                                                        child: Container(
                                                                            width: 41.h,
                                                                            margin: EdgeInsets.only(top: 37.v, right: 18.h),
                                                                            child: Text('msg_20xx_01_01_20xx_12_31'.tr,
                                                                                maxLines: 2,
                                                                                overflow: TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.right,
                                                                                style: TextStyle(
                                                                                  color: const Color(0xFF686A71),
                                                                                  fontSize: 7.fSize,
                                                                                  fontWeight: FontWeight.w400,
                                                                                )
                                                                                    .copyWith(
                                                                                      fontFamily: 'SUIT',
                                                                                    )
                                                                                    .copyWith(height: 1.43)))),
                                                                    SizedBox(
                                                                        height:
                                                                            8.v),
                                                                    Text(
                                                                        'lbl_20xx_01_01'
                                                                            .tr,
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              const Color(0xFF686A71),
                                                                          fontSize:
                                                                              7.fSize,
                                                                          fontWeight:
                                                                              FontWeight.w400,
                                                                          fontFamily:
                                                                              'SUIT',
                                                                        ))
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topLeft,
                                                                child: Container(
                                                                    height:
                                                                        17.v,
                                                                    width: 48.h,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                const Color(0xFF464A70),
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Container(
                                                                    height:
                                                                        17.v,
                                                                    width: 58.h,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                const Color(0xFF464A70),
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                child: Container(
                                                                    height:
                                                                        23.v,
                                                                    width:
                                                                        124.h,
                                                                    margin: EdgeInsets.only(
                                                                        top: 15
                                                                            .v,
                                                                        right: 24
                                                                            .h),
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                const Color(0xFF464A70),
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomRight,
                                                                child: Container(
                                                                    height:
                                                                        26.v,
                                                                    width:
                                                                        107.h,
                                                                    margin: EdgeInsets.only(
                                                                        right: 41
                                                                            .h,
                                                                        bottom: 18
                                                                            .v),
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(2
                                                                                .h),
                                                                        border: Border.all(
                                                                            color:
                                                                                const Color(0xFF464A70),
                                                                            width: 2.h)))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Container(
                                                                    margin: EdgeInsets.only(left: 75.h),
                                                                    padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.v),
                                                                    decoration: BoxDecoration(
                                                                        color: const Color(0xFF464A70),
                                                                        border: Border.all(
                                                                          color:
                                                                              defaultColors.onPrimaryContainer,
                                                                          width:
                                                                              1.h,
                                                                        ),
                                                                        borderRadius: BorderRadiusStyle.roundedBorder10),
                                                                    child: Text('lbl_d'.tr,
                                                                        style: defaultTextTheme.bodySmall!.copyWith(
                                                                          color:
                                                                              defaultColors.primary,
                                                                          fontSize:
                                                                              9.fSize,
                                                                        ))))
                                                          ])))),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  margin: EdgeInsets.only(
                                                      top: 10.v),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5.h,
                                                      vertical: 2.v),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF464A70),
                                                      border: Border.all(
                                                        color: defaultColors
                                                            .onPrimaryContainer,
                                                        width: 1.h,
                                                      ),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Text('lbl_a'.tr,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                        color: defaultColors
                                                            .primary,
                                                        fontSize: 9.fSize,
                                                      ))))
                                        ])),
                                SizedBox(height: 20.v),
                                SizedBox(
                                    height: 58.v,
                                    width: 328.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h),
                                                    child: Text('lbl90'.tr,
                                                        style: defaultTextTheme
                                                            .bodySmall)),
                                                SizedBox(height: 3.v),
                                                CustomDropDown(
                                                    icon: Container(
                                                        margin: EdgeInsets.only(
                                                            left: 30.h),
                                                        child: CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCaretdown)),
                                                    hintText: 'lbl91'.tr,
                                                    items: controller
                                                        .licenseRegister
                                                        .value
                                                        .choices
                                                        .value,
                                                    onChanged: (value) {
                                                      controller
                                                          .onSelected(value);
                                                    })
                                              ])),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 5.h,
                                                      vertical: 2.v),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF464A70),
                                                      border: Border.all(
                                                        color: defaultColors
                                                            .onPrimaryContainer,
                                                        width: 1.h,
                                                      ),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Text('lbl_a'.tr,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                        color: defaultColors
                                                            .primary,
                                                        fontSize: 9.fSize,
                                                      ))))
                                        ])),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 16.h, top: 30.v, right: 16.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                              height: 58.v,
                                              width: 160.h,
                                              child: Stack(
                                                  alignment: Alignment.topLeft,
                                                  children: [
                                                    Align(
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                          Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left:
                                                                          19.h),
                                                              child: Text(
                                                                  'lbl92'.tr,
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodySmall)),
                                                          SizedBox(height: 3.v),
                                                          Container(
                                                              width: 160.h,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      vertical:
                                                                          9.v),
                                                              decoration:
                                                                  BoxDecoration(
                                                                border: Border(
                                                                  bottom:
                                                                      BorderSide(
                                                                    color: const Color(
                                                                        0xFFB0B2BC),
                                                                    width: 1.h,
                                                                  ),
                                                                ),
                                                              ),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                        'lbl93'
                                                                            .tr,
                                                                        style: theme
                                                                            .textTheme
                                                                            .bodyLarge!
                                                                            .copyWith(
                                                                          color:
                                                                              const Color(0xFFB0B2BC),
                                                                        )),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCaretdown,
                                                                        height: 18
                                                                            .adaptSize,
                                                                        width: 18
                                                                            .adaptSize)
                                                                  ]))
                                                        ])),
                                                    Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Container(
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        4.h,
                                                                    vertical:
                                                                        2.v),
                                                            decoration:
                                                                BoxDecoration(
                                                                    color: const Color(
                                                                        0xFF464A70),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: theme
                                                                          .colorScheme
                                                                          .onPrimaryContainer,
                                                                      width:
                                                                          1.h,
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder10),
                                                            child: Text(
                                                                'lbl_b'.tr,
                                                                style: theme
                                                                    .textTheme
                                                                    .bodySmall!
                                                                    .copyWith(
                                                                  color: defaultColors
                                                                      .primary,
                                                                  fontSize:
                                                                      9.fSize,
                                                                ))))
                                                  ])),
                                          CustomDropDown(
                                              width: 160.h,
                                              icon: Container(
                                                  margin: EdgeInsets.only(
                                                      left: 30.h),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgCaretdown)),
                                              margin: EdgeInsets.only(
                                                  left: 8.h, top: 19.v),
                                              hintText: 'lbl_112'.tr,
                                              items: controller.licenseRegister
                                                  .value.choices1.value,
                                              onChanged: (value) {
                                                controller.onSelected1(value);
                                              })
                                        ])),
                                CustomTextFormField(
                                    controller: controller.tfController,
                                    margin: EdgeInsets.only(
                                        left: 16.h, top: 10.v, right: 16.h),
                                    hintText: 'msg7'.tr),
                                SizedBox(height: 30.v),
                                SizedBox(
                                    height: 58.v,
                                    width: 328.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h),
                                                    child: Text('lbl94'.tr,
                                                        style: defaultTextTheme
                                                            .bodySmall)),
                                                SizedBox(height: 3.v),
                                                CustomTextFormField(
                                                    controller: controller
                                                        .validityperiodiController,
                                                    hintText: 'msg8'.tr)
                                              ])),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4.h,
                                                      vertical: 2.v),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF464A70),
                                                      border: Border.all(
                                                        color: defaultColors
                                                            .onPrimaryContainer,
                                                        width: 1.h,
                                                      ),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Text('lbl_c'.tr,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                        color: defaultColors
                                                            .primary,
                                                        fontSize: 9.fSize,
                                                      ))))
                                        ])),
                                SizedBox(height: 30.v),
                                SizedBox(
                                    height: 58.v,
                                    width: 328.h,
                                    child: Stack(
                                        alignment: Alignment.topLeft,
                                        children: [
                                          Align(
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 19.h),
                                                    child: Text('lbl95'.tr,
                                                        style: defaultTextTheme
                                                            .bodySmall)),
                                                SizedBox(height: 3.v),
                                                CustomTextFormField(
                                                    controller: controller
                                                        .oneController,
                                                    hintText: 'msg9'.tr,
                                                    textInputAction:
                                                        TextInputAction.done)
                                              ])),
                                          Align(
                                              alignment: Alignment.topLeft,
                                              child: Container(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 4.h,
                                                      vertical: 2.v),
                                                  decoration: BoxDecoration(
                                                      color: const Color(
                                                          0xFF464A70),
                                                      border: Border.all(
                                                        color: defaultColors
                                                            .onPrimaryContainer,
                                                        width: 1.h,
                                                      ),
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder10),
                                                  child: Text('lbl_d'.tr,
                                                      style: theme
                                                          .textTheme.bodySmall!
                                                          .copyWith(
                                                        color: defaultColors
                                                            .primary,
                                                        fontSize: 9.fSize,
                                                      ))))
                                        ]))
                              ]))))
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 48.v,
                text: 'lbl96'.tr,
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3F3F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                ),
                buttonTextStyle: defaultTextTheme.titleSmall!.copyWith(
                  color: const Color(0xFFB0B2BC),
                  fontWeight: FontWeight.w700,
                ))));
  }
}
