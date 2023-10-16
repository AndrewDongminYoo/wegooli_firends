// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/routes/app_routes.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_image.dart';
import '/widgets/app_bar/appbar_subtitle.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/custom_drop_down.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/identity_verification_waiting_with_telecom_controller.dart';

class IdentityVerificationWaitingWithTelecomScreen
    extends GetWidget<IdentityVerificationWaitingWithTelecomController> {
  const IdentityVerificationWaitingWithTelecomScreen({Key? key})
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
            title: AppbarSubtitle(text: 'lbl'.tr),
            styleType: Style.bgFill),
        body: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('lbl2'.tr, style: defaultTextTheme.bodySmall),
                  CustomImageView(
                      svgPath: ImageConstant.imgLabeltext,
                      height: 5.adaptSize,
                      width: 5.adaptSize,
                      margin: EdgeInsets.only(left: 2.h, bottom: 10.v))
                ]),
                SizedBox(height: 3.v),
                CustomTextFormField(
                    controller: controller.nameoneController,
                    hintText: 'lbl3'.tr)
              ]),
              SizedBox(height: 30.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('lbl_13'.tr, style: defaultTextTheme.bodySmall),
                    CustomImageView(
                        svgPath: ImageConstant.imgLabeltext,
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        margin: EdgeInsets.only(left: 2.h, bottom: 10.v))
                  ]),
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
                      child: Text('lbl_980709'.tr,
                          style: defaultTextTheme.bodyLarge)),
                  SizedBox(height: 3.v),
                  Text('msg_26'.tr,
                      style: defaultTextTheme.bodySmall!.copyWith(
                        color: defaultColors.primaryContainer,
                      ))
                ]),
                Container(
                    margin: EdgeInsets.only(top: 19.v, bottom: 18.v),
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: const Color(0xFFB0B2BC),
                          width: 1.h,
                        ),
                      ),
                    ),
                    child: Text('lbl97'.tr, style: defaultTextTheme.bodyLarge))
              ]),
              SizedBox(height: 30.v),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text('lbl4'.tr, style: defaultTextTheme.bodySmall),
                    CustomImageView(
                        svgPath: ImageConstant.imgLabeltext,
                        height: 5.adaptSize,
                        width: 5.adaptSize,
                        margin: EdgeInsets.only(left: 2.h, bottom: 10.v))
                  ]),
                  SizedBox(height: 3.v),
                  CustomDropDown(
                      width: 104.h,
                      icon: Container(
                          margin: EdgeInsets.only(left: 30.h),
                          child: CustomImageView(
                              svgPath: ImageConstant.imgCaretdown)),
                      hintText: 'lbl_kt'.tr,
                      hintStyle: defaultTextTheme.bodyLarge,
                      items: controller.identityVerificationWaitingWithTelecom
                          .value.choices.value,
                      onChanged: (value) {
                        controller.onSelected(value);
                      })
                ]),
                CustomTextFormField(
                    width: 216.h,
                    controller: controller.phonenumberoneController,
                    margin: EdgeInsets.only(top: 19.v),
                    hintText: 'lbl_010_1234_5678'.tr,
                    textInputAction: TextInputAction.done)
              ]),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                  height: 42.v,
                  text: 'lbl5'.tr,
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF464A70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                  ),
                  buttonTextStyle: defaultTextTheme.titleSmall!.copyWith(
                    color: defaultColors.onPrimaryContainer,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 20.v),
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
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('lbl6'.tr,
                            style: defaultTextTheme.bodyLarge!.copyWith(
                              color: const Color(0xFFB0B2BC),
                            )),
                        Text('lbl_3_00'.tr,
                            style: defaultTextTheme.bodyLarge!.copyWith(
                              color: defaultColors.primaryContainer,
                            ))
                      ])),
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
                backgroundColor: defaultColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.h),
                ),
              ),
              buttonTextStyle: defaultTextTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.w700,
              ),
              onTap: () =>
                  Get.toNamed(AppRoutes.personalInfoFormZipCodeScreen)),
        ),
      ),
    );
  }
}
