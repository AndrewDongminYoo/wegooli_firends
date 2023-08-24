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
                leading: AppbarImage(
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
                          padding: getPadding(top: 26, bottom: 7),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: getPadding(top: 2),
                                          child: Text("lbl_132".tr,
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
                                              getPadding(left: 6, bottom: 5),
                                          child: Text('*'.tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.titleSmall!
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.06))))
                                    ]),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomTextFormField(
                                        width: getHorizontalSize(158),
                                        controller:
                                            controller.age1FormatController,
                                        margin: getMargin(top: 4),
                                        contentPadding: getPadding(
                                            left: 12,
                                            top: 14,
                                            right: 12,
                                            bottom: 14),
                                        textStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        hintText: "YYMMDD",
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        textInputAction: TextInputAction.next,
                                        filled: true,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                    Text("-"),
                                    CustomTextFormField(
                                        width: getHorizontalSize(158),
                                        controller:
                                            controller.age2FormatController,
                                        margin: getMargin(top: 4),
                                        contentPadding: getPadding(
                                            left: 12,
                                            top: 14,
                                            right: 12,
                                            bottom: 14),
                                        textStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        hintText: "NNNNNNN",
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray50003,
                                        textInputAction: TextInputAction.next,
                                        filled: true,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text("msg_26".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: CustomTextStyles
                                            .bodySmallErrorContainer
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.04)))
                                  ],
                                ),
                              ])),
                      Padding(
                        padding: getPadding(top: 6),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 2),
                                        child: Text("휴대폰 정보",
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
                                            style: CustomTextStyles
                                                .titleSmallPrimaryContainer
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.06))))
                                  ]),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomDropDown(
                                      width: getHorizontalSize(104),
                                      icon: Container(
                                          margin:
                                              getMargin(left: 30, right: 10),
                                          child: CustomImageView(
                                              svgPath: Assets
                                                  .svg.imgCaretDown.path)),
                                      hintText: "통신사",
                                      margin: getMargin(top: 4),
                                      textStyle:
                                          CustomTextStyles.bodyLargeGray500,
                                      items: controller.phoneProviderModelObj
                                          .value.dropdownItemList.value,
                                      filled: true,
                                      fillColor:
                                          theme.colorScheme.onPrimaryContainer,
                                      contentPadding: getPadding(
                                          left: 10, top: 14, bottom: 14),
                                      onChanged: (value) {
                                        controller.onSelected(value);
                                      }),
                                  CustomTextFormField(
                                      width: getHorizontalSize(216),
                                      controller:
                                          controller.phoneNumberController,
                                      margin: getMargin(top: 4),
                                      contentPadding: getPadding(
                                          left: 12,
                                          top: 14,
                                          right: 12,
                                          bottom: 14),
                                      textStyle:
                                          CustomTextStyles.bodyLargeGray50003,
                                      hintText: "010-1234-5678",
                                      hintStyle:
                                          CustomTextStyles.bodyLargeGray50003,
                                      textInputAction: TextInputAction.next,
                                      filled: true,
                                      fillColor:
                                          theme.colorScheme.onPrimaryContainer),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: CustomElevatedButton(
                                          text: "인증번호 발송",
                                          margin: getMargin(top: 10),
                                          buttonStyle: CustomButtonStyles
                                              .fillPrimaryTL5
                                              .copyWith(
                                                  fixedSize:
                                                      MaterialStateProperty
                                                          .all<Size>(Size(
                                                              double.maxFinite,
                                                              getVerticalSize(
                                                                  48)))),
                                          buttonTextStyle:
                                              theme.textTheme.titleMedium!)),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomTextFormField(
                                      width: getHorizontalSize(160),
                                      controller: controller.codeController,
                                      margin: getMargin(top: 10),
                                      contentPadding: getPadding(
                                          left: 10, top: 14, bottom: 14),
                                      textStyle:
                                          CustomTextStyles.bodyLargeGray500,
                                      hintText: "0000",
                                      hintStyle:
                                          CustomTextStyles.bodyLargeGray500,
                                      suffix: Container(
                                          margin: getMargin(
                                              left: 30,
                                              top: 12,
                                              right: 10,
                                              bottom: 12),
                                          child: Text("3:00",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: CustomTextStyles
                                                  .bodyLargeGray50003
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.03)))),
                                      suffixConstraints: BoxConstraints(
                                          maxHeight: getVerticalSize(48)),
                                      filled: true,
                                      fillColor:
                                          theme.colorScheme.onPrimaryContainer),
                                  CustomElevatedButton(
                                      text: "확인",
                                      margin: getMargin(top: 10),
                                      buttonStyle: CustomButtonStyles
                                          .fillPrimaryTL5
                                          .copyWith(
                                              fixedSize: MaterialStateProperty
                                                  .all<Size>(Size(160,
                                                      getVerticalSize(48)))),
                                      buttonTextStyle:
                                          theme.textTheme.titleMedium!),
                                ],
                              )
                            ]),
                      )
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
