// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterPhone extends GetWidget<UserController> {
  const RegisterPhone({super.key});
  @override
  Widget build(BuildContext context) {
    final _nameText = FocusNode();
    final _birthday = FocusNode();
    final _socialId = FocusNode();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.authenticateYourself),
      body: Unfocused(
        child: Container(
            width: double.maxFinite,
            padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
            child: Column(children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomInputLabel(labelText: l10ns.name),
                KoreanNameFormField(
                  controller: controller,
                  focusNode: _nameText,
                ),
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
                                controller: controller,
                                focusNode: _socialId,
                              ),
                            ]),
                        Row(children: [
                          Text(
                            l10ns
                                .subscriptionsAreRestrictedToThoseUnderTheAgeOf26,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: CustomTextStyles.bodySmallErrorContainer
                                .copyWith(
                                    letterSpacing: getHorizontalSize(0.04)),
                          ),
                        ])
                      ])),
              SMSValidationForm(
                controller: controller,
              ),
            ])),
      ),
      bottomNavigationBar: ValidatePhoneCompleteButton(controller: controller),
    );
  }
}
