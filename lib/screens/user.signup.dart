// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:kpostal/kpostal.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterZipCode extends GetWidget<UserController> {
  @override
  Widget build(BuildContext context) {
    var row = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(l10ns.confirmPassword,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium!
                  .copyWith(letterSpacing: getHorizontalSize(0.03)))),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text("*",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleSmall!
                  .copyWith(letterSpacing: getHorizontalSize(0.06))))
    ]);
    var row2 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(l10ns.password,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium!
                  .copyWith(letterSpacing: getHorizontalSize(0.03)))),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text("*",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleSmall!
                  .copyWith(letterSpacing: getHorizontalSize(0.06))))
    ]);
    var row3 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(l10ns.id,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium!
                  .copyWith(letterSpacing: getHorizontalSize(0.03)))),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text("*",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleSmall!
                  .copyWith(letterSpacing: getHorizontalSize(0.06))))
    ]);
    var row4 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(l10ns.homeAddress,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium!
                  .copyWith(letterSpacing: getHorizontalSize(0.03)))),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text("*",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleSmall!
                  .copyWith(letterSpacing: getHorizontalSize(0.06))))
    ]);
    var row5 = Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: getPadding(top: 2),
          child: Text(l10ns.nickname,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium!
                  .copyWith(letterSpacing: getHorizontalSize(0.03)))),
      Padding(
          padding: getPadding(left: 5, bottom: 5),
          child: Text("*",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleSmall!
                  .copyWith(letterSpacing: getHorizontalSize(0.06))))
    ]);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar.getDefaultAppBar(l10ns.signUp),
            body: SingleChildScrollView(

                // width: double.maxFinite,
                padding: getPadding(left: 16, top: 22, right: 16, bottom: 22),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                                    padding: getPadding(right: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          row4,
                                          CustomTextFormField(
                                              enabled: false,
                                              textInputType:
                                                  TextInputType.number,
                                              width: getHorizontalSize(160),
                                              controller: controller.postCode,
                                              margin: getMargin(top: 4),
                                              contentPadding: getPadding(
                                                  left: 12,
                                                  top: 14,
                                                  right: 12,
                                                  bottom: 14),
                                              validator: (String? value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return l10ns
                                                      .yourZipCodeIsRequired;
                                                } else if (value
                                                    .isNumericOnly) {
                                                  return value;
                                                }
                                                return null;
                                              },
                                              textStyle: CustomTextStyles
                                                  .bodyLargeGray50003,
                                              hintText: l10ns.zipCode,
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeGray50003,
                                              textInputAction:
                                                  TextInputAction.next,
                                              filled: true,
                                              inputFormatters: [
                                                LengthLimitingTextInputFormatter(
                                                    6),
                                                FilteringTextInputFormatter
                                                    .digitsOnly,
                                              ],
                                              fillColor: theme.colorScheme
                                                  .onPrimaryContainer)
                                        ]))),
                            Expanded(
                                child: CustomElevatedButton(
                                    text: l10ns.addressSearch,
                                    margin: getMargin(left: 4, top: 27),
                                    buttonStyle: CustomButtonStyles
                                        .fillPrimaryC5
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(double.maxFinite,
                                                        getVerticalSize(48)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleMedium!,
                                    onTap: () async {
                                      await Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (_) => KpostalView(
                                                  useLocalServer: true,
                                                  localPort: 1024,
                                                  callback: (Kpostal result) {
                                                    controller.postCode.text =
                                                        result.postCode;
                                                    controller.primaryAddress
                                                        .text = result.address;
                                                  })));
                                    }))
                          ]),
                      CustomTextFormField(
                          enabled: false,
                          textInputType: TextInputType.streetAddress,
                          controller: controller.primaryAddress,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 12, top: 14, right: 12, bottom: 14),
                          textStyle: CustomTextStyles.bodyLargeGray50003,
                          hintText: l10ns.primaryAddress,
                          hintStyle: CustomTextStyles.bodyLargeGray50003,
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      CustomTextFormField(
                          textInputType: TextInputType.streetAddress,
                          controller: controller.detailAddress,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 12, top: 14, right: 12, bottom: 14),
                          textStyle: CustomTextStyles.bodyLargeGray50003,
                          hintText: "동·호수 등 상세 주소",
                          hintStyle: CustomTextStyles.bodyLargeGray50003,
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                row3,
                                CustomTextFormField(
                                    textInputType: TextInputType.emailAddress,
                                    controller: controller.emailAddress,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: l10ns.enterEmailAddress,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                row2,
                                Obx(() => CustomTextFormField(
                                    textInputType: TextInputType.emailAddress,
                                    controller: controller.password,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: l10ns
                                        .alphanumericSpecialCharacterCombination612Characters,
                                    obscureText:
                                        controller.isShowPassword.isFalse,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 12,
                                            right: 10,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath: controller
                                                    .isShowPassword.value
                                                ? Assets.svg.imgEyeOpened.path
                                                : Assets
                                                    .svg.imgEyeCrossedOut.path,
                                            onTap: () {
                                              controller.isShowPassword
                                                  .toggle();
                                            })),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)),
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)),
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                row,
                                Obx(() => CustomTextFormField(
                                    textInputType: TextInputType.emailAddress,
                                    controller: controller.rePassword,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: l10ns.confirmPassword,
                                    obscureText: controller
                                        .isShowConfirmPassword.isFalse,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    suffix: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 12,
                                            right: 10,
                                            bottom: 12),
                                        child: CustomImageView(
                                            svgPath: controller
                                                    .isShowConfirmPassword.value
                                                ? Assets.svg.imgEyeOpened.path
                                                : Assets
                                                    .svg.imgEyeCrossedOut.path,
                                            onTap: () {
                                              controller.isShowConfirmPassword
                                                  .toggle();
                                            })),
                                    suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(48)),
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)),
                              ])),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                row5,
                                Obx(() => CustomTextFormField(
                                    textInputType: TextInputType.emailAddress,
                                    controller: controller.nickname,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText:
                                        l10ns.enterANicknameUpTo10Characters,
                                    obscureText: controller
                                        .isShowConfirmPassword.isFalse,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)),
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                // decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: l10ns.filledIn,
                    // TODO disabled일 때 스타일 정의하기
                    // isDisabled: !controller.isValid,
                    buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(52)))),
                    buttonTextStyle: CustomTextStyles.titleMedium18,
                    onTap: () {
                      if (controller.isValid) {
                        goRegisterLicense();
                      }
                    }))));
  }
}
