// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/core/app_export.dart';
import '/gen/assets.gen.dart';
import 'controller/_controller.dart';

class RegisterCreditCard extends GetWidget<RegisterCreditCardController> {
  const RegisterCreditCard({Key? key}) : super(key: key);

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
                title: AppbarTitle(text: "lbl37".tr)),
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
                            Text("lbl38".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.titleMedium!.copyWith(
                                    letterSpacing: getHorizontalSize(0.03))),
                            CustomTextFormField(
                                controller: controller.cardNumController,
                                margin: getMargin(top: 4),
                                contentPadding: getPadding(
                                    left: 12, top: 14, right: 12, bottom: 14),
                                textStyle: CustomTextStyles.bodyLargeGray50003,
                                hintText: "msg_0000_0000_0000".tr,
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
                                Text("lbl39".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.03))),
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
                                    hintText: "lbl_mm_yy".tr,
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
                                Text("lbl40".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.03))),
                                CustomTextFormField(
                                    controller:
                                        controller.firstsixdigitsoController,
                                    margin: getMargin(top: 4),
                                    contentPadding: getPadding(
                                        left: 12,
                                        top: 14,
                                        right: 12,
                                        bottom: 14),
                                    textStyle:
                                        CustomTextStyles.bodyLargeGray50003,
                                    hintText: "lbl_yymmdd".tr,
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
                                Text("lbl_22".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: theme.textTheme.titleMedium!
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.03))),
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
                decoration: AppDecoration.shadow,
                child: CustomElevatedButton(
                    text: "lbl41".tr,
                    buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, getVerticalSize(52)))),
                    buttonTextStyle: CustomTextStyles.titleMedium18))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTabBackButton() {
    Get.back();
  }
}
