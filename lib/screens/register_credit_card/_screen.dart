// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterCreditCard extends GetWidget<RegisterCreditCardController> {
  PhoneAuthController phoneAuthController = PhoneAuthController.to;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                height: getVerticalSize(53),
                leadingWidth: 34,
                leading: CustomImageView(
                    height: getSize(18),
                    width: getSize(18),
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 16, top: 19, bottom: 16),
                    onTap: () {
                      onTabBackButton();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: l10ns.cardRegistration)),
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
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 2),
                                      child: Text(l10ns.cardNumber,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleMedium!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(
                                                          0.03)))),
                                  Padding(
                                      padding: getPadding(left: 5, bottom: 5),
                                      child: Text("*",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: theme.textTheme.titleSmall!
                                              .copyWith(
                                                  letterSpacing:
                                                      getHorizontalSize(0.06))))
                                ]),
                            CustomTextFormField(
                                controller: controller.cardNumController,
                                margin: getMargin(top: 4),
                                contentPadding: getPadding(
                                    left: 12, top: 14, right: 12, bottom: 14),
                                textStyle: CustomTextStyles.bodyLargeGray50003,
                                hintText: "0000  0000  0000  0000",
                                hintStyle: CustomTextStyles.bodyLargeGray50003,
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
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text(l10ns.expirationDate,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))),
                                      Padding(
                                          padding:
                                              getPadding(left: 5, bottom: 5),
                                          child: Text("*",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.06))))
                                    ]),
                                CustomTextFormField(
                                    controller: controller.expDateController,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: "MM/YY",
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
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
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text(
                                              l10ns
                                                  .socialSecurityNumberFirstDigit,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))),
                                      Padding(
                                          padding:
                                              getPadding(left: 5, bottom: 5),
                                          child: Text("*",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.06))))
                                    ]),
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
                                    hintText: "YYMMDD",
                                    initialValue:
                                        phoneAuthController.birthDay.text,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
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
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text(
                                              l10ns.first2DigitsOfCardPassword,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme
                                                  .textTheme.titleMedium!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))),
                                      Padding(
                                          padding:
                                              getPadding(left: 5, bottom: 5),
                                          child: Text("*",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.06))))
                                    ]),
                                CustomTextFormField(
                                    controller:
                                        controller.grouptwentynineController,
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
                      if (this.isValid()) {
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
