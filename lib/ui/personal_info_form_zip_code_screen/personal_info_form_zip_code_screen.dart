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
import 'controller/personal_info_form_zip_code_controller.dart';

class PersonalInfoFormZipCodeScreen
    extends GetWidget<PersonalInfoFormZipCodeController> {
  const PersonalInfoFormZipCodeScreen({Key? key}) : super(key: key);

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
            title: AppbarSubtitle(text: 'lbl75'.tr),
            styleType: Style.bgFill),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 10.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(
                              left: 16.h, right: 16.h, bottom: 5.v),
                          child: Column(children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 4.h),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('lbl76'.tr,
                                              style:
                                                  defaultTextTheme.bodySmall),
                                          SizedBox(height: 3.v),
                                          CustomTextFormField(
                                              width: 160.h,
                                              controller: controller
                                                  .postalcodeoneController,
                                              hintText: 'lbl77'.tr)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: CustomElevatedButton(
                                          height: 42.v,
                                          text: 'lbl78'.tr,
                                          margin: EdgeInsets.only(
                                              left: 4.h, top: 15.v),
                                          buttonStyle: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF464A70),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8.h),
                                            ),
                                          ),
                                          buttonTextStyle: theme
                                              .textTheme.titleSmall!
                                              .copyWith(
                                            color: defaultColors
                                                .onPrimaryContainer,
                                            fontWeight: FontWeight.w700,
                                          )))
                                ]),
                            SizedBox(height: 10.v),
                            CustomTextFormField(
                                controller: controller.defaultaddressController,
                                hintText: 'lbl79'.tr),
                            SizedBox(height: 10.v),
                            CustomTextFormField(
                                controller:
                                    controller.detailedaddressController,
                                hintText: 'lbl80'.tr),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('lbl81'.tr,
                                      style: defaultTextTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller:
                                          controller.emailaddressController,
                                      hintText: 'lbl82'.tr)
                                ]),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('lbl62'.tr,
                                      style: defaultTextTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller:
                                          controller.eyecrossedoutController,
                                      hintText: 'msg_6_12'.tr,
                                      suffix: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              top: 7.v,
                                              bottom: 8.v),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgEyeCrossedOut)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 39.v))
                                ]),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('lbl83'.tr,
                                      style: defaultTextTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller:
                                          controller.passwordreentryController,
                                      hintText: 'lbl84'.tr,
                                      suffix: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              top: 7.v,
                                              bottom: 8.v),
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgEyeCrossedOut)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 39.v))
                                ]),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('lbl41'.tr,
                                      style: defaultTextTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller:
                                          controller.nicknameinputController,
                                      hintText: 'lbl_83'.tr,
                                      textInputAction: TextInputAction.done)
                                ])
                          ]))))
            ])),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
          decoration: BoxDecoration(
            color: defaultColors.onPrimaryContainer,
          ),
          child: CustomElevatedButton(
              height: 48.v,
              text: 'lbl85'.tr,
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
