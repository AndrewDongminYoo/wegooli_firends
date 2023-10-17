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
              svgPath: Assets.imgArrowleft,
              margin: EdgeInsets.only(left: 16.h, top: 16.v, bottom: 16.v),
              onTap: Get.back,
            ),
            centerTitle: true,
            title: AppbarSubtitle(text: '정보 입력'),
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
                                          Text('집주소',
                                              style: textTheme.bodySmall),
                                          SizedBox(height: 3.v),
                                          CustomTextFormField(
                                              width: 160.h,
                                              controller:
                                                  controller.postalcodeone,
                                              hintText: '우편번호')
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: CustomElevatedButton(
                                          height: 42.v,
                                          text: '주소 검색',
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
                                            color:
                                                lightTheme.onPrimaryContainer,
                                            fontWeight: FontWeight.w700,
                                          )))
                                ]),
                            SizedBox(height: 10.v),
                            CustomTextFormField(
                                controller: controller.defaultaddress,
                                hintText: '기본주소'),
                            SizedBox(height: 10.v),
                            CustomTextFormField(
                                controller: controller.detailedaddress,
                                hintText: '동·호수 등 상세 주소'),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('아이디', style: textTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller: controller.emailaddress,
                                      hintText: '이메일 주소 입력')
                                ]),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('비밀번호', style: textTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller: controller.eyecrossedout,
                                      hintText: '영문/숫자/특수문자 조합 (6~12자)',
                                      suffix: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              top: 7.v,
                                              bottom: 8.v),
                                          child: CustomImageView(
                                              svgPath: Assets
                                                  .imgEyeCrossedOut)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 39.v))
                                ]),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('비밀번호 확인', style: textTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller: controller.passwordreentry,
                                      hintText: '비밀번호 재입력',
                                      suffix: Container(
                                          margin: EdgeInsets.only(
                                              left: 30.h,
                                              top: 7.v,
                                              bottom: 8.v),
                                          child: CustomImageView(
                                              svgPath: Assets
                                                  .imgEyeCrossedOut)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 39.v))
                                ]),
                            SizedBox(height: 30.v),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('닉네임', style: textTheme.bodySmall),
                                  SizedBox(height: 3.v),
                                  CustomTextFormField(
                                      controller: controller.nicknameinput,
                                      hintText: '닉네임 입력 (8자 이내)',
                                      textInputAction: TextInputAction.done)
                                ])
                          ]))))
            ])),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 16.v),
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
          ),
          child: CustomElevatedButton(
              height: 48.v,
              text: '입력 완료',
              buttonStyle: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFF3F3F6),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.h),
                ),
              ),
              buttonTextStyle: textTheme.titleSmall!.copyWith(
                color: const Color(0xFFB0B2BC),
                fontWeight: FontWeight.w700,
              )),
        ),
      ),
    );
  }
}
