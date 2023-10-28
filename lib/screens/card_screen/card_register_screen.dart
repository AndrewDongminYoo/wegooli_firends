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
import 'controller/card_controller.dart';

class CardRegisterScreen extends StatelessWidget {
  const CardRegisterScreen({super.key});
  static const routeName = '/card_register';

  @override
  Widget build(BuildContext context) {
    final controller = CardController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 34.w,
          leading: const GetBackIcon(),
          title: const AppbarTitle(text: '카드 등록'),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: UnfocusedForm(
            canSubmit: controller.canSubmit,
            children: [
              SizedBox(height: 30.h),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.h),
                                  child: Text(
                                    '카드번호',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.w,
                                    bottom: 2.h,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(Palette.red600),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            CustomTextFormField(
                              controller: controller.cardNum,
                              hintText: '0000  0000  0000  0000',
                              hintStyle:
                                  textTheme.bodyLarge!.tint(Palette.gray500),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 14.h,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.h),
                                  child: Text(
                                    '유효기간',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.w,
                                    bottom: 2.h,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(Palette.red600),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            CustomTextFormField(
                              controller: controller.cardExp,
                              hintText: 'MM/YY',
                              hintStyle:
                                  textTheme.bodyLarge!.tint(Palette.gray500),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 14.h,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.h),
                                  child: Text(
                                    '주민등록번호 앞자리',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.w,
                                    bottom: 2.h,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(Palette.red600),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            CustomTextFormField(
                              controller: controller.birthday,
                              hintText: '940812',
                              hintStyle:
                                  textTheme.bodyLarge!.tint(Palette.gray500),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.w,
                                vertical: 14.h,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineGrayTL5,
                              fillColor: Palette.blueGray300,
                            ),
                          ],
                        ),
                        SizedBox(height: 26.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.h),
                                  child: Text(
                                    '카드 비밀번호 앞 2자리',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.w,
                                    bottom: 2.h,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(Palette.red600),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.h),
                            CustomTextFormField(
                              controller: controller.cardPin,
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
            bottom: 29.h,
          ),
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
            boxShadow: [
              BoxShadow(
                color: Palette.shadow,
                spreadRadius: 2.w,
                blurRadius: 2.w,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: CustomElevatedButton(
            isDisabled: !controller.canSubmit.value,
            onTap: controller.printFormFields,
            text: '확인',
            buttonStyle: ElevatedButton.styleFrom(
              backgroundColor: Palette.gray100,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.w),
              ),
            ).noEffect,
            buttonTextStyle: textTheme.titleMedium!.copyWith(
              color: Palette.blueGray200,
              fontSize: TextSize.lg,
            ),
          ),
        ),
      ),
    );
  }
}
