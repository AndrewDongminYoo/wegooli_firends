// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/core/app_export.dart';

class ValidatePhone extends GetWidget<UserController> {
  ValidatePhone({super.key});
  final _nameText = FocusNode();
  final _birthday = FocusNode();
  final _socialId = FocusNode();
  final _phoneNum = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimaryContainer,
        appBar: CustomAppBar.getDefaultAppBar(l10ns.authenticateYourself),
        body: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomInputLabel(labelText: l10ns.name),
                KoreanNameFormField(
                    controller: controller, focusNode: _nameText),
              ]),
              Padding(
                  padding: getPadding(top: 26, bottom: 7),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(
                            labelText: l10ns.digitOf13SocialSecurityNumber),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              BirthdayNumberFormField(
                                controller: controller,
                                focusNode: _birthday,
                                readonly: false,
                              ),
                              const Text('-', style: TextStyle(fontSize: 24)),
                              SocialSecurityNumberFormField(
                                  controller: controller, focusNode: _socialId),
                            ]),
                        CustomGuideText(
                            text: l10ns
                                .subscriptionsAreRestrictedToThoseUnderTheAgeOf26),
                      ])),
              SMSValidationFormScreen(
                  controller: controller, focusNode: _phoneNum),
            ])),
        bottomNavigationBar:
            ValidatePhoneCompleteButton(controller: controller),
      ),
    );
  }
}
