// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterCreditCard extends GetWidget<PaymentCardController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar.getDefaultAppBar(l10ns.cardRegistration),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 35, right: 16, bottom: 35),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomInputLabel(labelText: l10ns.cardNumber),
                            CustomTextFormField(
                                controller: controller.creditCardId,
                                margin: getMargin(top: 4),
                                contentPadding: getPadding(
                                    left: 12, top: 14, right: 12, bottom: 14),
                                textStyle: CustomTextStyles.bodyLargeGray50003,
                                hintStyle: CustomTextStyles.bodyLargeGray50003,
                                inputFormatters: <TextInputFormatter>[
                                  SeperateTextFormatter(
                                      sample: 'XXXX XXXX XXXX XXXX',
                                      separator: ' '),
                                  LengthLimitingTextInputFormatter(19),
                                  FilteringTextInputFormatter.allow(r'[0-9 ]'),
                                ],
                                hintText: "0000\t0000\t0000\t0000",
                                textInputAction: TextInputAction.next,
                                filled: true,
                                fillColor: theme.colorScheme.onPrimaryContainer)
                          ]),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInputLabel(
                                    labelText: l10ns.expirationDate),
                                CustomTextFormField(
                                    controller: controller.expirationDT,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: "MM/YY",
                                    inputFormatters: [
                                      SeperateTextFormatter(
                                          sample: 'XX/XX', separator: '/'),
                                      LengthLimitingTextInputFormatter(5),
                                      FilteringTextInputFormatter.allow(
                                          r'[0-9/]'),
                                    ],
                                    textInputAction: TextInputAction.next,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInputLabel(
                                    labelText:
                                        l10ns.socialSecurityNumberFirstDigit),
                                CustomTextFormField(
                                    enabled: false,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: "YYMMDD",
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(6),
                                    ],
                                    initialValue:
                                        UserController.to.birthDay.text,
                                    textInputAction: TextInputAction.next,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 29, bottom: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInputLabel(
                                    labelText:
                                        l10ns.first2DigitsOfCardPassword),
                                CustomTextFormField(
                                    controller: controller.cardPassword,
                                    inputFormatters: [
                                      LengthLimitingTextInputFormatter(2),
                                      FilteringTextInputFormatter.digitsOnly
                                    ],
                                    margin: getMargin(top: 4),
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                // decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    // TODO disabled 일때 스타일 정의하기
                    text: l10ns.register,
                    buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(52)))),
                    buttonTextStyle: CustomTextStyles.titleMedium18,
                    onTap: () {
                      if (controller.cardInputSucceed) {
                        onTapRegisterSuccess();
                      }
                    }))));
  }

  bool isValid() {
    // TODO: 카드 정보가 valid하면 true, 아니면 false.
    return true;
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }

  onTapRegisterSuccess() {
    Get.toNamed(AppRoutes.registerSuccess);
  }
}
