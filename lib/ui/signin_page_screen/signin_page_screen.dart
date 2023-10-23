// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/theme_helper.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/signin_page_controller.dart';

class SigninPageScreen extends GetWidget<SigninPageController> {
  const SigninPageScreen({super.key});
  static const routeName = '/signin';

  @override
  Widget build(BuildContext context) {
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
                svgPath: Assets.svg.imgFriends.path,
                height: 38.v,
                width: 193.h,
              ),
              SizedBox(height: 97.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '이메일 아이디',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.emailinputone,
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
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.passwordinput,
                    hintText: '비밀번호 입력',
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.only(
                        left: 30.h,
                        top: 7.v,
                        bottom: 8.v,
                      ),
                      child: CustomImageView(
                          svgPath: Assets.svg.icoEyeCrossedOut.path),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: 39.v),
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              CustomElevatedButton(
                height: 48.v,
                text: '로그인',
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: lightTheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                ),
                buttonTextStyle:
                    textTheme.titleSmall!.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 60.v),
              Text(
                '회원이 아니신가요?',
                style: textTheme.bodySmall,
              ),
              SizedBox(height: 10.v),
              Text(
                '회원가입',
                style: textTheme.bodySmall!.copyWith(
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
