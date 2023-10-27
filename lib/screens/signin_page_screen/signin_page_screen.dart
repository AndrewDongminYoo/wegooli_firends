// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/layout/unfocused.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/signin_page_controller.dart';

class SigninPageScreen extends StatelessWidget {
  const SigninPageScreen({super.key});
  static const routeName = '/signin';

  @override
  Widget build(BuildContext context) {
    final controller = SigninPageController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 50.h,
          ),
          child: UnfocusedForm(
            canSubmit: controller.canSubmit,
            children: [
              SizedBox(height: 30.h),
              CustomImageView(
                svgPath: Assets.svg.imgFriends.path,
                height: 38.h,
                width: 193.w,
              ),
              SizedBox(height: 97.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '이메일 아이디',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.h),
                  CustomTextFormField(
                    controller: controller.loginName,
                    hintText: '이메일 입력',
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '비밀번호',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.h),
                  CustomTextFormField(
                    controller: controller.loginPass,
                    hintText: '비밀번호 입력',
                    textInputAction: TextInputAction.done,
                    suffix: Container(
                      margin: EdgeInsets.only(
                        left: 30.w,
                        top: 7.h,
                        bottom: 8.h,
                      ),
                      child: CustomImageView(
                          svgPath: Assets.svg.icoEyeCrossedOut.path),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: 39.h),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              CustomElevatedButton(
                isDisabled: !controller.canSubmit.value,
                // TODO: 로그인 로직
                onTap: controller.printFormFields,
                height: 48.h,
                text: '로그인',
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: lightTheme.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                ).noEffect,
                buttonTextStyle: textTheme.titleSmall!.bold,
              ),
              SizedBox(height: 60.h),
              Text(
                '회원이 아니신가요?',
                style: textTheme.bodySmall,
              ),
              SizedBox(height: 10.h),
              Text(
                '회원가입',
                style: textTheme.bodySmall!.tint(const Color(0xFFB0B2BC)),
              ),
              SizedBox(
                width: 42.w,
                height: 1.h,
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
