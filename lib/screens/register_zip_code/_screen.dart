// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class LoginRegisterZipCode extends GetWidget<LoginRegisterZipCodeController> {
  const LoginRegisterZipCode({Key? key}) : super(key: key);

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
                leading: AppbarImage(
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
                                              width: getHorizontalSize(160),
                                              controller: controller
                                                  .postalCodeController,
                                              margin: getMargin(top: 4),
                                              contentPadding: getPadding(
                                                  left: 12,
                                                  top: 14,
                                                  right: 12,
                                                  bottom: 14),
                                              textStyle: CustomTextStyles
                                                  .bodyLargeGray50003,
                                              hintText: "우편번호",
                                              hintStyle: CustomTextStyles
                                                  .bodyLargeGray50003,
                                              textInputAction:
                                                  TextInputAction.next,
                                              filled: true,
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
                          controller: controller.defaultAddressController,
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
                          controller: controller.detailedAddressControllerA,
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
                                          child: Text("집 주소",
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
                                        controller.detailedAddressControllerB,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: "동·호수 등 상세 주소",
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
                      onTapLoginRegisterLicensePage();
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

  onTapLoginRegisterLicensePage() {
    Get.toNamed(
      AppRoutes.registerLicense,
    );
  }
}
