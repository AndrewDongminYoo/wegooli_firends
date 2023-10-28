// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/layout/unfocused.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/text_form_field.dart';
import 'controller/verification_controller.dart';

class VerificationWaitingScreen extends StatelessWidget {
  const VerificationWaitingScreen({super.key});
  static const routeName = '/verification_waiting';

  @override
  Widget build(BuildContext context) {
    final controller = VerificationController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 50.h,
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '본인 인증'),
        ),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 10.h,
          ),
          child: UnfocusedForm(
            canSubmit: controller.canSubmit,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '이름',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.h),
                  CustomTextFormField(
                    controller: controller.realname,
                    hintText: '홍길동',
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              SizedBox(
                height: 76.h,
                width: 328.w,
                child: Stack(
                  alignment: Alignment.centerRight,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '주민등록번호 13자리',
                            style: textTheme.bodySmall,
                          ),
                          SizedBox(height: 3.h),
                          CustomTextFormField(
                            width: 156.w,
                            controller: controller.birthday,
                            hintText: '940812',
                          ),
                          SizedBox(height: 3.h),
                          Text(
                            '만 26세 미만은 가입이 제한됩니다.',
                            style: textTheme.bodySmall!
                                .tint(lightTheme.primaryContainer),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTextFormField(
                            width: 156.w,
                            controller: controller.socialId,
                            hintText: '2 ⁕⁕⁕⁕⁕⁕',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '휴대폰 정보',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.h),
                  CustomTextFormField(
                    controller: controller.phonenum,
                    hintText: '010-1234-5678',
                    textInputAction: TextInputAction.done,
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              CustomElevatedButton(
                isDisabled: !controller.canSubmit.value,
                // TODO: 인증번호 발송
                onTap: () => print(controller.phonenum),
                height: 42.h,
                text: '인증번호 발송',
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF464A70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                ).noEffect,
                buttonTextStyle: textTheme.titleSmall!.copyWith(
                  color: lightTheme.onPrimaryContainer,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.h),
              CustomTextFormField(
                contentPadding: EdgeInsets.symmetric(vertical: 9.h),
                hintText: '인증번호 입력',
                suffix: const Text('3:00'),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          isDisabled: !controller.canSubmit.value,
          // TODO: 인증번호 확인
          onTap: () => print(controller.phonenum),
          height: 48.h,
          text: '인증하기',
          margin: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
          ),
          buttonStyle: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFF3F3F6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.w),
            ),
          ).noEffect,
          buttonTextStyle: textTheme.titleSmall!.copyWith(
            color: const Color(0xFFB0B2BC),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
