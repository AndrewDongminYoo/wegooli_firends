// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class RegisterLicense extends GetWidget<LicenseController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar:
                CustomAppBar.getDefaultAppBar(l10ns.driverSLicenseRegistration),
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
                            CustomInputLabel(labelText: l10ns.licenseType),
                            CustomDropDown(
                                icon: Container(
                                    margin: getMargin(left: 30, right: 10),
                                    child: CustomImageView(
                                        svgPath: Assets.svg.imgCaretDown.path)),
                                hintText: l10ns.pleaseSelectYourLicenseType,
                                margin: getMargin(top: 4),
                                textStyle: CustomTextStyles.bodyLargeGray500,
                                items: controller.dropdownItemList.value,
                                filled: true,
                                fillColor: theme.colorScheme.onPrimaryContainer,
                                contentPadding:
                                    getPadding(left: 10, top: 14, bottom: 14),
                                onChanged: (SelectionPopupModel value) {
                                  controller.dropdownItemList.onSelected(value);
                                })
                          ]),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Row(
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
                                              CustomInputLabel(
                                                  labelText: l10ns.licenseType),
                                              CustomDropDown(
                                                  width: getHorizontalSize(160),
                                                  icon: Container(
                                                      margin: getMargin(
                                                          left: 30, right: 10),
                                                      child: CustomImageView(
                                                          svgPath: Assets
                                                              .svg
                                                              .imgCaretDown
                                                              .path)),
                                                  hintText: l10ns.region,
                                                  margin: getMargin(top: 4),
                                                  textStyle: CustomTextStyles
                                                      .bodyLargeGray500,
                                                  items: controller
                                                      .dropdownItemList1.value,
                                                  filled: true,
                                                  fillColor: theme.colorScheme
                                                      .onPrimaryContainer,
                                                  contentPadding: getPadding(
                                                      left: 10,
                                                      top: 14,
                                                      bottom: 14),
                                                  onChanged:
                                                      (SelectionPopupModel
                                                          value) {
                                                    controller.dropdownItemList1
                                                        .onSelected(value);
                                                  })
                                            ]))),
                                Expanded(
                                    child: CustomDropDown(
                                        icon: Container(
                                            margin:
                                                getMargin(left: 30, right: 10),
                                            child: CustomImageView(
                                                svgPath: Assets
                                                    .svg.imgCaretDown.path)),
                                        hintText: "11",
                                        margin: getMargin(left: 4, top: 27),
                                        textStyle:
                                            CustomTextStyles.bodyLargeGray500,
                                        items:
                                            controller.dropdownItemList2.value,
                                        filled: true,
                                        fillColor: theme
                                            .colorScheme.onPrimaryContainer,
                                        contentPadding: getPadding(
                                            left: 10, top: 14, bottom: 14),
                                        onChanged: (SelectionPopupModel value) {
                                          controller.dropdownItemList2
                                              .onSelected(value);
                                        }))
                              ])),
                      CustomTextFormField(
                          controller: controller.frontNumberController,
                          margin: getMargin(top: 10),
                          contentPadding: getPadding(
                              left: 12, top: 14, right: 12, bottom: 14),
                          textStyle: CustomTextStyles.bodyLargeGray50003,
                          hintText: l10ns.pleaseEnterYourLicenseNumbersOnly,
                          hintStyle: CustomTextStyles.bodyLargeGray50003,
                          textInputAction: TextInputAction.next,
                          filled: true,
                          fillColor: theme.colorScheme.onPrimaryContainer),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInputLabel(
                                    labelText:
                                        l10ns.eligibilityPeriodExpirationDate),
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
                                    hintText: l10ns
                                        .enterYourAptitudePeriodTestExpirationDate,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    textInputAction: TextInputAction.next,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)
                              ])),
                      Padding(
                          padding: getPadding(top: 26, bottom: 5),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInputLabel(
                                    labelText: l10ns.licenseIssueDate),
                                CustomTextFormField(
                                    controller: controller.backNumberController,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: l10ns
                                        .pleaseEnterYourLicenseIssueDateOnlyNumbers,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    filled: true,
                                    fillColor:
                                        theme.colorScheme.onPrimaryContainer)
                              ]))
                    ])),
            bottomNavigationBar: Container(
                margin: getMargin(left: 15, right: 17, bottom: 29),
                // decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: l10ns.registrationComplete,
                    buttonStyle: CustomButtonStyles.fillPrimaryC26.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(52)))),
                    buttonTextStyle: CustomTextStyles.titleMedium18,
                    onTap: () {
                      if (controller.licenseInputSucceed) {
                        onRegisterCreditCard();
                      }
                    }))));
  }

  bool isValid() {
    // TODO: 면허증이 valid하면 true, 아니면 false.
    return true;
  }

  onRegisterCreditCard() {
    Get.toNamed(AppRoutes.registerCreditCard);
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
