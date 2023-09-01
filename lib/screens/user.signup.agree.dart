// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class AcceptTerms extends GetWidget<AccountAgreementController> {
  void checkAll(bool value) {
    controller.isAcceptedTerm1.value = value;
    controller.isAcceptedTerm2.value = value;
    controller.isAcceptedTerm3.value = value;
    controller.isAcceptedTerm4.value = value;
    controller.isAcceptedTerm5.value = value;
    controller.isAcceptedTerm6.value = value;
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar(
                leadingWidth: getHorizontalSize(42),
                leading: AppbarImage(
                    svgPath: Assets.svg.imgArrowLeft.path,
                    margin: getMargin(left: 24, top: 19, bottom: 18),
                    onTap: () {
                      onTapArrowleftone();
                    }),
                centerTitle: true,
                title: AppbarTitle(text: l10ns.acceptTerms)),
            body: SizedBox(
                width: mediaQueryData.size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 29),
                    child: Padding(
                        padding: getPadding(left: 23, right: 23, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: getVerticalSize(20),
                                  width: getHorizontalSize(126),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Obx(() => CustomCheckboxButton(
                                          alignment: Alignment.center,
                                          text: l10ns.acceptAll,
                                          value: controller
                                              .isAllTermsAccepted.value,
                                          onChange: (value) {
                                            controller.isAllTermsAccepted
                                                .value = value;
                                          })))),
                              Padding(
                                  padding: getPadding(top: 53),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: l10ns
                                                .termsOfServiceRequiredAgreement,
                                            value: controller
                                                .isAcceptedTerm0.value,
                                            onChange: (value) {
                                              controller.isAcceptedTerm0.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.imgArrowLeft.path,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: l10ns
                                                .privacyPolicyRequiredConsent,
                                            value: controller
                                                .isAcceptedTerm1.value,
                                            onChange: (value) {
                                              controller.isAcceptedTerm1.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.imgArrowLeft.path,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: l10ns
                                                .carRentalTermsAndConditionsRequired,
                                            value: controller
                                                .isAcceptedTerm2.value,
                                            onChange: (value) {
                                              controller.isAcceptedTerm2.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.imgArrowLeft.path,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Obx(() => CustomCheckboxButton(
                                            text: l10ns
                                                .locationBasedServicesTerms,
                                            value: controller
                                                .isAcceptedTerm3.value,
                                            onChange: (value) {
                                              controller.isAcceptedTerm3.value =
                                                  value;
                                            })),
                                        CustomImageView(
                                            svgPath:
                                                Assets.svg.imgArrowLeft.path,
                                            height: getSize(18),
                                            width: getSize(18),
                                            margin: getMargin(bottom: 2))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(children: [
                                    Expanded(
                                        child: Obx(() => CustomCheckboxButton(
                                            text: l10ns
                                                .consentToCollectionAndUseOfVehicleLocationInfo,
                                            value: controller
                                                .isAcceptedTerm4.value,
                                            onChange: (value) {
                                              controller.isAcceptedTerm4.value =
                                                  value;
                                            }))),
                                    CustomImageView(
                                        svgPath: Assets.svg.imgArrowLeft.path,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 10, bottom: 2)),
                                  ])),
                              Padding(
                                  padding: getPadding(top: 14),
                                  child: Row(children: [
                                    Expanded(
                                        child: Obx(() => CustomCheckboxButton(
                                            text: l10ns
                                                .useOfPersonalInfoForMarketing,
                                            value: controller
                                                .isAcceptedTerm5.value,
                                            onChange: (value) {
                                              controller.isAcceptedTerm5.value =
                                                  value;
                                            }))),
                                    CustomImageView(
                                        svgPath: Assets.svg.imgArrowLeft.path,
                                        height: getSize(18),
                                        width: getSize(18),
                                        margin: getMargin(left: 40, bottom: 2)),
                                  ]))
                            ])))),
            bottomNavigationBar: Container(
                margin: getMargin(left: 24, right: 28, bottom: 41),
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "동의 완료",
                    buttonStyle: CustomButtonStyles.fillAmberA200C26,
                    buttonTextStyle: CustomTextStyles.titleMediumOnPrimary))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}
