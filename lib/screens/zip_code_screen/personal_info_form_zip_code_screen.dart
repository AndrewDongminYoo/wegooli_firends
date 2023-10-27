// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/gen/assets.gen.dart';
import '/layout/unfocused.dart';
import '/screens/license_screen/license_register_screen.dart';
import '/theme/button_styles.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/buttons/elevated_button.dart';
import '/widgets/image_view.dart';
import '/widgets/text_form_field.dart';
import 'controller/personal_info_form_zip_code_controller.dart';

class PersonalInfoFormZipCodeScreen extends StatelessWidget {
  const PersonalInfoFormZipCodeScreen({super.key});
  static const routeName = '/form_zip_code';

  @override
  Widget build(BuildContext context) {
    final controller = PersonalInfoFormZipCodeController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: 50.v,
          leadingWidth: 34.h,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '정보 입력'),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: UnfocusedForm(
            canSubmit: controller.canSubmit,
            children: [
              SizedBox(height: 10.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.h,
                      right: 16.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 4.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '집주소',
                                      style: textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 3.v),
                                    CustomTextFormField(
                                      width: 160.h,
                                      controller: controller.postCode,
                                      hintText: '우편번호',
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: CustomElevatedButton(
                                onTap: () async {
                                  await controller.acceptZipCode(context);
                                },
                                height: 36.v,
                                text: '주소 검색',
                                margin: EdgeInsets.only(
                                  left: 4.h,
                                  top: 15.v,
                                ),
                                buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF464A70),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.h),
                                  ),
                                ).noEffect,
                                buttonTextStyle:
                                    theme.textTheme.titleSmall!.copyWith(
                                  color: lightTheme.onPrimaryContainer,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.v),
                        CustomTextFormField(
                          controller: controller.address1,
                          hintText: '기본주소',
                        ),
                        SizedBox(height: 10.v),
                        CustomTextFormField(
                          controller: controller.address2,
                          hintText: '동·호수 등 상세 주소',
                        ),
                        SizedBox(height: 30.v),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '아이디',
                              style: textTheme.bodySmall,
                            ),
                            SizedBox(height: 3.v),
                            CustomTextFormField(
                              controller: controller.usermail,
                              hintText: '이메일 주소 입력',
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
                              controller: controller.password,
                              hintText: '영문/숫자/특수문자 조합 (6~12자)',
                              suffix: Container(
                                margin: EdgeInsets.only(
                                  left: 30.h,
                                  top: 7.v,
                                  bottom: 8.v,
                                ),
                                child: CustomImageView(
                                  svgPath: Assets.svg.icoEyeCrossedOut.path,
                                ),
                              ),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 39.v),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.v),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '비밀번호 확인',
                              style: textTheme.bodySmall,
                            ),
                            SizedBox(height: 3.v),
                            CustomTextFormField(
                              controller: controller.passpass,
                              hintText: '비밀번호 재입력',
                              suffix: Container(
                                margin: EdgeInsets.only(
                                  left: 30.h,
                                  top: 7.v,
                                  bottom: 8.v,
                                ),
                                child: CustomImageView(
                                  svgPath: Assets.svg.icoEyeCrossedOut.path,
                                ),
                              ),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 39.v),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.v),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '닉네임',
                              style: textTheme.bodySmall,
                            ),
                            SizedBox(height: 3.v),
                            CustomTextFormField(
                              controller: controller.nickname,
                              hintText: '닉네임 입력 (8자 이내)',
                              textInputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
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
            isDisabled: !controller.canSubmit.value,
            // TODO: 주소 입력 다음 화면으로
            onTap: () {
              controller.printFormFields();
              context.goNamed(LicenseRegisterScreen.routeName);
            },
            height: 48.v,
            text: '입력 완료',
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
