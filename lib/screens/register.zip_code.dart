// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import '/lib.dart';

class RegisterZipCode extends StatefulWidget {
  const RegisterZipCode({super.key});

  @override
  State<RegisterZipCode> createState() => _RegisterZipCodeState();
}

class _RegisterZipCodeState extends State<RegisterZipCode> {
  final controller = UserController.to;

  @override
  Widget build(BuildContext context) {
    controller.mode = AuthMode.register;
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
                          const PostCodeFormField(),
                        ]),
                  ),
                ),
                const Expanded(child: PostCodeSearchButton()),
              ]),
              const PrimaryAddressFormField(),
              const DetailAddressFormField(),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.id),
                        UserMailFormField(controller: controller),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.password),
                        PasswordFormField(controller: controller),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.confirmPassword),
                        const PasswordConfirmFormField(),
                      ])),
              Padding(
                  padding: getPadding(top: 27),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomInputLabel(labelText: l10ns.nickname),
                        const NickNameFormField(),
                      ])),
            ])),
      ),
      bottomNavigationBar: const SignUpFilledInButton(),
    );
  }
}
