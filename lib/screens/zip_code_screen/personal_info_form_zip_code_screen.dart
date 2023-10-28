// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

// 🌎 Project imports:
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
          height: 50.h,
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '정보 입력'),
          styleType: Style.bgFill,
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: UnfocusedForm(
            canSubmit: controller.canSubmit,
            children: [
              SizedBox(height: 10.h),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 16.w,
                      right: 16.w,
                      bottom: 5.h,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(right: 4.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '집주소',
                                      style: textTheme.bodySmall,
                                    ),
                                    SizedBox(height: 3.h),
                                    CustomTextFormField(
                                      width: 160.w,
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
                                height: 36.h,
                                text: '주소 검색',
                                margin: EdgeInsets.only(
                                  left: 4.w,
                                  top: 15.h,
                                ),
                                buttonStyle: ElevatedButton.styleFrom(
                                  backgroundColor: Palette.button2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.w),
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
                        SizedBox(height: 10.h),
                        CustomTextFormField(
                          controller: controller.address1,
                          hintText: '기본주소',
                        ),
                        SizedBox(height: 10.h),
                        CustomTextFormField(
                          controller: controller.address2,
                          hintText: '동·호수 등 상세 주소',
                        ),
                        SizedBox(height: 30.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '아이디',
                              style: textTheme.bodySmall,
                            ),
                            SizedBox(height: 3.h),
                            CustomTextFormField(
                              controller: controller.usermail,
                              hintText: '이메일 주소 입력',
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
                              controller: controller.password,
                              hintText: '영문/숫자/특수문자 조합 (6~12자)',
                              suffix: Container(
                                margin: EdgeInsets.only(
                                  left: 30.w,
                                  top: 7.h,
                                  bottom: 8.h,
                                ),
                                child: CustomImageView(
                                  svgPath: Assets.svg.icoEyeCrossedOut.path,
                                ),
                              ),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 39.h),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '비밀번호 확인',
                              style: textTheme.bodySmall,
                            ),
                            SizedBox(height: 3.h),
                            CustomTextFormField(
                              controller: controller.passpass,
                              hintText: '비밀번호 재입력',
                              suffix: Container(
                                margin: EdgeInsets.only(
                                  left: 30.w,
                                  top: 7.h,
                                  bottom: 8.h,
                                ),
                                child: CustomImageView(
                                  svgPath: Assets.svg.icoEyeCrossedOut.path,
                                ),
                              ),
                              suffixConstraints:
                                  BoxConstraints(maxHeight: 39.h),
                            ),
                          ],
                        ),
                        SizedBox(height: 30.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '닉네임',
                              style: textTheme.bodySmall,
                            ),
                            SizedBox(height: 3.h),
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
            left: 16.w,
            right: 16.w,
            bottom: 16.h,
          ),
          decoration: BoxDecoration(color: lightTheme.onPrimaryContainer),
          child: CustomElevatedButton(
            isDisabled: !controller.canSubmit.value,
            // TODO: 주소 입력 다음 화면으로
            onTap: () {
              controller.printFormFields();
              context.goNamed(LicenseRegisterScreen.routeName);
            },
            height: 48.h,
            text: '입력 완료',
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
