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
import 'controller/identity_verification_waiting_controller.dart';

class IdentityVerificationWaitingScreen
    extends GetWidget<IdentityVerificationWaitingController> {
  const IdentityVerificationWaitingScreen({Key? key}) : super(key: key);

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
                title: AppbarSubtitle(text: '본인 인증')),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
                child: Column(children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('이름', style: textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        CustomTextFormField(
                            controller: controller.nameoneController,
                            hintText: '홍길동')
                      ]),
                  SizedBox(height: 30.v),
                  SizedBox(
                      height: 76.v,
                      width: 328.h,
                      child: Stack(alignment: Alignment.centerRight, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('주민등록번호 13자리',
                                      style: textTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      width: 156.h,
                                      controller: controller.zipcodeController,
                                      hintText: '940812'),
                                  SizedBox(height: 3.v),
                                  Text('만 26세 미만은 가입이 제한됩니다.',
                                      style: textTheme.bodySmall!.copyWith(
                                        color: lightTheme.primaryContainer,
                                      ))
                                ])),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                                height: 39.v,
                                width: 156.h,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: const Color(0xFFB0B2BC),
                                            width: 1.h))))),
                        Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                                padding:
                                    EdgeInsets.only(top: 24.v, right: 76.h),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(
                                              top: 10.v, bottom: 8.v),
                                          child: const SizedBox(
                                              child: Divider(
                                                  color: Color(0xFFB0B2BC)))),
                                      Padding(
                                          padding: EdgeInsets.only(left: 10.h),
                                          child: Text('2',
                                              style: textTheme.bodyLarge)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h,
                                              top: 6.v,
                                              bottom: 6.v)),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGlobe,
                                          height: 7.adaptSize,
                                          width: 7.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 4.h, top: 6.v, bottom: 6.v))
                                    ])))
                      ])),
                  SizedBox(height: 30.v),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('휴대폰 정보', style: textTheme.bodySmall),
                        SizedBox(height: 3.v),
                        CustomTextFormField(
                            controller: controller.phonenumberone,
                            hintText: '010-1234-5678',
                            textInputAction: TextInputAction.done)
                      ]),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      height: 42.v,
                      text: '인증번호 발송',
                      buttonStyle: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF464A70),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.h),
                        ),
                      ),
                      buttonTextStyle: textTheme.titleSmall!.copyWith(
                        color: lightTheme.onPrimaryContainer,
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
                            Text('인증번호 입력',
                                style: textTheme.bodyLarge!.copyWith(
                                  color: const Color(0xFFB0B2BC),
                                )),
                            Text('3:00',
                                style: textTheme.bodyLarge!.copyWith(
                                  color: lightTheme.primaryContainer,
                                ))
                          ])),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: CustomElevatedButton(
                height: 48.v,
                text: '인증하기',
                margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF3F3F6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                ),
                buttonTextStyle: textTheme.titleSmall!.copyWith(
                  color: const Color(0xFFB0B2BC),
                  fontWeight: FontWeight.w700,
                ))));
  }
}
