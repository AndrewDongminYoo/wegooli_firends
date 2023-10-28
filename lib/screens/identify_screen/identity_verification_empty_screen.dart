// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';

// 🌎 Project imports:
import '/gen/assets.gen.dart';
import '/layout/unfocused.dart';
import '/theme/button_styles.dart';
import '/theme/text_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/verification_controller.dart';

class VerificationEmptyScreen extends StatelessWidget {
  const VerificationEmptyScreen({super.key});
  static const routeName = '/verification_empty';

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
          styleType: Style.bgFill,
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
                    hintText: '이름을 입력해주세요.',
                  ),
                ],
              ),
              SizedBox(height: 30.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '주민등록번호 13자리',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.h),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 9.h),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Palette.blueGray200,
                          width: 1.w,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          '6자리 입력',
                          style: textTheme.bodyLarge!.tint(Palette.blueGray200),
                        ),
                        const Spacer(),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10.h,
                            bottom: 6.h,
                          ),
                          child: const SizedBox(
                            child: Divider(
                              color: Palette.blueGray200,
                            ),
                          ),
                        ),
                        customIcon(
                          Assets.svg.icoGlobe.path,
                          size: 7.w,
                          margin: EdgeInsets.only(
                            left: 29.w,
                            top: 6.h,
                            bottom: 6.h,
                          ),
                        ),
                        customIcon(
                          Assets.svg.icoGlobe.path,
                          size: 7.w,
                          margin: EdgeInsets.only(
                            left: 4.w,
                            top: 6.h,
                            bottom: 6.h,
                          ),
                        ),
                        customIcon(
                          Assets.svg.icoGlobe.path,
                          size: 7.w,
                          margin: EdgeInsets.only(
                            left: 4.w,
                            top: 6.h,
                            bottom: 6.h,
                          ),
                        ),
                        customIcon(
                          Assets.svg.icoGlobe.path,
                          size: 7.w,
                          margin: EdgeInsets.only(
                            left: 4.w,
                            top: 6.h,
                            bottom: 6.h,
                          ),
                        ),
                        customIcon(
                          Assets.svg.icoGlobe.path,
                          size: 7.w,
                          margin: EdgeInsets.only(
                            left: 4.w,
                            top: 6.h,
                            bottom: 6.h,
                          ),
                        ),
                        customIcon(
                          Assets.svg.icoGlobe.path,
                          size: 7.w,
                          margin: EdgeInsets.fromLTRB(4.w, 6.h, 70.w, 6.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.h),
                  Text(
                    '만 26세 미만은 가입이 제한됩니다.',
                    style:
                        textTheme.bodySmall!.tint(lightTheme.primaryContainer),
                  ),
                ],
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
              SizedBox(height: 17.h),
              CustomElevatedButton(
                isDisabled: !controller.canSubmit.value,
                // TODO: 인증번호 발송
                onTap: controller.printFormFields,
                height: 42.h,
                text: '인증번호 발송',
                buttonStyle: ElevatedButton.styleFrom(
                  backgroundColor: Palette.gray100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.w),
                  ),
                ).noEffect,
                buttonTextStyle: textTheme.titleSmall!.copyWith(
                  color: Palette.blueGray200,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5.h),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
          ),
          decoration: BoxDecoration(color: lightTheme.onPrimaryContainer),
          child: CustomElevatedButton(
            isDisabled: !controller.canSubmit.value,
            // TODO: 인증번호 확인 로직
            onTap: controller.printFormFields,
            height: 48.h,
            text: '인증하기',
            buttonStyle: ElevatedButton.styleFrom(
              backgroundColor: Palette.gray100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.w),
              ),
            ).noEffect,
            buttonTextStyle: textTheme.titleSmall!.copyWith(
              color: Palette.blueGray200,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
