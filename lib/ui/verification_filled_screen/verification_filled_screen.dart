// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/ui/identity_verification_waiting_with_telecom_screen/identity_verification_waiting_with_telecom_screen.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/verification_filled_controller.dart';

class VerificationFilledScreen extends GetWidget<VerificationFilledController> {
  const VerificationFilledScreen({super.key});
  static const routeName = '/verification_filled';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
            height: 50.v,
            leadingWidth: 34.h,
            leading: CustomImageView(
              svgPath: Assets.svg.icoArrowLeft.path,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarTitle(text: '본인 인증')),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 10.v),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('이름', style: textTheme.bodySmall),
                      CustomImageView(
                          svgPath: Assets.svg.icoApostrophe.path,
                          height: 5.adaptSize,
                          width: 5.adaptSize,
                          margin: EdgeInsets.only(left: 2.h, bottom: 10.v))
                    ],
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                      controller: controller.nameoneController, hintText: '홍길동')
                ],
              ),
              SizedBox(height: 30.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('주민등록번호 13자리', style: textTheme.bodySmall),
                          CustomImageView(
                              svgPath: Assets.svg.icoApostrophe.path,
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.only(left: 2.h, bottom: 10.v))
                        ],
                      ),
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
                          child: Text('940812', style: textTheme.bodyLarge)),
                      SizedBox(height: 3.v),
                      Text('만 26세 미만은 가입이 제한됩니다.',
                          style: textTheme.bodySmall!.copyWith(
                            color: lightTheme.primaryContainer,
                          ))
                    ],
                  ),
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
                      child: Text('*******', style: textTheme.bodyLarge))
                ],
              ),
              SizedBox(height: 30.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('휴대폰 정보', style: textTheme.bodySmall),
                          CustomImageView(
                              svgPath: Assets.svg.icoApostrophe.path,
                              height: 5.adaptSize,
                              width: 5.adaptSize,
                              margin: EdgeInsets.only(left: 2.h, bottom: 10.v))
                        ],
                      ),
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
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Text('KT', style: textTheme.bodyLarge),
                            CustomImageView(
                                svgPath: Assets.svg.icoCaretDown.path,
                                height: 18.adaptSize,
                                width: 18.adaptSize,
                                margin: EdgeInsets.only(left: 65.h))
                          ]))
                    ],
                  ),
                  CustomTextFormField(
                      width: 216.h,
                      controller: controller.phonenumberone,
                      margin: EdgeInsets.only(top: 19.v),
                      hintText: '010-1234-5678',
                      textInputAction: TextInputAction.done)
                ],
              ),
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
                  ),
                  onTap: () {
                    Get.toNamed(
                      VerificationWaitingScreen.routeName,
                    );
                  }),
              SizedBox(height: 5.v)
            ],
          ),
        ),
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
          ),
        ),
      ),
    );
  }
}
