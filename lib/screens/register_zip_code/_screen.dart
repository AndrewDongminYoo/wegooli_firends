// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class RegisterZipCode extends GetWidget<RegisterZipCodeController> {
  const RegisterZipCode({Key? key}) : super(key: key);

  bool isValid() {
    // TODO
    // 집 주소 필수 입력, 아이디 비번 입력 누락.
    return true;
  }

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
                title: AppbarTitle(text: "정보 입력")),
            body: Container(
                width: double.maxFinite,
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
                                          Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(top: 2),
                                                    child: Text("집 주소",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleMedium!
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.03)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 5, bottom: 5),
                                                    child: Text("*",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: theme.textTheme
                                                            .titleSmall!
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.06))))
                                              ]),
                                          CustomTextFormField(
                                              textInputType:
                                                  TextInputType.number,
                                              width: getHorizontalSize(160),
                                              controller: controller
                                                  .postalCodeController,
                                              margin: getMargin(top: 4),
                                              contentPadding: getPadding(
                                                  left: 12,
                                                  top: 14,
                                                  right: 12,
                                                  bottom: 14),
                                              validator: (value) {
                                                if (value == null ||
                                                    value.isEmpty) {
                                                  return '우편번호는 필수 입력값입니다.';
                                                } else if (value
                                                    .isNumericOnly) {
                                                  return value;
                                                }
                                                return null;
                                              },
                                              textStyle: CustomTextStyles
                                                  .bodyLargeGray50003,
                                              hintText: "우편번호",
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
                                    text: "주소 검색",
                                    margin: getMargin(left: 4, top: 27),
                                    buttonStyle: CustomButtonStyles
                                        .fillPrimaryTL5
                                        .copyWith(
                                            fixedSize:
                                                MaterialStateProperty.all<Size>(
                                                    Size(double.maxFinite,
                                                        getVerticalSize(48)))),
                                    buttonTextStyle:
                                        theme.textTheme.titleMedium!))
                          ]),
                      CustomTextFormField(
                          textInputType: TextInputType.streetAddress,
                          controller: controller.primaryAddressController,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 12, top: 14, right: 12, bottom: 14),
                          textStyle: CustomTextStyles.bodyLargeGray50003,
                          hintText: "기본주소",
                          hintStyle: CustomTextStyles.bodyLargeGray50003,
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      CustomTextFormField(
                          textInputType: TextInputType.streetAddress,
                          controller: controller.detailedAddressController,
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
                          padding: getPadding(top: 26, bottom: 5),
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
                                          child: Text("아이디",
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
                                    textInputType: TextInputType.emailAddress,
                                    controller:
                                        controller.emailAddressController,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: "이메일 주소 입력",
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 16, right: 16, bottom: 29),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                  text: "입력 완료",
                  buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                      fixedSize: MaterialStateProperty.all<Size>(
                          Size(double.maxFinite, getVerticalSize(52)))),
                  buttonTextStyle: CustomTextStyles.titleMedium18,
                  onTap: () {
                    if (this.isValid()) {
                      Get.toNamed(
                        AppRoutes.registerLicense,
                      );
                    }
                  },
                ))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
