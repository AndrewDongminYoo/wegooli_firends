// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/layout/unfocused.dart';
import '/theme/button_styles.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/verification_controller.dart';

class VerificationFilledScreen extends StatelessWidget {
  const VerificationFilledScreen({super.key});
  static const routeName = '/verification_filled';

  @override
  Widget build(BuildContext context) {
    final controller = VerificationController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 50.v,
          leadingWidth: 34.h,
          leading: const GetBackIcon(),
          title: AppbarTitle(text: '본인 인증'),
          styleType: Style.bgFill,
        ),
        body: UnfocusedForm(
          canSubmit: controller.canSubmit,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 10.v,
            ),
            child: Column(
              children: [
                Text(
                  '이름',
                  style: textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                CustomTextFormField(
                  controller: controller.realname,
                  hintText: '홍길동',
                ),
                SizedBox(height: 30.v),
                Text(
                  '주민등록번호 13자리',
                  style: textTheme.bodySmall,
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
                  child: Row(
                    children: [
                      Text(
                        '940812',
                        style: textTheme.bodyLarge,
                      ),
                      const Spacer(),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10.v,
                          bottom: 6.v,
                        ),
                        child: const SizedBox(
                          child: Divider(
                            color: Color(0xFFB0B2BC),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: Text('2', style: textTheme.bodyLarge),
                      ),
                      customIcon(
                        Assets.svg.icoGlobe.path,
                        size: 7.adaptSize,
                        margin: EdgeInsets.only(
                          left: 9.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                      ),
                      customIcon(
                        Assets.svg.icoGlobe.path,
                        size: 7.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                      ),
                      customIcon(
                        Assets.svg.icoGlobe.path,
                        size: 7.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                      ),
                      customIcon(
                        Assets.svg.icoGlobe.path,
                        size: 7.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                      ),
                      customIcon(
                        Assets.svg.icoGlobe.path,
                        size: 7.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          top: 6.v,
                          bottom: 6.v,
                        ),
                      ),
                      customIcon(
                        Assets.svg.icoGlobe.path,
                        size: 7.adaptSize,
                        margin: EdgeInsets.fromLTRB(4.h, 6.v, 70.h, 6.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 3.v),
                Text(
                  '만 26세 미만은 가입이 제한됩니다.',
                  style: textTheme.bodySmall!.tint(lightTheme.primaryContainer),
                ),
                SizedBox(height: 30.v),
                Text(
                  '휴대폰 정보',
                  style: textTheme.bodySmall,
                ),
                SizedBox(height: 3.v),
                CustomTextFormField(
                  controller: controller.phonenum,
                  hintText: '010-1234-5678',
                  textInputAction: TextInputAction.done,
                ),
                SizedBox(height: 20.v),
                CustomElevatedButton(
                  isDisabled: !controller.canSubmit.value,
                  // TODO: 인증번호 발송
                  onTap: () => print(controller.phonenum),
                  height: 42.v,
                  text: '인증번호 발송',
                  buttonStyle: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF464A70),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                  ).noEffect,
                  buttonTextStyle: textTheme.titleSmall!.copyWith(
                    color: lightTheme.onPrimaryContainer,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(
            left: 16.h,
            right: 16.h,
            bottom: 16.v,
          ),
          decoration: BoxDecoration(color: lightTheme.onPrimaryContainer),
          child: CustomElevatedButton(
            isDisabled: !controller.canSubmit.value,
            // TODO: 인증번호 확인
            onTap: () => print(controller.phonenum),
            height: 48.v,
            text: '인증하기',
            buttonStyle: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF3F3F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.h),
              ),
            ).noEffect,
            buttonTextStyle: textTheme.titleSmall!.copyWith(
              color: const Color(0xFFB0B2BC),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
