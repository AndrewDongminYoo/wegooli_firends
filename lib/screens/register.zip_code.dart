// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterZipCode extends StatefulWidget {
  RegisterZipCode({super.key});

  @override
  State<RegisterZipCode> createState() => _RegisterZipCodeState();
}

class _RegisterZipCodeState extends State<RegisterZipCode> {
  final controller = UserController.to;

  @override
  Widget build(BuildContext context) {
    const authMode = AuthMode.register;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: CustomAppBar.getDefaultAppBar(l10ns.signUp),
      body: Unfocused(
        child: SingleChildScrollView(
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
                          PostCodeFormField(
                              controller: controller.postCode,
                              onChanged: ()=>setState(() {})),
                        ]),
                  ),
                ),
                const Expanded(child: PostCodeSearchButton()),
              ]),
              PrimaryAddressFormField(controller: controller.primaryAddress, onChanged: ()=>setState(() {})),
              DetailAddressFormField(controller: controller.detailAddress, onChanged: ()=>setState(() {})),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.id),
                        UserMailFormField(
                            controller: controller.emailAddress,
                            authMode: authMode,
                            onChanged: () => setState(() {})
                            ),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.password),
                        PasswordFormField(
                            controller: controller.password,
                            authMode: authMode,
                            onChanged: () => setState(() {})),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.confirmPassword),
                        PasswordConfirmFormField(
                            controller: controller.rePassword,
                            onChanged: () => setState(() {})),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.nickname),
                        NickNameFormField(controller: controller.nickname,
                            onChanged: () => setState(() {})),
                      ])),
            ])),
      ),
      bottomNavigationBar: const SignUpFilledInButton(),
    );
  }
}
