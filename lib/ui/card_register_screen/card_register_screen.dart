// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/utils/size_utils.dart';
import '/layout/unfocused.dart';
import '/theme/button_styles.dart';
import '/theme/custom_text_style.dart';
import '/theme/theme_helper.dart';
import '/widgets/app_bar/appbar_title.dart';
import '/widgets/app_bar/custom_app_bar.dart';
import '/widgets/elevated_button.dart';
import '/widgets/text_form_field.dart';
import 'controller/card_register_controller.dart';

class CardRegisterScreen extends StatelessWidget {
  const CardRegisterScreen({super.key});
  static const routeName = '/card_register';

  @override
  Widget build(BuildContext context) {
    final controller = CardRegisterController.to;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          leadingWidth: 34.h,
          leading: const GetBackIcon(),
          title: AppbarTitle(text: '카드 등록'),
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: UnfocusedForm(
            canSubmit: controller.canSubmit,
            children: [
              SizedBox(height: 30.v),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    '카드번호',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(const Color(0xFFDB4646)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.v),
                            CustomTextFormField(
                              controller: controller.cardNum,
                              hintText: '0000  0000  0000  0000',
                              hintStyle: textTheme.bodyLarge!
                                  .tint(const Color(0xFF8E9199)),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 14.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.v),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    '유효기간',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(const Color(0xFFDB4646)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.v),
                            CustomTextFormField(
                              controller: controller.cardExp,
                              hintText: 'MM/YY',
                              hintStyle: textTheme.bodyLarge!
                                  .tint(const Color(0xFF8E9199)),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 14.v,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.v),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    '주민등록번호 앞자리',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(const Color(0xFFDB4646)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.v),
                            CustomTextFormField(
                              controller: controller.birthday,
                              hintText: '940812',
                              hintStyle: textTheme.bodyLarge!
                                  .tint(const Color(0xFF8E9199)),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 8.h,
                                vertical: 14.v,
                              ),
                              borderDecoration:
                                  TextFormFieldStyleHelper.outlineGrayTL5,
                              fillColor: const Color(0x33A4A8AF),
                            ),
                          ],
                        ),
                        SizedBox(height: 26.v),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text(
                                    '카드 비밀번호 앞 2자리',
                                    style: textTheme.titleMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 5.h,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    '*',
                                    style: textTheme.titleMedium!
                                        .tint(const Color(0xFFDB4646)),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.v),
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
            left: 16.h,
            right: 16.h,
            bottom: 29.v,
          ),
          decoration: BoxDecoration(
            color: lightTheme.onPrimaryContainer,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: const Offset(
                  2,
                  2,
                ),
              ),
            ],
          ),
          child: CustomElevatedButton(
            isDisabled: !controller.canSubmit.value,
            onTap: controller.printFormFields,
            text: '확인',
            buttonStyle: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFF3F3F6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26.h),
              ),
            ).noEffect,
            buttonTextStyle: textTheme.titleMedium!.copyWith(
              color: const Color(0xFFB0B2BC),
              fontSize: TextSize.lg.fSize,
            ),
          ),
        ),
      ),
    );
  }
}
