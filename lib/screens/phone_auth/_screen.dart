// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';
import 'widgets/complete_button.dart';

class ValidatePhone extends GetWidget<ValidatePhoneController> {
  const ValidatePhone({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "본인 인증")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
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
                                      child: Text("이름",
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
                                controller: controller.namePromptController,
                                margin: getMargin(top: 4),
                                contentPadding: getPadding(
                                    left: 12, top: 14, right: 12, bottom: 14),
                                textStyle: CustomTextStyles.bodyLargeGray50003,
                                hintText: "이름을 입력해주세요.",
                                hintStyle: CustomTextStyles.bodyLargeGray50003,
                                textInputAction: TextInputAction.next,
                                filled: true,
                                fillColor: theme.colorScheme.onPrimaryContainer)
                          ]),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                    height: getVerticalSize(94),
                                    width: getHorizontalSize(167),
                                    child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(right: 2),
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              2),
                                                                  child: Text(
                                                                      "lbl_132"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleMedium!
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.03)))),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          left:
                                                                              6,
                                                                          bottom:
                                                                              5),
                                                                  child: Text(
                                                                      '*'.tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: theme
                                                                          .textTheme
                                                                          .titleSmall!
                                                                          .copyWith(
                                                                              letterSpacing: getHorizontalSize(0.06))))
                                                            ]),
                                                        CustomTextFormField(
                                                            width:
                                                                getHorizontalSize(
                                                                    160),
                                                            controller: controller
                                                                .ageFormatController,
                                                            margin: getMargin(
                                                                top: 4),
                                                            contentPadding:
                                                                getPadding(
                                                                    left: 12,
                                                                    top: 14,
                                                                    right: 12,
                                                                    bottom: 14),
                                                            textStyle:
                                                                CustomTextStyles
                                                                    .bodyLargeGray50003,
                                                            hintText: "YYMMDD",
                                                            hintStyle:
                                                                CustomTextStyles
                                                                    .bodyLargeGray50003,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            filled: true,
                                                            fillColor: theme
                                                                .colorScheme
                                                                .onPrimaryContainer),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 4),
                                                            child: Text(
                                                                "msg_26".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: CustomTextStyles
                                                                    .bodySmallErrorContainer
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.02))))
                                                      ]))),
                                          CustomTextFormField(
                                              width: getHorizontalSize(7),
                                              controller:
                                                  controller.languageController,
                                              textStyle:
                                                  theme.textTheme.bodyLarge!,
                                              hintText: "-",
                                              hintStyle:
                                                  theme.textTheme.bodyLarge!,
                                              textInputAction:
                                                  TextInputAction.next,
                                              alignment: Alignment.centerRight)
                                        ])),
                                Container(
                                    width: getHorizontalSize(160),
                                    margin: getMargin(top: 27, bottom: 19),
                                    padding: getPadding(
                                        left: 12,
                                        top: 13,
                                        right: 12,
                                        bottom: 13),
                                    decoration: AppDecoration.txtOutline
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder5),
                                    child: Text("NNNNNNN",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodyLargeGray50003
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03))))
                              ])),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Text("휴대폰 정보",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: theme
                                                        .textTheme.titleMedium!
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.03)))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 5, bottom: 5),
                                                child: Text("*",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: CustomTextStyles
                                                        .titleSmallPrimaryContainer
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.06))))
                                          ]),
                                      CustomTextFormField(
                                          width: getHorizontalSize(104),
                                          controller: controller
                                              .phoneProviderController,
                                          margin: getMargin(top: 4),
                                          contentPadding: getPadding(
                                              left: 10, top: 14, bottom: 14),
                                          textStyle:
                                              CustomTextStyles.bodyLargeGray500,
                                          hintText: "SKT",
                                          hintStyle:
                                              CustomTextStyles.bodyLargeGray500,
                                          suffix: Container(
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 12,
                                                  right: 10,
                                                  bottom: 12),
                                              child: CustomImageView(
                                                  svgPath: Assets
                                                      .svg.imgCaretDown.path)),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(48)),
                                          filled: true,
                                          fillColor: theme
                                              .colorScheme.onPrimaryContainer)
                                    ]),
                                Container(
                                    width: getHorizontalSize(216),
                                    margin: getMargin(top: 27),
                                    padding: getPadding(
                                        left: 12,
                                        top: 13,
                                        right: 12,
                                        bottom: 13),
                                    decoration: AppDecoration.txtOutline
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder5),
                                    child: Text("010-1234-5678",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodyLargeGray50003
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.03))))
                              ])),
                      Padding(
                          padding: getPadding(top: 10, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomElevatedButton(
                                        text: "인증번호 발송",
                                        margin: getMargin(right: 4),
                                        buttonStyle: CustomButtonStyles
                                            .fillPrimaryTL5
                                            .copyWith(
                                                fixedSize: MaterialStateProperty
                                                    .all<Size>(Size(
                                                        double.maxFinite,
                                                        getVerticalSize(48)))),
                                        buttonTextStyle:
                                            theme.textTheme.titleMedium!)),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(left: 4),
                                        padding: getPadding(
                                            left: 12,
                                            top: 13,
                                            right: 12,
                                            bottom: 13),
                                        decoration: AppDecoration.outline
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder5),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('000000',
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: CustomTextStyles
                                                      .bodyLargeGray50003
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.03))),
                                              Padding(
                                                  padding: getPadding(left: 41),
                                                  child: Text("3:00",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: CustomTextStyles
                                                          .bodyLargeGray50003
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.03))))
                                            ])))
                              ]))
                    ])),
            bottomNavigationBar: ValidatePhoneCompleteButton()));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
