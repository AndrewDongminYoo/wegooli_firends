// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/theme/button_styles.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/identity_verification_empty_controller.dart';

class VerificationEmptyScreen extends StatelessWidget {
  const VerificationEmptyScreen({super.key});
  static const routeName = '/verification_empty';

  @override
  Widget build(BuildContext context) {
    final controller = VerificationEmptyController.to;
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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.v,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '이름',
                    style: textTheme.bodySmall,
                  ),
                  SizedBox(height: 3.v),
                  CustomTextFormField(
                    controller: controller.realname,
                    hintText: '이름을 입력해주세요.',
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          '6자리 입력',
                          style: textTheme.bodyLarge!
                              .tint(const Color(0xFFB0B2BC)),
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
                        customIcon(
                          Assets.svg.icoGlobe.path,
                          size: 7.adaptSize,
                          margin: EdgeInsets.only(
                            left: 29.h,
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
                    style:
                        textTheme.bodySmall!.tint(lightTheme.primaryContainer),
                  ),
                ],
              ),
              SizedBox(height: 30.v),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                ],
              ),
              SizedBox(height: 17.v),
              CustomElevatedButton(
                // TODO: 인증번호 발송
                onTap: controller.printFormFields,
                height: 42.v,
                text: '인증번호 발송',
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
              SizedBox(height: 5.v),
            ],
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
            // TODO: 인증번호 확인 로직
            onTap: controller.printFormFields,
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
