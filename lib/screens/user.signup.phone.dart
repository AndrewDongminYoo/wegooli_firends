// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ValidatePhone extends GetWidget<UserController> {
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: theme.colorScheme.onPrimaryContainer,
            appBar: CustomAppBar.getDefaultAppBar('본인 인증'),
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
                            CustomInputLabel(labelText: "이름"),
                            NameTextInput(controller: controller)
                          ]),
                      Padding(
                          padding: getPadding(top: 26, bottom: 7),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomInputLabel(
                                    labelText:
                                        l10ns.digitOf13SocialSecurityNumber),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Birthday6NumberInput(
                                          controller: controller),
                                      Text("-", style: TextStyle(fontSize: 24)),
                                      SocialSecurity7NumberInput(
                                          controller: controller),
                                    ]),
                                CustomGuideText(
                                    text: l10ns
                                        .subscriptionsAreRestrictedToThoseUnderTheAgeOf26),
                              ])),
                      SMSValidationForm(controller: controller)
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
