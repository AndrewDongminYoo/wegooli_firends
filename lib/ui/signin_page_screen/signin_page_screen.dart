// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/image_constant.dart';
import '/core/utils/size_utils.dart';
import '/theme/theme_helper.dart';
import '/widgets/custom_elevated_button.dart';
import '/widgets/custom_image_view.dart';
import '/widgets/custom_text_form_field.dart';
import 'controller/signin_page_controller.dart';

class SigninPageScreen extends GetWidget<SigninPageController> {
  const SigninPageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 50.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 30.v),
              CustomImageView(
                svgPath: ImageConstant.imgFriendsOnPrimary,
                height: 38.v,
                width: 193.h,
              ),
              SizedBox(height: 97.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '이메일 아이디',
                    style: defaultTextTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.emailinputoneController,
                    hintText: '이메일 입력',
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '비밀번호',
                    style: defaultTextTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.passwordinputController,
                    hintText: '비밀번호 입력',
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.only(
                        left: 30.h,
                        top: 7.v,
                        bottom: 8.v,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgEyeCrossedOut,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: 39.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 48.v,
                text: '로그인',
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: defaultColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                ),
                buttonTextStyle: defaultTextTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 60.v),
              Text(
                '회원이 아니신가요?',
                style: defaultTextTheme.bodySmall,
              ),
              SizedBox(height: 10.v),
              Text(
                '회원가입',
                style: defaultTextTheme.bodySmall!.copyWith(
                  color: const Color(0xFFB0B2BC),
                ),
              ),
              SizedBox(height: 1.v),
              SizedBox(
                width: 42.h,
                child: const Divider(
                  color: Color(0xFFB0B2BC),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
