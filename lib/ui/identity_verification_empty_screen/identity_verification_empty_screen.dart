// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/identity_verification_empty_controller.dart';

class IdentityVerificationEmptyScreen
    extends GetWidget<IdentityVerificationEmptyController> {
  const IdentityVerificationEmptyScreen({Key? key}) : super(key: key);

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
            title: AppbarSubtitle(text: 'lbl'.tr),
            styleType: Style.bgFill),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('lbl2'.tr, style: defaultTextTheme.bodySmall),
                SizedBox(height: 3.v),
                CustomTextFormField(
                    controller: controller.nameinputoneController,
                    hintText: 'lbl68'.tr)
              ]),
              SizedBox(height: 30.v),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('lbl_13'.tr, style: defaultTextTheme.bodySmall),
                SizedBox(height: 3.v),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 9.v),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color(0xFFB0B2BC),
                          width: 1.h,
                        ),
                      ),
                    ),
                    child: Row(children: [
                      Text('lbl_63'.tr,
                          style: defaultTextTheme.bodyLarge!.copyWith(
                            color: const Color(0xFFB0B2BC),
                          )),
                      const Spacer(),
                      Padding(
                          padding: EdgeInsets.only(top: 10.v, bottom: 6.v),
                          child: const SizedBox(
                              child: Divider(color: Color(0xFFB0B2BC)))),
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                              left: 29.h, top: 6.v, bottom: 6.v)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                              left: 4.h, top: 6.v, bottom: 6.v)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                              left: 4.h, top: 6.v, bottom: 6.v)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                              left: 4.h, top: 6.v, bottom: 6.v)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.only(
                              left: 4.h, top: 6.v, bottom: 6.v)),
                      CustomImageView(
                          svgPath: ImageConstant.imgGlobe,
                          height: 7.adaptSize,
                          width: 7.adaptSize,
                          margin: EdgeInsets.fromLTRB(4.h, 6.v, 70.h, 6.v))
                    ])),
                SizedBox(height: 3.v),
                Text('msg_26'.tr,
                    style: defaultTextTheme.bodySmall!.copyWith(
                      color: defaultColors.primaryContainer,
                    ))
              ]),
              SizedBox(height: 30.v),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text('lbl4'.tr, style: defaultTextTheme.bodySmall),
                SizedBox(height: 3.v),
                CustomTextFormField(
                    controller: controller.phonenumberoneController,
                    hintText: 'lbl_010_1234_5678'.tr,
                    textInputAction: TextInputAction.done)
              ]),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                  height: 42.v,
                  text: 'lbl5'.tr,
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF3F3F6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                  ),
                  buttonTextStyle: defaultTextTheme.titleSmall!.copyWith(
                    color: const Color(0xFFB0B2BC),
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 5.v)
            ])),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
          decoration: BoxDecoration(
            color: defaultColors.onPrimaryContainer,
          ),
          child: CustomElevatedButton(
              height: 48.v,
              text: 'lbl7'.tr,
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F3F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.h),
                ),
              ),
              buttonTextStyle: defaultTextTheme.titleSmall!.copyWith(
                color: const Color(0xFFB0B2BC),
                fontWeight: FontWeight.w700,
              )),
        ),
      ),
    );
  }
}
