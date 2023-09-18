// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterZipCode extends GetWidget<UserController> {
  const RegisterZipCode({super.key});

  @override
  Widget build(BuildContext context) {
    const authMode = AuthMode.register;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.signUp),
      body: Unfocused(
        child: SingleChildScrollView(
            // width: double.maxFinite,
            padding: getPadding(left: 16, top: 22, right: 16, bottom: 22),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Expanded(
                  child: Padding(
                    padding: getPadding(right: 4),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomInputLabel(labelText: l10ns.homeAddress),
                          PostCodeFormField(controller: controller.postCode),
                        ]),
                  ),
                ),
                Expanded(child: PostCodeSearchButton(controller: controller)),
              ]),
              PrimaryAddressFormField(controller: controller.primaryAddress),
              DetailAddressFormField(controller: controller.detailAddress),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.id),
                        UserMailFormField(
                            controller: controller.emailAddress,
                            authMode: authMode),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.password),
                        PasswordFormField(
                            controller: controller.password,
                            authMode: authMode),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.confirmPassword),
                        PasswordConfirmFormField(
                            controller: controller.rePassword),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.nickname),
                        NickNameFormField(controller: controller.nickname),
                      ])),
            ])),
      ),
      bottomNavigationBar: SignUpFilledInButton(controller: controller),
    );
  }
}
